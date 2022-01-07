; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_feature_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_mixer_ctl_feature_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixer_ctl_feature_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_ctl_feature_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %12, align 8
  store %struct.usb_mixer_elem_info* %13, %struct.usb_mixer_elem_info** %6, align 8
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %24 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %68, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MAX_CHANNELS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %34 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %68

41:                                               ; preds = %32
  %42 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %42, i32 %44, i32 %45, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @filter_error(%struct.usb_mixer_elem_info* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %93

53:                                               ; preds = %41
  %54 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @get_relative_value(%struct.usb_mixer_elem_info* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %53, %40
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %28

71:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %93

72:                                               ; preds = %2
  %73 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %74 = call i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %73, i32 0, i32 0, i32* %9)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @filter_error(%struct.usb_mixer_elem_info* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %72
  %82 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @get_relative_value(%struct.usb_mixer_elem_info* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %77, %71, %49
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32*) #1

declare dso_local i32 @filter_error(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local i32 @get_relative_value(%struct.usb_mixer_elem_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
