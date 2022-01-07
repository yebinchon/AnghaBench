; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_sample_regs_user.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_sample_regs_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.perf_regs = type { %struct.pt_regs*, i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_ABI_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_regs*, %struct.pt_regs*, %struct.pt_regs*)* @perf_sample_regs_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sample_regs_user(%struct.perf_regs* %0, %struct.pt_regs* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.perf_regs* %0, %struct.perf_regs** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %8 = call i64 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = call i32 @perf_reg_abi(%struct.TYPE_3__* %11)
  %13 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %14 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %17 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %16, i32 0, i32 0
  store %struct.pt_regs* %15, %struct.pt_regs** %17, align 8
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_KTHREAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = call i32 @perf_get_regs_user(%struct.perf_regs* %26, %struct.pt_regs* %27, %struct.pt_regs* %28)
  br label %36

30:                                               ; preds = %18
  %31 = load i32, i32* @PERF_SAMPLE_REGS_ABI_NONE, align 4
  %32 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %33 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %35 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %34, i32 0, i32 0
  store %struct.pt_regs* null, %struct.pt_regs** %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @perf_reg_abi(%struct.TYPE_3__*) #1

declare dso_local i32 @perf_get_regs_user(%struct.perf_regs*, %struct.pt_regs*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
