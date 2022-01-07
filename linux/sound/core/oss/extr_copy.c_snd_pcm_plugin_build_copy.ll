; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_copy.c_snd_pcm_plugin_build_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_copy.c_snd_pcm_plugin_build_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i64, i64 }
%struct.snd_pcm_plugin = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@copy_transfer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_copy(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_plugin*, align 8
  %12 = alloca i32, align 4
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
  br label %93

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
  br label %93

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
  br label %93

51:                                               ; preds = %37
  %52 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @snd_BUG_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %93

65:                                               ; preds = %51
  %66 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @snd_pcm_format_physical_width(i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sle i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i64 @snd_BUG_ON(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @ENXIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %93

78:                                               ; preds = %65
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %80 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %81 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %82 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %80, %struct.snd_pcm_plugin_format* %81, i32 0, %struct.snd_pcm_plugin** %11)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %93

87:                                               ; preds = %78
  %88 = load i32, i32* @copy_transfer, align 4
  %89 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %11, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %11, align 8
  %92 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %91, %struct.snd_pcm_plugin** %92, align 8
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %85, %75, %62, %48, %34, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i64) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
