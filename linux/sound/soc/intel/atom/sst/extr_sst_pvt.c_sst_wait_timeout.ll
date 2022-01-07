; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, i32 }
%struct.sst_block = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"waiting for condition %x ipc %d drv_id %d\0A\00", align 1
@SST_BLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Event wake %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"message ret: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Wait timed-out condition:%#x, msg_id:%#x fw_state %#x\0A\00", align 1
@SST_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_wait_timeout(%struct.intel_sst_drv* %0, %struct.sst_block* %1) #0 {
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
  %10 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %13 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %16 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %20 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %23 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SST_BLOCK_TIMEOUT, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = call i64 @wait_event_timeout(i32 %21, i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %34 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %38 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %41 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %45 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %69

48:                                               ; preds = %2
  %49 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %50 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %52 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %55 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  %58 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %61 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* @SST_RESET, align 4
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %66 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %48, %29
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
