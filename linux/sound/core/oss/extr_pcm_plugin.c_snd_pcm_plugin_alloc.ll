; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i64, i32, i64, i64, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format }
%struct.snd_pcm_plugin_channel = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.snd_pcm_plugin_format = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, i32)* @snd_pcm_plugin_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_plugin_alloc(%struct.snd_pcm_plugin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_plugin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_plugin_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %17, i32 0, i32 6
  store %struct.snd_pcm_plugin_format* %18, %struct.snd_pcm_plugin_format** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %20, i32 0, i32 5
  store %struct.snd_pcm_plugin_format* %21, %struct.snd_pcm_plugin_format** %6, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_pcm_format_physical_width(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %195

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = urem i64 %39, 8
  %41 = call i64 @snd_BUG_ON(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %195

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = udiv i64 %47, 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @kvfree(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i64 @kvzalloc(i64 %59, i32 %60)
  %62 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %54, %46
  %68 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %195

77:                                               ; preds = %67
  %78 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %78, i32 0, i32 4
  %80 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %79, align 8
  store %struct.snd_pcm_plugin_channel* %80, %struct.snd_pcm_plugin_channel** %10, align 8
  %81 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %121, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i64 %103, i64* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = mul i32 %107, %108
  %110 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %93
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %124, i32 1
  store %struct.snd_pcm_plugin_channel* %125, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %87

126:                                              ; preds = %87
  br label %194

127:                                              ; preds = %77
  %128 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %190

133:                                              ; preds = %127
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = urem i64 %134, %138
  %140 = call i64 @snd_BUG_ON(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %195

145:                                              ; preds = %133
  %146 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %8, align 8
  %151 = udiv i64 %150, %149
  store i64 %151, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %184, %145
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %155 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %158, label %189

158:                                              ; preds = %152
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %165 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %8, align 8
  %172 = mul i64 %170, %171
  %173 = add i64 %168, %172
  %174 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %175 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  store i64 %173, i64* %176, align 8
  %177 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %178 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %182 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %158
  %185 = load i32, i32* %9, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %9, align 4
  %187 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %188 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %187, i32 1
  store %struct.snd_pcm_plugin_channel* %188, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %152

189:                                              ; preds = %152
  br label %193

190:                                              ; preds = %127
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %195

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %126
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %190, %142, %72, %43, %28
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i64 @snd_BUG_ON(i64) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i64 @kvzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
