; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_add_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_list = type { i64, %struct.usb_mixer_elem_list*, %struct.snd_kcontrol*, %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.usb_mixer_elem_list**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"cannot add control (err = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_mixer_add_control(%struct.usb_mixer_elem_list* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_elem_list*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_mixer_elem_list* %0, %struct.usb_mixer_elem_list** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  %8 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %8, i32 0, i32 3
  %10 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %9, align 8
  store %struct.usb_mixer_interface* %10, %struct.usb_mixer_interface** %6, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = call i64 @snd_ctl_find_id(i32 %16, %struct.TYPE_4__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %34 = call i32 @snd_ctl_add(i32 %32, %struct.snd_kcontrol* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %39 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @usb_audio_dbg(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %27
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %46 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %46, i32 0, i32 2
  store %struct.snd_kcontrol* %45, %struct.snd_kcontrol** %47, align 8
  %48 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %48, i32 0, i32 0
  %50 = load %struct.usb_mixer_elem_list**, %struct.usb_mixer_elem_list*** %49, align 8
  %51 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %52 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %50, i64 %53
  %55 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %54, align 8
  %56 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %57 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %56, i32 0, i32 1
  store %struct.usb_mixer_elem_list* %55, %struct.usb_mixer_elem_list** %57, align 8
  %58 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %59 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %60 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %59, i32 0, i32 0
  %61 = load %struct.usb_mixer_elem_list**, %struct.usb_mixer_elem_list*** %60, align 8
  %62 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %63 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %61, i64 %64
  store %struct.usb_mixer_elem_list* %58, %struct.usb_mixer_elem_list** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %44, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @snd_ctl_find_id(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @usb_audio_dbg(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
