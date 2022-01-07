; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_wait_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_wait_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%struct.sst_block = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"stream failed %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"event up\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"signal interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_wait_interruptible(%struct.intel_sst_drv* %0, %struct.sst_block* %1) #0 {
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca %struct.sst_block*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store %struct.sst_block* %1, %struct.sst_block** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %10 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wait_event_interruptible(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %2
  %15 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %16 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %24 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %19
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %37 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EINTR, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %34
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
