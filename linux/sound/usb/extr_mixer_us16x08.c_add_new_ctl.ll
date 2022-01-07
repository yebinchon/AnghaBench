; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_add_new_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_add_new_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, %struct.TYPE_4__, i8*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32*, %struct.usb_mixer_interface* }
%struct.snd_kcontrol = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"us16x08 add mixer %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@elem_private_free = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol_new*, i32, i32, i32, i8*, i8*, i32, %struct.usb_mixer_elem_info**)* @add_new_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_ctl(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol_new* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7, %struct.usb_mixer_elem_info** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_mixer_interface*, align 8
  %12 = alloca %struct.snd_kcontrol_new*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_mixer_elem_info**, align 8
  %20 = alloca %struct.snd_kcontrol*, align 8
  %21 = alloca %struct.usb_mixer_elem_info*, align 8
  %22 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %11, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.usb_mixer_elem_info** %8, %struct.usb_mixer_elem_info*** %19, align 8
  %23 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %11, align 8
  %24 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %16, align 8
  %27 = call i32 @usb_audio_dbg(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.usb_mixer_elem_info* @kzalloc(i32 56, i32 %28)
  store %struct.usb_mixer_elem_info* %29, %struct.usb_mixer_elem_info** %21, align 8
  %30 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %31 = icmp ne %struct.usb_mixer_elem_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %9
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %103

35:                                               ; preds = %9
  %36 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %11, align 8
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.usb_mixer_interface* %36, %struct.usb_mixer_interface** %39, align 8
  %40 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %44 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %53 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %56 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %59 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %61 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %62 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %60, %struct.usb_mixer_elem_info* %61)
  store %struct.snd_kcontrol* %62, %struct.snd_kcontrol** %20, align 8
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %20, align 8
  %64 = icmp ne %struct.snd_kcontrol* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %35
  %66 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %67 = call i32 @kfree(%struct.usb_mixer_elem_info* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %103

70:                                               ; preds = %35
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @elem_private_free, align 4
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %20, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %79 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %20, align 8
  %80 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %20, align 8
  %83 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @strlcpy(i32 %85, i8* %86, i32 4)
  %88 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %89 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %88, i32 0, i32 2
  %90 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %20, align 8
  %91 = call i32 @snd_usb_mixer_add_control(%struct.TYPE_4__* %89, %struct.snd_kcontrol* %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %10, align 4
  br label %103

96:                                               ; preds = %81
  %97 = load %struct.usb_mixer_elem_info**, %struct.usb_mixer_elem_info*** %19, align 8
  %98 = icmp ne %struct.usb_mixer_elem_info** %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %21, align 8
  %101 = load %struct.usb_mixer_elem_info**, %struct.usb_mixer_elem_info*** %19, align 8
  store %struct.usb_mixer_elem_info* %100, %struct.usb_mixer_elem_info** %101, align 8
  br label %102

102:                                              ; preds = %99, %96
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %102, %94, %65, %32
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @usb_audio_dbg(i32, i8*, i8*) #1

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
