; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_sst_create_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_sst_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_block = type { i32, i32, i32, i8*, i8* }
%struct.intel_sst_drv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sst_block* @sst_create_block(%struct.intel_sst_drv* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sst_block*, align 8
  %5 = alloca %struct.intel_sst_drv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sst_block*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sst_block* null, %struct.sst_block** %8, align 8
  %9 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %10 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sst_block* @kzalloc(i32 32, i32 %13)
  store %struct.sst_block* %14, %struct.sst_block** %8, align 8
  %15 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %16 = icmp ne %struct.sst_block* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.sst_block* null, %struct.sst_block** %4, align 8
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %20 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %22 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %25 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %28 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %30 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  %33 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %32, i32 0, i32 2
  %34 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %35 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %38 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.sst_block*, %struct.sst_block** %8, align 8
  store %struct.sst_block* %40, %struct.sst_block** %4, align 8
  br label %41

41:                                               ; preds = %18, %17
  %42 = load %struct.sst_block*, %struct.sst_block** %4, align 8
  ret %struct.sst_block* %42
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.sst_block* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
