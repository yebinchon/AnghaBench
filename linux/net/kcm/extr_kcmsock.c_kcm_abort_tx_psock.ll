; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_abort_tx_psock.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_abort_tx_psock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_psock = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, %struct.kcm_mux*, %struct.sock* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kcm_mux = type { i32 }
%struct.sock = type { i32 }

@kcm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_psock*, i32, i32)* @kcm_abort_tx_psock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_abort_tx_psock(%struct.kcm_psock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kcm_psock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_psock* %0, %struct.kcm_psock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %10 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %9, i32 0, i32 5
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %13 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %12, i32 0, i32 4
  %14 = load %struct.kcm_mux*, %struct.kcm_mux** %13, align 8
  store %struct.kcm_mux* %14, %struct.kcm_mux** %8, align 8
  %15 = load %struct.kcm_mux*, %struct.kcm_mux** %8, align 8
  %16 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %19 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.kcm_mux*, %struct.kcm_mux** %8, align 8
  %24 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %28 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %30 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @KCM_STATS_INCR(i32 %32)
  %34 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %35 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %40 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %39, i32 0, i32 2
  %41 = call i32 @list_del(i32* %40)
  br label %54

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = call i32 (...) @smp_mb()
  %47 = load i32, i32* @kcm_wq, align 4
  %48 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %49 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @queue_work(i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %45, %42
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.kcm_mux*, %struct.kcm_mux** %8, align 8
  %56 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.sock*, %struct.sock** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @report_csk_error(%struct.sock* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %22
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @report_csk_error(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
