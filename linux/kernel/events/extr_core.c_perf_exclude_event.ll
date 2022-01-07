; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_exclude_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_exclude_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.pt_regs*)* @perf_exclude_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_exclude_event(%struct.perf_event* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PERF_HES_STOPPED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = icmp ne %struct.pt_regs* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = call i64 @user_mode(%struct.pt_regs* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %41

28:                                               ; preds = %23, %17
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = call i64 @user_mode(%struct.pt_regs* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %41

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %14
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %27, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
