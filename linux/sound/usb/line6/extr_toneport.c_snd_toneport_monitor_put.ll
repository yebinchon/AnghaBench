; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_snd_toneport_monitor_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_snd_toneport_monitor_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_line6_pcm = type { i64 }

@LINE6_STREAM_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_toneport_monitor_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_toneport_monitor_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.snd_line6_pcm* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_line6_pcm* %9, %struct.snd_line6_pcm** %6, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %31 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %22
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %38 = load i32, i32* @LINE6_STREAM_MONITOR, align 4
  %39 = call i32 @line6_pcm_acquire(%struct.snd_line6_pcm* %37, i32 %38, i32 1)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %44 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %46 = load i32, i32* @LINE6_STREAM_MONITOR, align 4
  %47 = call i32 @line6_pcm_release(%struct.snd_line6_pcm* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %36
  br label %54

50:                                               ; preds = %22
  %51 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %52 = load i32, i32* @LINE6_STREAM_MONITOR, align 4
  %53 = call i32 @line6_pcm_release(%struct.snd_line6_pcm* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %42, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.snd_line6_pcm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @line6_pcm_acquire(%struct.snd_line6_pcm*, i32, i32) #1

declare dso_local i32 @line6_pcm_release(%struct.snd_line6_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
