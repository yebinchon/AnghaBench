; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_nanosleep_copyout.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_nanosleep_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.restart_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timespec64 = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanosleep_copyout(%struct.restart_block* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.restart_block*, align 8
  %5 = alloca %struct.timespec64*, align 8
  store %struct.restart_block* %0, %struct.restart_block** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %6 = load %struct.restart_block*, %struct.restart_block** %4, align 8
  %7 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %12 = load %struct.restart_block*, %struct.restart_block** %4, align 8
  %13 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @put_timespec64(%struct.timespec64* %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %10
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @put_timespec64(%struct.timespec64*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
