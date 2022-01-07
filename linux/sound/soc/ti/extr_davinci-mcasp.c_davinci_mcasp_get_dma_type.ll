; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_get_dma_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_get_dma_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.dma_chan = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@PCM_EDMA = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't verify DMA configuration (%ld)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DMA controller has no of-node\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"DMA controller compatible = \22%s\22\0A\00", align 1
@sdma_prefix = common dso_local global i32 0, align 4
@PCM_SDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*)* @davinci_mcasp_get_dma_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_get_dma_type(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.davinci_mcasp*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %3, align 8
  %7 = load i32, i32* @PCM_EDMA, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %9 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @PCM_EDMA, align 4
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %18 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %25 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.dma_chan* @dma_request_slave_channel_reason(%struct.TYPE_10__* %26, i8* %27)
  store %struct.dma_chan* %28, %struct.dma_chan** %4, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %30 = call i64 @IS_ERR(%struct.dma_chan* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %16
  %33 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.dma_chan* %33)
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %40 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %43 = call i32 @PTR_ERR(%struct.dma_chan* %42)
  %44 = call i32 @dev_err(%struct.TYPE_10__* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %47 = call i32 @PTR_ERR(%struct.dma_chan* %46)
  store i32 %47, i32* %2, align 4
  br label %115

48:                                               ; preds = %16
  %49 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %50 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %55 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %53, %48
  %62 = phi i1 [ true, %48 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %115

69:                                               ; preds = %61
  %70 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %71 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %80 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @of_property_read_string(i64 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  store i32 %86, i32* %6, align 4
  br label %92

87:                                               ; preds = %69
  %88 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %89 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %78
  %93 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %94 = call i32 @dma_release_channel(%struct.dma_chan* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %115

99:                                               ; preds = %92
  %100 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %101 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* @sdma_prefix, align 4
  %107 = load i32, i32* @sdma_prefix, align 4
  %108 = call i32 @strlen(i32 %107)
  %109 = call i32 @strncmp(i8* %105, i32 %106, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %99
  %112 = load i32, i32* @PCM_SDMA, align 4
  store i32 %112, i32* %2, align 4
  br label %115

113:                                              ; preds = %99
  %114 = load i32, i32* @PCM_EDMA, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %111, %97, %66, %45, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_property_read_string(i64, i8*, i8**) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
