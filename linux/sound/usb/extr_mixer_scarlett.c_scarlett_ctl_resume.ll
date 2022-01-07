; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_ctl_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_ctl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_list = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_list*)* @scarlett_ctl_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett_ctl_resume(%struct.usb_mixer_elem_list* %0) #0 {
  %2 = alloca %struct.usb_mixer_elem_list*, align 8
  %3 = alloca %struct.usb_mixer_elem_info*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_mixer_elem_list* %0, %struct.usb_mixer_elem_list** %2, align 8
  %5 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %2, align 8
  %6 = call %struct.usb_mixer_elem_info* @mixer_elem_list_to_info(%struct.usb_mixer_elem_list* %5)
  store %struct.usb_mixer_elem_info* %6, %struct.usb_mixer_elem_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %3, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %3, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %3, align 8
  %26 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info* %22, i32 %23, i32 %24, i32 %31)
  br label %33

33:                                               ; preds = %21, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %7

37:                                               ; preds = %7
  ret i32 0
}

declare dso_local %struct.usb_mixer_elem_info* @mixer_elem_list_to_info(%struct.usb_mixer_elem_list*) #1

declare dso_local i32 @snd_usb_set_cur_mix_value(%struct.usb_mixer_elem_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
