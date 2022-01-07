; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_usb_chmap_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_usb_chmap_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_pcm_chmap = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_chmap_elem* }
%struct.snd_pcm_chmap_elem = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @usb_chmap_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_chmap_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  %7 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_pcm_chmap* %10, %struct.snd_pcm_chmap** %5, align 8
  %11 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %11, i32 0, i32 0
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %12, align 8
  store %struct.snd_usb_substream* %13, %struct.snd_usb_substream** %6, align 8
  store %struct.snd_pcm_chmap_elem* null, %struct.snd_pcm_chmap_elem** %7, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memset(i32* %18, i32 0, i32 8)
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %26 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %28, align 8
  store %struct.snd_pcm_chmap_elem* %29, %struct.snd_pcm_chmap_elem** %7, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %7, align 8
  %32 = icmp ne %struct.snd_pcm_chmap_elem* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %34

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %30
  ret i32 0
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
