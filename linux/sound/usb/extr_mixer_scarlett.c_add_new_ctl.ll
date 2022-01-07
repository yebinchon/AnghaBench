; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_add_new_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_add_new_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.scarlett_mixer_elem_enum_info = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.usb_mixer_interface* }
%struct.snd_kcontrol = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol_new*, i32, i32, i32, i32, i32, i32, i8*, %struct.scarlett_mixer_elem_enum_info*, %struct.usb_mixer_elem_info**)* @add_new_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_ctl(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol_new* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, %struct.scarlett_mixer_elem_enum_info* %9, %struct.usb_mixer_elem_info** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_mixer_interface*, align 8
  %14 = alloca %struct.snd_kcontrol_new*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.scarlett_mixer_elem_enum_info*, align 8
  %23 = alloca %struct.usb_mixer_elem_info**, align 8
  %24 = alloca %struct.snd_kcontrol*, align 8
  %25 = alloca %struct.usb_mixer_elem_info*, align 8
  %26 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %13, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store %struct.scarlett_mixer_elem_enum_info* %9, %struct.scarlett_mixer_elem_enum_info** %22, align 8
  store %struct.usb_mixer_elem_info** %10, %struct.usb_mixer_elem_info*** %23, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.usb_mixer_elem_info* @kzalloc(i32 40, i32 %27)
  store %struct.usb_mixer_elem_info* %28, %struct.usb_mixer_elem_info** %25, align 8
  %29 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %30 = icmp ne %struct.usb_mixer_elem_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %11
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %98

34:                                               ; preds = %11
  %35 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %13, align 8
  %36 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %37 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store %struct.usb_mixer_interface* %35, %struct.usb_mixer_interface** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %48 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %51 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %55 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %58 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.scarlett_mixer_elem_enum_info*, %struct.scarlett_mixer_elem_enum_info** %22, align 8
  %60 = bitcast %struct.scarlett_mixer_elem_enum_info* %59 to i8*
  %61 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %62 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %14, align 8
  %64 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %65 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %63, %struct.usb_mixer_elem_info* %64)
  store %struct.snd_kcontrol* %65, %struct.snd_kcontrol** %24, align 8
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %24, align 8
  %67 = icmp ne %struct.snd_kcontrol* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %34
  %69 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %70 = call i32 @kfree(%struct.usb_mixer_elem_info* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %98

73:                                               ; preds = %34
  %74 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %24, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %24, align 8
  %78 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %21, align 8
  %82 = call i32 @strlcpy(i32 %80, i8* %81, i32 4)
  %83 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %84 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %83, i32 0, i32 4
  %85 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %24, align 8
  %86 = call i32 @snd_usb_mixer_add_control(%struct.TYPE_4__* %84, %struct.snd_kcontrol* %85)
  store i32 %86, i32* %26, align 4
  %87 = load i32, i32* %26, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %26, align 4
  store i32 %90, i32* %12, align 4
  br label %98

91:                                               ; preds = %73
  %92 = load %struct.usb_mixer_elem_info**, %struct.usb_mixer_elem_info*** %23, align 8
  %93 = icmp ne %struct.usb_mixer_elem_info** %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %25, align 8
  %96 = load %struct.usb_mixer_elem_info**, %struct.usb_mixer_elem_info*** %23, align 8
  store %struct.usb_mixer_elem_info* %95, %struct.usb_mixer_elem_info** %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %89, %68, %31
  %99 = load i32, i32* %12, align 4
  ret i32 %99
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
