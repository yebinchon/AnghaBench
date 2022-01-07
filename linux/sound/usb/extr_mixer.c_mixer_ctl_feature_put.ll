; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_feature_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_feature_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixer_ctl_feature_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_ctl_feature_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %14, align 8
  store %struct.usb_mixer_elem_info* %15, %struct.usb_mixer_elem_info** %6, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MAX_CHANNELS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %21
  %26 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %72

34:                                               ; preds = %25
  %35 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %35, i32 %37, i32 %38, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @filter_error(%struct.usb_mixer_elem_info* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %34
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @get_abs_value(%struct.usb_mixer_elem_info* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %63, i32 %65, i32 %66, i32 %67)
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %62, %46
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %33
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %21

75:                                               ; preds = %21
  br label %104

76:                                               ; preds = %2
  %77 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %78 = call i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %77, i32 0, i32 0, i32* %10)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @filter_error(%struct.usb_mixer_elem_info* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %106

85:                                               ; preds = %76
  %86 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @get_abs_value(%struct.usb_mixer_elem_info* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %100, i32 0, i32 0, i32 %101)
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %85
  br label %104

104:                                              ; preds = %103, %75
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %81, %42
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32*) #1

declare dso_local i32 @filter_error(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @get_abs_value(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
