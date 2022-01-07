; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_impulse_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_impulse_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_line6_pcm = type { i32 }

@LINE6_STREAM_IMPULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_line6_impulse_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_impulse_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_line6_pcm* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_line6_pcm* %10, %struct.snd_line6_pcm** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %19 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %32 = load i32, i32* @LINE6_STREAM_IMPULSE, align 4
  %33 = call i32 @line6_pcm_acquire(%struct.snd_line6_pcm* %31, i32 %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %43 = load i32, i32* @LINE6_STREAM_IMPULSE, align 4
  %44 = call i32 @line6_pcm_release(%struct.snd_line6_pcm* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %40
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
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
