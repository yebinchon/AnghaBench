; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_sock = type { i32, i32, i32, %struct.sock, i32, i32, i64, %struct.kcm_mux* }
%struct.sock = type { i32 }
%struct.kcm_mux = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_sock*)* @kcm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_done(%struct.kcm_sock* %0) #0 {
  %2 = alloca %struct.kcm_sock*, align 8
  %3 = alloca %struct.kcm_mux*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.kcm_sock* %0, %struct.kcm_sock** %2, align 8
  %6 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %7 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %6, i32 0, i32 7
  %8 = load %struct.kcm_mux*, %struct.kcm_mux** %7, align 8
  store %struct.kcm_mux* %8, %struct.kcm_mux** %3, align 8
  %9 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %10 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %9, i32 0, i32 3
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %12 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %15 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %20 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %24 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %26 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %28 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %32 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %37 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %36, i32 0, i32 5
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %40 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = call i32 @requeue_rx_msgs(%struct.kcm_mux* %42, i32* %44)
  %46 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %47 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @sk_rmem_alloc_get(%struct.sock* %49)
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %84

54:                                               ; preds = %41
  %55 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %56 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %55, i32 0, i32 1
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %59 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %58, i32 0, i32 4
  %60 = call i32 @list_del(i32* %59)
  %61 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %62 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %66 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %69 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %54
  %74 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %75 = call i32 @release_mux(%struct.kcm_mux* %74)
  br label %76

76:                                               ; preds = %73, %54
  %77 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %78 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @WARN_ON(i32 %79)
  %81 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %82 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %81, i32 0, i32 3
  %83 = call i32 @sock_put(%struct.sock* %82)
  br label %84

84:                                               ; preds = %76, %53, %18
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @requeue_rx_msgs(%struct.kcm_mux*, i32*) #1

declare dso_local i32 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @release_mux(%struct.kcm_mux*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
