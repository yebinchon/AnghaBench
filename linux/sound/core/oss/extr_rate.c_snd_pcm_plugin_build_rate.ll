; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_rate.c_snd_pcm_plugin_build_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_rate.c_snd_pcm_plugin_build_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i64, i32 }
%struct.snd_pcm_plugin = type { i32, i32, i32, i32, i64 }
%struct.rate_priv = type { i32, i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rate conversion\00", align 1
@channels = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@resample_expand = common dso_local global i32 0, align 4
@resample_shrink = common dso_local global i32 0, align 4
@rate_transfer = common dso_local global i32 0, align 4
@rate_src_frames = common dso_local global i32 0, align 4
@rate_dst_frames = common dso_local global i32 0, align 4
@rate_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rate_priv*, align 8
  %12 = alloca %struct.snd_pcm_plugin*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format** %7, align 8
  store %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin_format** %8, align 8
  store %struct.snd_pcm_plugin** %3, %struct.snd_pcm_plugin*** %9, align 8
  %13 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  %14 = icmp ne %struct.snd_pcm_plugin** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %176

22:                                               ; preds = %4
  %23 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %23, align 8
  %24 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @snd_BUG_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %176

37:                                               ; preds = %22
  %38 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %176

48:                                               ; preds = %37
  %49 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @snd_BUG_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %176

60:                                               ; preds = %48
  %61 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @snd_BUG_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %176

72:                                               ; preds = %60
  %73 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @snd_BUG_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %176

86:                                               ; preds = %72
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %88 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %89 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %90 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %91 = load i32, i32* @channels, align 4
  %92 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @struct_size(%struct.rate_priv* %90, i32 %91, i64 %94)
  %96 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %88, %struct.snd_pcm_plugin_format* %89, i32 %95, %struct.snd_pcm_plugin** %12)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %176

101:                                              ; preds = %86
  %102 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.rate_priv*
  store %struct.rate_priv* %105, %struct.rate_priv** %11, align 8
  %106 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %101
  %114 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = ashr i32 %121, 1
  %123 = add nsw i32 %118, %122
  %124 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %123, %126
  %128 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %129 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @resample_expand, align 4
  %131 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %132 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  br label %153

133:                                              ; preds = %101
  %134 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = ashr i32 %141, 1
  %143 = add nsw i32 %138, %142
  %144 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %143, %146
  %148 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %149 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @resample_shrink, align 4
  %151 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %152 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %133, %113
  %154 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %155 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %157 = call i32 @rate_init(%struct.snd_pcm_plugin* %156)
  %158 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %159 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %161 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* @rate_transfer, align 4
  %163 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @rate_src_frames, align 4
  %166 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @rate_dst_frames, align 4
  %169 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @rate_action, align 4
  %172 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %175 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %174, %struct.snd_pcm_plugin** %175, align 8
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %153, %99, %83, %69, %57, %45, %34, %19
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @struct_size(%struct.rate_priv*, i32, i64) #1

declare dso_local i32 @rate_init(%struct.snd_pcm_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
