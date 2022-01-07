; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_add_single_ctl_with_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_add_single_ctl_with_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.usb_mixer_elem_list = type { i32, i32, %struct.usb_mixer_interface* }
%struct.snd_kcontrol = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i32, %struct.snd_kcontrol_new*, %struct.usb_mixer_elem_list**)* @add_single_ctl_with_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_single_ctl_with_resume(%struct.usb_mixer_interface* %0, i32 %1, i32 %2, %struct.snd_kcontrol_new* %3, %struct.usb_mixer_elem_list** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_mixer_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca %struct.usb_mixer_elem_list**, align 8
  %12 = alloca %struct.usb_mixer_elem_list*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.snd_kcontrol_new* %3, %struct.snd_kcontrol_new** %10, align 8
  store %struct.usb_mixer_elem_list** %4, %struct.usb_mixer_elem_list*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.usb_mixer_elem_list* @kzalloc(i32 16, i32 %14)
  store %struct.usb_mixer_elem_list* %15, %struct.usb_mixer_elem_list** %12, align 8
  %16 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %17 = icmp ne %struct.usb_mixer_elem_list* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %54

21:                                               ; preds = %5
  %22 = load %struct.usb_mixer_elem_list**, %struct.usb_mixer_elem_list*** %11, align 8
  %23 = icmp ne %struct.usb_mixer_elem_list** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %26 = load %struct.usb_mixer_elem_list**, %struct.usb_mixer_elem_list*** %11, align 8
  store %struct.usb_mixer_elem_list* %25, %struct.usb_mixer_elem_list** %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %29 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %30 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %29, i32 0, i32 2
  store %struct.usb_mixer_interface* %28, %struct.usb_mixer_interface** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %33 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %36 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %38 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %39 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %37, %struct.usb_mixer_elem_list* %38)
  store %struct.snd_kcontrol* %39, %struct.snd_kcontrol** %13, align 8
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %41 = icmp ne %struct.snd_kcontrol* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %27
  %43 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %44 = call i32 @kfree(%struct.usb_mixer_elem_list* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %27
  %48 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %12, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %53 = call i32 @snd_usb_mixer_add_control(%struct.usb_mixer_elem_list* %51, %struct.snd_kcontrol* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %42, %18
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.usb_mixer_elem_list* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.usb_mixer_elem_list*) #1

declare dso_local i32 @kfree(%struct.usb_mixer_elem_list*) #1

declare dso_local i32 @snd_usb_mixer_add_control(%struct.usb_mixer_elem_list*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
