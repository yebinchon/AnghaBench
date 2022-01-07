; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_control.c_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_control.c_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.caiaq_controller = type { i32, i32 }
%struct.snd_usb_caiaqdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_kcontrol = type { i32 }

@kcontrol_template = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caiaq_controller*, i32, %struct.snd_usb_caiaqdev*)* @add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_controls(%struct.caiaq_controller* %0, i32 %1, %struct.snd_usb_caiaqdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.caiaq_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_caiaqdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_kcontrol*, align 8
  store %struct.caiaq_controller* %0, %struct.caiaq_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_usb_caiaqdev* %2, %struct.snd_usb_caiaqdev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %35, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.caiaq_controller*, %struct.caiaq_controller** %5, align 8
  %17 = getelementptr inbounds %struct.caiaq_controller, %struct.caiaq_controller* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kcontrol_template, i32 0, i32 1), align 4
  %19 = load %struct.caiaq_controller*, %struct.caiaq_controller** %5, align 8
  %20 = getelementptr inbounds %struct.caiaq_controller, %struct.caiaq_controller* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kcontrol_template, i32 0, i32 0), align 4
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %23 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_5__* @kcontrol_template, %struct.snd_usb_caiaqdev* %22)
  store %struct.snd_kcontrol* %23, %struct.snd_kcontrol** %10, align 8
  %24 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %25 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %29 = call i32 @snd_ctl_add(i32 %27, %struct.snd_kcontrol* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load %struct.caiaq_controller*, %struct.caiaq_controller** %5, align 8
  %39 = getelementptr inbounds %struct.caiaq_controller, %struct.caiaq_controller* %38, i32 1
  store %struct.caiaq_controller* %39, %struct.caiaq_controller** %5, align 8
  br label %11

40:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_5__*, %struct.snd_usb_caiaqdev*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
