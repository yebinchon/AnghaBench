; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_cea_alloc_to_tlv_chmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_cea_alloc_to_tlv_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_chmap = type { i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i32* }

@SNDRV_CHMAP_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_chmap*, %struct.hdac_cea_channel_speaker_allocation*, i32*, i32)* @atihdmi_paired_cea_alloc_to_tlv_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atihdmi_paired_cea_alloc_to_tlv_chmap(%struct.hdac_chmap* %0, %struct.hdac_cea_channel_speaker_allocation* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hdac_chmap*, align 8
  %6 = alloca %struct.hdac_cea_channel_speaker_allocation*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdac_chmap* %0, %struct.hdac_chmap** %5, align 8
  store %struct.hdac_cea_channel_speaker_allocation* %1, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %13

13:                                               ; preds = %61, %4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 7, %17
  %19 = call i32 @atihdmi_paired_swap_fc_lfe(i32 %18)
  %20 = sub nsw i32 7, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  %22 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %16
  %31 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  %32 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = srem i32 %35, 2
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -1, i32 1
  %40 = add nsw i32 %34, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %33, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load i32, i32* @SNDRV_CHMAP_NA, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %30
  br label %61

53:                                               ; preds = %16
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @snd_hdac_spk_to_chmap(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %52
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  br label %13

64:                                               ; preds = %13
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  ret void
}

declare dso_local i32 @atihdmi_paired_swap_fc_lfe(i32) #1

declare dso_local i32 @snd_hdac_spk_to_chmap(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
