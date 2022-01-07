; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_write_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_write_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32 }
%struct.snd_pcm_plugin = type { i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32, %struct.snd_pcm_plugin* }

@.str = private unnamed_addr constant [23 x i8] c"write plugin: %s, %li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_write_transfer(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  %9 = alloca %struct.snd_pcm_plugin*, align 8
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %15)
  store %struct.snd_pcm_plugin* %16, %struct.snd_pcm_plugin** %8, align 8
  br label %17

17:                                               ; preds = %100, %3
  %18 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %19 = icmp ne %struct.snd_pcm_plugin* %18, null
  br i1 %19, label %20, label %103

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %107

25:                                               ; preds = %20
  %26 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %26, i32 0, i32 5
  %28 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %27, align 8
  store %struct.snd_pcm_plugin* %28, %struct.snd_pcm_plugin** %9, align 8
  %29 = icmp ne %struct.snd_pcm_plugin* %28, null
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.snd_pcm_plugin*, i32)* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %37, i32 0, i32 0
  %39 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %38, align 8
  %40 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 %39(%struct.snd_pcm_plugin* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %107

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 1
  %51 = load i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)** %50, align 8
  %52 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 %51(%struct.snd_pcm_plugin* %52, i32 %53, %struct.snd_pcm_plugin_channel** %10)
  store i32 %54, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %107

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %64, i32 0, i32 2
  %66 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.snd_pcm_plugin*, i32)* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %69, i32 0, i32 2
  %71 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %70, align 8
  %72 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 %71(%struct.snd_pcm_plugin* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %107

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %58
  br label %83

82:                                               ; preds = %25
  store %struct.snd_pcm_plugin_channel* null, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %83

83:                                               ; preds = %82, %81
  %84 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @pdprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %89, i32 0, i32 3
  %91 = load i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)** %90, align 8
  %92 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %93 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %94 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 %91(%struct.snd_pcm_plugin* %92, %struct.snd_pcm_plugin_channel* %93, %struct.snd_pcm_plugin_channel* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %107

100:                                              ; preds = %83
  %101 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  store %struct.snd_pcm_plugin_channel* %101, %struct.snd_pcm_plugin_channel** %6, align 8
  %102 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  store %struct.snd_pcm_plugin* %102, %struct.snd_pcm_plugin** %8, align 8
  br label %17

103:                                              ; preds = %17
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %98, %77, %56, %45, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pdprintf(i8*, i32, i32) #1

declare dso_local i32 @snd_pcm_plug_client_size(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
