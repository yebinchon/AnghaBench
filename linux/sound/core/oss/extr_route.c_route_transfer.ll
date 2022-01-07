; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_route.c_route_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_route.c_route_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)* @route_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_transfer(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %16 = icmp ne %struct.snd_pcm_plugin* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %19 = icmp ne %struct.snd_pcm_plugin_channel* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %22 = icmp ne %struct.snd_pcm_plugin_channel* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %17, %4
  %25 = phi i1 [ true, %17 ], [ true, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %108

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %108

36:                                               ; preds = %32
  %37 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  store %struct.snd_pcm_plugin_channel* %49, %struct.snd_pcm_plugin_channel** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %70

52:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %59 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @copy_area(%struct.snd_pcm_plugin_channel* %58, %struct.snd_pcm_plugin_channel* %59, i32 %60, i32 %61)
  %63 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %13, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %63, i32 1
  store %struct.snd_pcm_plugin_channel* %64, %struct.snd_pcm_plugin_channel** %13, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %5, align 4
  br label %108

70:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %94

81:                                               ; preds = %79
  %82 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %83 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %13, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @copy_area(%struct.snd_pcm_plugin_channel* %82, %struct.snd_pcm_plugin_channel* %83, i32 %84, i32 %85)
  %87 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %13, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %87, i32 1
  store %struct.snd_pcm_plugin_channel* %88, %struct.snd_pcm_plugin_channel** %13, align 8
  %89 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %89, i32 1
  store %struct.snd_pcm_plugin_channel* %90, %struct.snd_pcm_plugin_channel** %7, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %71

94:                                               ; preds = %79
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %13, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @zero_areas(%struct.snd_pcm_plugin_channel* %99, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %94
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %68, %35, %29
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @copy_area(%struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32, i32) #1

declare dso_local i32 @zero_areas(%struct.snd_pcm_plugin_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
