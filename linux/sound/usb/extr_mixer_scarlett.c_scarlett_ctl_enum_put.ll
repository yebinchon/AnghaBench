; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_ctl_enum_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_ctl_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { %struct.scarlett_mixer_elem_enum_info* }
%struct.scarlett_mixer_elem_enum_info = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @scarlett_ctl_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett_ctl_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca %struct.scarlett_mixer_elem_enum_info*, align 8
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
  %16 = load %struct.scarlett_mixer_elem_enum_info*, %struct.scarlett_mixer_elem_enum_info** %15, align 8
  store %struct.scarlett_mixer_elem_enum_info* %16, %struct.scarlett_mixer_elem_enum_info** %7, align 8
  %17 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %18 = call i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %17, i32 0, i32 0, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.scarlett_mixer_elem_enum_info*, %struct.scarlett_mixer_elem_enum_info** %7, align 8
  %33 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, %struct.scarlett_mixer_elem_enum_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %40, i32 0, i32 0, i32 %41)
  store i32 1, i32* %3, align 4
  br label %44

43:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32*) #1

declare dso_local i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
