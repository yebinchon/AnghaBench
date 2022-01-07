; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_unreserve_rx_kcm.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_unreserve_rx_kcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_psock = type { %struct.kcm_sock*, %struct.kcm_mux* }
%struct.kcm_sock = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.kcm_mux = type { i32 }

@kcm_done_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_psock*, i32)* @unreserve_rx_kcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unreserve_rx_kcm(%struct.kcm_psock* %0, i32 %1) #0 {
  %3 = alloca %struct.kcm_psock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kcm_sock*, align 8
  %6 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_psock* %0, %struct.kcm_psock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %8 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %7, i32 0, i32 0
  %9 = load %struct.kcm_sock*, %struct.kcm_sock** %8, align 8
  store %struct.kcm_sock* %9, %struct.kcm_sock** %5, align 8
  %10 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %11 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %10, i32 0, i32 1
  %12 = load %struct.kcm_mux*, %struct.kcm_mux** %11, align 8
  store %struct.kcm_mux* %12, %struct.kcm_mux** %6, align 8
  %13 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %14 = icmp ne %struct.kcm_sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.kcm_mux*, %struct.kcm_mux** %6, align 8
  %18 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.kcm_psock*, %struct.kcm_psock** %3, align 8
  %21 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %20, i32 0, i32 0
  store %struct.kcm_sock* null, %struct.kcm_sock** %21, align 8
  %22 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %23 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = call i32 (...) @smp_mb()
  %25 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %26 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %16
  %31 = load %struct.kcm_mux*, %struct.kcm_mux** %6, align 8
  %32 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %35 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %34, i32 0, i32 3
  %36 = load i32, i32* @kcm_done_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %39 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %38, i32 0, i32 3
  %40 = call i32 @schedule_work(i32* %39)
  br label %73

41:                                               ; preds = %16
  %42 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %43 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.kcm_mux*, %struct.kcm_mux** %6, align 8
  %49 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %50 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @requeue_rx_msgs(%struct.kcm_mux* %48, i32* %51)
  br label %69

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %58 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %57, i32 0, i32 2
  %59 = call i32 @sk_rmem_alloc_get(%struct.TYPE_2__* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %53
  %66 = load %struct.kcm_sock*, %struct.kcm_sock** %5, align 8
  %67 = call i32 @kcm_rcv_ready(%struct.kcm_sock* %66)
  br label %68

68:                                               ; preds = %65, %56
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.kcm_mux*, %struct.kcm_mux** %6, align 8
  %71 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  br label %73

73:                                               ; preds = %69, %30, %15
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @requeue_rx_msgs(%struct.kcm_mux*, i32*) #1

declare dso_local i32 @sk_rmem_alloc_get(%struct.TYPE_2__*) #1

declare dso_local i32 @kcm_rcv_ready(%struct.kcm_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
