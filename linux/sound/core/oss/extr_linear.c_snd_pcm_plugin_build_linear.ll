; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_snd_pcm_plugin_build_linear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_linear.c_snd_pcm_plugin_build_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i64, i32 }
%struct.snd_pcm_plugin = type { i32, i64 }
%struct.linear_priv = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"linear format conversion\00", align 1
@linear_transfer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.linear_priv*, align 8
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
  br label %99

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
  br label %99

37:                                               ; preds = %22
  %38 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @snd_BUG_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %99

51:                                               ; preds = %37
  %52 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_pcm_format_linear(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_pcm_format_linear(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %57, %51
  %65 = phi i1 [ true, %51 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @snd_BUG_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %99

72:                                               ; preds = %64
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %74 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %75 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %76 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %74, %struct.snd_pcm_plugin_format* %75, i32 4, %struct.snd_pcm_plugin** %12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %99

81:                                               ; preds = %72
  %82 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.linear_priv*
  store %struct.linear_priv* %85, %struct.linear_priv** %11, align 8
  %86 = load %struct.linear_priv*, %struct.linear_priv** %11, align 8
  %87 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @init_data(%struct.linear_priv* %86, i32 %89, i32 %92)
  %94 = load i32, i32* @linear_transfer, align 4
  %95 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %98 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %97, %struct.snd_pcm_plugin** %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %81, %79, %69, %48, %34, %19
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_format_linear(i32) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @init_data(%struct.linear_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
