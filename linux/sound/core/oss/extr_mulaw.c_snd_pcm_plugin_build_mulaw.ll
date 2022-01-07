; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_snd_pcm_plugin_build_mulaw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_snd_pcm_plugin_build_mulaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i64, i64 }
%struct.snd_pcm_plugin = type { i32, i64 }
%struct.mulaw_priv = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_MU_LAW = common dso_local global i64 0, align 8
@mulaw_encode = common dso_local global i32 0, align 4
@mulaw_decode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Mu-Law<->linear conversion\00", align 1
@mulaw_transfer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mulaw_priv*, align 8
  %12 = alloca %struct.snd_pcm_plugin*, align 8
  %13 = alloca %struct.snd_pcm_plugin_format*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format** %7, align 8
  store %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin_format** %8, align 8
  store %struct.snd_pcm_plugin** %3, %struct.snd_pcm_plugin*** %9, align 8
  %15 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  %16 = icmp ne %struct.snd_pcm_plugin** %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %116

24:                                               ; preds = %4
  %25 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %25, align 8
  %26 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @snd_BUG_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %116

39:                                               ; preds = %24
  %40 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @snd_BUG_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %116

53:                                               ; preds = %39
  %54 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  store %struct.snd_pcm_plugin_format* %60, %struct.snd_pcm_plugin_format** %13, align 8
  %61 = load i32, i32* @mulaw_encode, align 4
  store i32 %61, i32* %14, align 4
  br label %76

62:                                               ; preds = %53
  %63 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  store %struct.snd_pcm_plugin_format* %69, %struct.snd_pcm_plugin_format** %13, align 8
  %70 = load i32, i32* @mulaw_decode, align 4
  store i32 %70, i32* %14, align 4
  br label %75

71:                                               ; preds = %62
  %72 = call i32 (...) @snd_BUG()
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %116

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %13, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @snd_pcm_format_linear(i64 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @snd_BUG_ON(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %116

89:                                               ; preds = %76
  %90 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %91 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %92 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %93 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %91, %struct.snd_pcm_plugin_format* %92, i32 4, %struct.snd_pcm_plugin** %12)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %116

98:                                               ; preds = %89
  %99 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.mulaw_priv*
  store %struct.mulaw_priv* %102, %struct.mulaw_priv** %11, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.mulaw_priv*, %struct.mulaw_priv** %11, align 8
  %105 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.mulaw_priv*, %struct.mulaw_priv** %11, align 8
  %107 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %13, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @init_data(%struct.mulaw_priv* %106, i64 %109)
  %111 = load i32, i32* @mulaw_transfer, align 4
  %112 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %115 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %114, %struct.snd_pcm_plugin** %115, align 8
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %98, %96, %86, %71, %50, %36, %21
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_pcm_format_linear(i64) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @init_data(%struct.mulaw_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
