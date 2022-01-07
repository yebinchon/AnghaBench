; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_chmap_validate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_paired_chmap_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_chmap = type { i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_chmap*, i32, i32, i8*)* @atihdmi_paired_chmap_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atihdmi_paired_chmap_validate(%struct.hdac_chmap* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_chmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hdac_cea_channel_speaker_allocation*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hdac_chmap* %0, %struct.hdac_chmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.hdac_cea_channel_speaker_allocation* @snd_hdac_get_ch_alloc_from_ca(i32 %20)
  store %struct.hdac_cea_channel_speaker_allocation* %21, %struct.hdac_cea_channel_speaker_allocation** %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %110, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext %31)
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %110

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = srem i32 %37, 2
  %39 = add nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %94, %36
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @atihdmi_paired_swap_fc_lfe(i32 %44)
  %46 = sub nsw i32 7, %45
  store i32 %46, i32* %16, align 4
  %47 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %10, align 8
  %48 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = srem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @atihdmi_paired_swap_fc_lfe(i32 %67)
  %69 = sub nsw i32 7, %68
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext %75)
  store i32 %76, i32* %18, align 4
  %77 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %10, align 8
  %78 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  br label %91

88:                                               ; preds = %65
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %114

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %60, %56
  br label %97

93:                                               ; preds = %43
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %12, align 4
  br label %40

97:                                               ; preds = %92, %40
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %114

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %35
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %22

113:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %100, %88
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.hdac_cea_channel_speaker_allocation* @snd_hdac_get_ch_alloc_from_ca(i32) #1

declare dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext) #1

declare dso_local i32 @atihdmi_paired_swap_fc_lfe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
