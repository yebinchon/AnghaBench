; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_snd_toneport_source_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_snd_toneport_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.snd_line6_pcm = type { i32 }
%struct.usb_line6_toneport = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@toneport_source_info = common dso_local global %struct.TYPE_9__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_toneport_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_toneport_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca %struct.usb_line6_toneport*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_line6_pcm* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_line6_pcm* %10, %struct.snd_line6_pcm** %6, align 8
  %11 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %12 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.usb_line6_toneport* @line6_to_toneport(i32 %13)
  store %struct.usb_line6_toneport* %14, %struct.usb_line6_toneport** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @toneport_source_info, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %23)
  %25 = icmp uge i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %32 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %51

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %39 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %41 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @toneport_source_info, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @toneport_send_cmd(i32 %43, i32 %49, i32 0)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %35, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.snd_line6_pcm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.usb_line6_toneport* @line6_to_toneport(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @toneport_send_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
