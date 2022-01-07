; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_route.c_snd_pcm_plugin_build_route.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_route.c_snd_pcm_plugin_build_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i64 }
%struct.snd_pcm_plugin = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"route conversion\00", align 1
@route_transfer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca %struct.snd_pcm_plugin*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format** %7, align 8
  store %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin_format** %8, align 8
  store %struct.snd_pcm_plugin** %3, %struct.snd_pcm_plugin*** %9, align 8
  %12 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  %13 = icmp ne %struct.snd_pcm_plugin** %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %65

21:                                               ; preds = %4
  %22 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %22, align 8
  %23 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %65

36:                                               ; preds = %21
  %37 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @snd_BUG_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %36
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %52 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %53 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %54 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %52, %struct.snd_pcm_plugin_format* %53, i32 0, %struct.snd_pcm_plugin** %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @route_transfer, align 4
  %61 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %64 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %63, %struct.snd_pcm_plugin** %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %57, %47, %33, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
