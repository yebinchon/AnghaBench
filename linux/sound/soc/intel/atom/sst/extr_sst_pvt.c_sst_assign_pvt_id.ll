; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_assign_pvt_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_assign_pvt_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"pvt_id assigned --> %d\0A\00", align 1
@SST_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PVT _ID error: no free id blocks \00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_assign_pvt_id(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  %5 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %6 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ffz(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %13 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SST_MAX_BLOCKS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %22 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %25 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 1
  %34 = call i32 @change_bit(i32 %31, i32* %33)
  %35 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %36 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @change_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
