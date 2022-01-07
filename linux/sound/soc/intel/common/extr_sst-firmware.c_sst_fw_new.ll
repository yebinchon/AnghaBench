; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_fw = type { i32*, i32, i32, i32, i8*, %struct.sst_dsp* }
%struct.sst_dsp = type { i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sst_fw*)* }
%struct.firmware = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error: DMA alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error: parse fw failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sst_fw* @sst_fw_new(%struct.sst_dsp* %0, %struct.firmware* %1, i8* %2) #0 {
  %4 = alloca %struct.sst_fw*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sst_fw*, align 8
  %9 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.sst_fw*)*, i32 (%struct.sst_fw*)** %13, align 8
  %15 = icmp ne i32 (%struct.sst_fw*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.sst_fw* null, %struct.sst_fw** %4, align 8
  br label %146

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sst_fw* @kzalloc(i32 40, i32 %18)
  store %struct.sst_fw* %19, %struct.sst_fw** %8, align 8
  %20 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %21 = icmp eq %struct.sst_fw* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.sst_fw* null, %struct.sst_fw** %4, align 8
  br label %146

23:                                               ; preds = %17
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %25 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %26 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %25, i32 0, i32 5
  store %struct.sst_dsp* %24, %struct.sst_dsp** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %29 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %34 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %39 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %42 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @dma_alloc_coherent(i32 %37, i32 %40, i32* %42, i32 %43)
  %45 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %46 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %48 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %23
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %57 = call i32 @kfree(%struct.sst_fw* %56)
  store %struct.sst_fw* null, %struct.sst_fw** %4, align 8
  br label %146

58:                                               ; preds = %23
  %59 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %60 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = load %struct.firmware*, %struct.firmware** %6, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.firmware*, %struct.firmware** %6, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i8* %62, i8* %66, i32 %69)
  %71 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %72 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %58
  %76 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %77 = call i32 @sst_dsp_dma_get_channel(%struct.sst_dsp* %76, i32 0)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %128

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %58
  %83 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %84 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.sst_fw*)*, i32 (%struct.sst_fw*)** %86, align 8
  %88 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %89 = call i32 %87(%struct.sst_fw* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %94 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %119

98:                                               ; preds = %82
  %99 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %100 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %105 = call i32 @sst_dsp_dma_put_channel(%struct.sst_dsp* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %108 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %107, i32 0, i32 2
  %109 = call i32 @mutex_lock(i32* %108)
  %110 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %111 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %110, i32 0, i32 3
  %112 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %113 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %112, i32 0, i32 3
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %116 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  store %struct.sst_fw* %118, %struct.sst_fw** %4, align 8
  br label %146

119:                                              ; preds = %92
  %120 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %121 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %126 = call i32 @sst_dsp_dma_put_channel(%struct.sst_dsp* %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %80
  %129 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %130 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %133 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %136 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %139 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dma_free_coherent(i32 %131, i32 %134, i32* %137, i32 %140)
  %142 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %143 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  %144 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %145 = call i32 @kfree(%struct.sst_fw* %144)
  store %struct.sst_fw* null, %struct.sst_fw** %4, align 8
  br label %146

146:                                              ; preds = %128, %106, %51, %22, %16
  %147 = load %struct.sst_fw*, %struct.sst_fw** %4, align 8
  ret %struct.sst_fw* %147
}

declare dso_local %struct.sst_fw* @kzalloc(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.sst_fw*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sst_dsp_dma_get_channel(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_dma_put_channel(%struct.sst_dsp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
