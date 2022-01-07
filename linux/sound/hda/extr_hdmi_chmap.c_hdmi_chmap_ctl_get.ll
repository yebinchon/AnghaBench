; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_hdmi_chmap_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_hdmi_chmap_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.snd_pcm_chmap = type { %struct.hdac_chmap* }
%struct.hdac_chmap = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hdmi_chmap_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_chmap_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca %struct.hdac_chmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pcm_chmap* %11, %struct.snd_pcm_chmap** %5, align 8
  %12 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %12, i32 0, i32 0
  %14 = load %struct.hdac_chmap*, %struct.hdac_chmap** %13, align 8
  store %struct.hdac_chmap* %14, %struct.hdac_chmap** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 8)
  %20 = load %struct.hdac_chmap*, %struct.hdac_chmap** %6, align 8
  %21 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %22, align 8
  %24 = load %struct.hdac_chmap*, %struct.hdac_chmap** %6, align 8
  %25 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %29 = call i32 %23(i32 %26, i32 %27, i8* %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %48, %2
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i8* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %39, i8* %47, align 1
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %30

51:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
