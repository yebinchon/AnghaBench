; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_transfer_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_transfer_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_4__, i32, %struct.skl_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sst_dsp.0*, i8*, i32, i32)*, i32 (%struct.sst_dsp.1*)* }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque
%struct.skl_dev = type { i32, i32, i32, i32 }

@SKL_NUM_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to Load %s with err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@SKL_IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Module Load failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i8*, i32, i32, i32, i32)* @skl_transfer_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_transfer_module(%struct.sst_dsp* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.skl_dev*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 2
  %20 = load %struct.skl_dev*, %struct.skl_dev** %19, align 8
  store %struct.skl_dev* %20, %struct.skl_dev** %17, align 8
  %21 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %22 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %24 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sst_dsp.0*, i8*, i32, i32)*, i32 (%struct.sst_dsp.0*, i8*, i32, i32)** %26, align 8
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %29 = bitcast %struct.sst_dsp* %28 to %struct.sst_dsp.0*
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %27(%struct.sst_dsp.0* %29, i8* %30, i32 %31, i32 0)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %125

37:                                               ; preds = %6
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %42 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %41, i32 0, i32 3
  %43 = load i32, i32* @SKL_NUM_MODULES, align 4
  %44 = call i32 @skl_ipc_load_modules(i32* %42, i32 %43, i32* %11)
  store i32 %44, i32* %14, align 4
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %47 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @skl_sst_ipc_load_library(i32* %47, i32 0, i32 %48, i32 0)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %55 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %61)
  br label %115

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %16, align 4
  %71 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %72 = call i32 @skl_cldma_wait_interruptible(%struct.sst_dsp* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %115

76:                                               ; preds = %67
  %77 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %78 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.sst_dsp.0*, i8*, i32, i32)*, i32 (%struct.sst_dsp.0*, i8*, i32, i32)** %80, align 8
  %82 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %83 = bitcast %struct.sst_dsp* %82 to %struct.sst_dsp.0*
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = load i32, i32* %15, align 4
  %89 = call i32 %81(%struct.sst_dsp.0* %83, i8* %87, i32 %88, i32 0)
  store i32 %89, i32* %15, align 4
  br label %64

90:                                               ; preds = %64
  %91 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %92 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %95 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SKL_IPC_BOOT_MSECS, align 4
  %98 = call i32 @msecs_to_jiffies(i32 %97)
  %99 = call i32 @wait_event_timeout(i32 %93, i32 %96, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %90
  %103 = load %struct.skl_dev*, %struct.skl_dev** %17, align 8
  %104 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102, %90
  %108 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %109 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114, %75, %53
  %116 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %117 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32 (%struct.sst_dsp.1*)*, i32 (%struct.sst_dsp.1*)** %119, align 8
  %121 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %122 = bitcast %struct.sst_dsp* %121 to %struct.sst_dsp.1*
  %123 = call i32 %120(%struct.sst_dsp.1* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %115, %35
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @skl_ipc_load_modules(i32*, i32, i32*) #1

declare dso_local i32 @skl_sst_ipc_load_library(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @skl_cldma_wait_interruptible(%struct.sst_dsp*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
