; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_chmap_cea_alloc_validate_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_chmap_cea_alloc_validate_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_chmap = type { i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i64* }

@SNDRV_CTL_TLVT_CHMAP_PAIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_chmap*, %struct.hdac_cea_channel_speaker_allocation*, i32)* @atihdmi_paired_chmap_cea_alloc_validate_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atihdmi_paired_chmap_cea_alloc_validate_get_type(%struct.hdac_chmap* %0, %struct.hdac_cea_channel_speaker_allocation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_chmap*, align 8
  %6 = alloca %struct.hdac_cea_channel_speaker_allocation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdac_chmap* %0, %struct.hdac_chmap** %5, align 8
  store %struct.hdac_cea_channel_speaker_allocation* %1, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = srem i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  %20 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %6, align 8
  %29 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %18
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %8, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 2
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @SNDRV_CTL_TLVT_CHMAP_PAIRED, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %49, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
