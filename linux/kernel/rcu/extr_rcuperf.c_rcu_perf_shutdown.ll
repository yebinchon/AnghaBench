; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown_wq = common dso_local global i32 0, align 4
@n_rcu_perf_writer_finished = common dso_local global i32 0, align 4
@nrealwriters = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_perf_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_perf_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %10, %1
  %4 = load i32, i32* @shutdown_wq, align 4
  %5 = call i64 @atomic_read(i32* @n_rcu_perf_writer_finished)
  %6 = load i64, i64* @nrealwriters, align 8
  %7 = icmp sge i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @wait_event(i32 %4, i32 %8)
  br label %10

10:                                               ; preds = %3
  %11 = call i64 @atomic_read(i32* @n_rcu_perf_writer_finished)
  %12 = load i64, i64* @nrealwriters, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %3, label %14

14:                                               ; preds = %10
  %15 = call i32 (...) @smp_mb()
  %16 = call i32 (...) @rcu_perf_cleanup()
  %17 = call i32 (...) @kernel_power_off()
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  ret i32 %19
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @rcu_perf_cleanup(...) #1

declare dso_local i32 @kernel_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
