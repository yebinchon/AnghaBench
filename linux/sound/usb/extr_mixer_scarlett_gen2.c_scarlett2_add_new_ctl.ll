; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_new_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_new_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.usb_mixer_interface* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol_new*, i32, i32, i8*, %struct.snd_kcontrol**)* @scarlett2_add_new_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol_new* %1, i32 %2, i32 %3, i8* %4, %struct.snd_kcontrol** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_mixer_interface*, align 8
  %9 = alloca %struct.snd_kcontrol_new*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.snd_kcontrol**, align 8
  %14 = alloca %struct.snd_kcontrol*, align 8
  %15 = alloca %struct.usb_mixer_elem_info*, align 8
  %16 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %8, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.snd_kcontrol** %5, %struct.snd_kcontrol*** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_mixer_elem_info* @kzalloc(i32 24, i32 %17)
  store %struct.usb_mixer_elem_info* %18, %struct.usb_mixer_elem_info** %15, align 8
  %19 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %20 = icmp ne %struct.usb_mixer_elem_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %74

24:                                               ; preds = %6
  %25 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %8, align 8
  %26 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.usb_mixer_interface* %25, %struct.usb_mixer_interface** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %34 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %40 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %41 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %39, %struct.usb_mixer_elem_info* %40)
  store %struct.snd_kcontrol* %41, %struct.snd_kcontrol** %14, align 8
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %43 = icmp ne %struct.snd_kcontrol* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %24
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %46 = call i32 @kfree(%struct.usb_mixer_elem_info* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %74

49:                                               ; preds = %24
  %50 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %52 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @strlcpy(i32 %56, i8* %57, i32 4)
  %59 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %60 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %59, i32 0, i32 2
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %62 = call i32 @snd_usb_mixer_add_control(%struct.TYPE_4__* %60, %struct.snd_kcontrol* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %7, align 4
  br label %74

67:                                               ; preds = %49
  %68 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %13, align 8
  %69 = icmp ne %struct.snd_kcontrol** %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %72 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %13, align 8
  store %struct.snd_kcontrol* %71, %struct.snd_kcontrol** %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %65, %44, %21
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @kfree(%struct.usb_mixer_elem_info*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_usb_mixer_add_control(%struct.TYPE_4__*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
