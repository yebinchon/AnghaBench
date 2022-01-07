; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.TYPE_2__ = type { %struct.sprd_pcm_dma_private* }
%struct.sprd_pcm_dma_private = type { i32, %struct.sprd_pcm_dma_data* }
%struct.sprd_pcm_dma_data = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to submit dma request: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @sprd_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sprd_pcm_dma_private*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sprd_pcm_dma_data*, align 8
  %12 = alloca %struct.sprd_pcm_dma_data*, align 8
  %13 = alloca %struct.sprd_pcm_dma_data*, align 8
  %14 = alloca %struct.sprd_pcm_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %18, align 8
  store %struct.sprd_pcm_dma_private* %19, %struct.sprd_pcm_dma_private** %6, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %7, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %23, i32 %24)
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %159 [
    i32 130, label %27
    i32 131, label %75
    i32 132, label %75
    i32 129, label %103
    i32 128, label %131
    i32 133, label %131
  ]

27:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %71, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %31 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %36 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %35, i32 0, i32 1
  %37 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %37, i64 %39
  store %struct.sprd_pcm_dma_data* %40, %struct.sprd_pcm_dma_data** %11, align 8
  %41 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %11, align 8
  %42 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %71

46:                                               ; preds = %34
  %47 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %11, align 8
  %48 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dmaengine_submit(i32 %49)
  %51 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %11, align 8
  %52 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %11, align 8
  %54 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_submit_error(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %164

66:                                               ; preds = %46
  %67 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %11, align 8
  %68 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dma_async_issue_pending(i32 %69)
  br label %71

71:                                               ; preds = %66, %45
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %28

74:                                               ; preds = %28
  br label %162

75:                                               ; preds = %2, %2
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %79 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %84 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %83, i32 0, i32 1
  %85 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %85, i64 %87
  store %struct.sprd_pcm_dma_data* %88, %struct.sprd_pcm_dma_data** %12, align 8
  %89 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %12, align 8
  %90 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %12, align 8
  %95 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dmaengine_resume(i32 %96)
  br label %98

98:                                               ; preds = %93, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %76

102:                                              ; preds = %76
  br label %162

103:                                              ; preds = %2
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %127, %103
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %107 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %104
  %111 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %112 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %111, i32 0, i32 1
  %113 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %113, i64 %115
  store %struct.sprd_pcm_dma_data* %116, %struct.sprd_pcm_dma_data** %13, align 8
  %117 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %118 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %123 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dmaengine_terminate_async(i32 %124)
  br label %126

126:                                              ; preds = %121, %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %104

130:                                              ; preds = %104
  br label %162

131:                                              ; preds = %2, %2
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %155, %131
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %135 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  %139 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %140 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %139, i32 0, i32 1
  %141 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %141, i64 %143
  store %struct.sprd_pcm_dma_data* %144, %struct.sprd_pcm_dma_data** %14, align 8
  %145 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %14, align 8
  %146 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %14, align 8
  %151 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dmaengine_pause(i32 %152)
  br label %154

154:                                              ; preds = %149, %138
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %132

158:                                              ; preds = %132
  br label %162

159:                                              ; preds = %2
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %159, %158, %130, %102, %74
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %59
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dmaengine_submit(i32) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_resume(i32) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

declare dso_local i32 @dmaengine_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
