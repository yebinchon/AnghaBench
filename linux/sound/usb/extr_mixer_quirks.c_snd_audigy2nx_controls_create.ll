; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_controls_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_controls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32, i32 }
%struct.usb_mixer_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@snd_audigy2nx_led_names = common dso_local global i32* null, align 8
@snd_audigy2nx_control = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_audigy2nx_led_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_audigy2nx_controls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy2nx_controls_create(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %91, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @snd_audigy2nx_led_names, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %94

12:                                               ; preds = %7
  %13 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @USB_ID(i32 1054, i32 12354)
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %91

24:                                               ; preds = %20, %12
  %25 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %26 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @USB_ID(i32 1054, i32 12511)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %91

36:                                               ; preds = %32, %24
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @USB_ID(i32 1054, i32 12352)
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %71, label %47

47:                                               ; preds = %39
  %48 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @USB_ID(i32 1054, i32 12354)
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %47
  %56 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %57 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @USB_ID(i32 1054, i32 12511)
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %65 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @USB_ID(i32 1054, i32 12360)
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %55, %47, %39
  br label %94

72:                                               ; preds = %63, %36
  %73 = bitcast %struct.snd_kcontrol_new* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast (%struct.snd_kcontrol_new* @snd_audigy2nx_control to i8*), i64 8, i1 false)
  %74 = load i32*, i32** @snd_audigy2nx_led_names, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 256, %80
  %82 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %84 = load i32, i32* @snd_audigy2nx_led_resume, align 4
  %85 = call i32 @add_single_ctl_with_resume(%struct.usb_mixer_interface* %83, i32 0, i32 %84, %struct.snd_kcontrol_new* %6, i32* null)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %95

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %35, %23
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %7

94:                                               ; preds = %71, %7
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @USB_ID(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_single_ctl_with_resume(%struct.usb_mixer_interface*, i32, i32, %struct.snd_kcontrol_new*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
