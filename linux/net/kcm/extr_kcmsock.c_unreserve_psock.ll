; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_unreserve_psock.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_unreserve_psock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_sock = type { i32, %struct.kcm_psock*, %struct.kcm_mux* }
%struct.kcm_psock = type { %struct.TYPE_6__*, i32, i64, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kcm_mux = type { i32, i32 }

@kcm_psockp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_sock*)* @unreserve_psock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unreserve_psock(%struct.kcm_sock* %0) #0 {
  %2 = alloca %struct.kcm_sock*, align 8
  %3 = alloca %struct.kcm_psock*, align 8
  %4 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_sock* %0, %struct.kcm_sock** %2, align 8
  %5 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %6 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %5, i32 0, i32 2
  %7 = load %struct.kcm_mux*, %struct.kcm_mux** %6, align 8
  store %struct.kcm_mux* %7, %struct.kcm_mux** %4, align 8
  %8 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %9 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %12 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %11, i32 0, i32 1
  %13 = load %struct.kcm_psock*, %struct.kcm_psock** %12, align 8
  store %struct.kcm_psock* %13, %struct.kcm_psock** %3, align 8
  %14 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %15 = icmp ne %struct.kcm_psock* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %22 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  br label %85

24:                                               ; preds = %1
  %25 = call i32 (...) @smp_rmb()
  %26 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %27 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %28 = call i32 @kcm_update_tx_mux_stats(%struct.kcm_mux* %26, %struct.kcm_psock* %27)
  %29 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %30 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %34 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %33, i32 0, i32 1
  store %struct.kcm_psock* null, %struct.kcm_psock** %34, align 8
  %35 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %36 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %38 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @KCM_STATS_INCR(i32 %40)
  %42 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %43 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %24
  %48 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %49 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %54 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %53, i32 0, i32 1
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %57 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %61 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @sock_put(%struct.TYPE_6__* %62)
  %64 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %65 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fput(i32 %70)
  %72 = load i32, i32* @kcm_psockp, align 4
  %73 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %74 = call i32 @kmem_cache_free(i32 %72, %struct.kcm_psock* %73)
  br label %75

75:                                               ; preds = %52, %47
  %76 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %77 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %85

79:                                               ; preds = %24
  %80 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %81 = call i32 @psock_now_avail(%struct.kcm_psock* %80)
  %82 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %83 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  br label %85

85:                                               ; preds = %79, %75, %20
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @kcm_update_tx_mux_stats(%struct.kcm_mux*, %struct.kcm_psock*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sock_put(%struct.TYPE_6__*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kcm_psock*) #1

declare dso_local i32 @psock_now_avail(%struct.kcm_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
