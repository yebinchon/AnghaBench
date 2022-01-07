; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_get_ch_alloc_table_idx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_get_ch_alloc_table_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_cea_spk_alloc = type { i64, i8, i64 }
%struct.hdmi_codec_priv = type { i32 }

@hdmi_codec_channel_alloc = common dso_local global %struct.hdmi_codec_cea_spk_alloc* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_codec_priv*, i8)* @hdmi_codec_get_ch_alloc_table_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_codec_get_ch_alloc_table_idx(%struct.hdmi_codec_priv* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_codec_priv*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hdmi_codec_cea_spk_alloc*, align 8
  store %struct.hdmi_codec_priv* %0, %struct.hdmi_codec_priv** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** @hdmi_codec_channel_alloc, align 8
  store %struct.hdmi_codec_cea_spk_alloc* %10, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %11 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @drm_eld_get_spk_alloc(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @hdmi_codec_spk_mask_from_alloc(i32 %15)
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** @hdmi_codec_channel_alloc, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.hdmi_codec_cea_spk_alloc* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %27 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, %struct.hdmi_codec_cea_spk_alloc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %25, %22
  %33 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %34 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, %struct.hdmi_codec_cea_spk_alloc* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %54

41:                                               ; preds = %32
  %42 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %43 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, %struct.hdmi_codec_cea_spk_alloc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %47 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, %struct.hdmi_codec_cea_spk_alloc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %45, %48
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load %struct.hdmi_codec_cea_spk_alloc*, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  %58 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, %struct.hdmi_codec_cea_spk_alloc* %57, i32 1
  store %struct.hdmi_codec_cea_spk_alloc* %58, %struct.hdmi_codec_cea_spk_alloc** %9, align 8
  br label %17

59:                                               ; preds = %17
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %52, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @drm_eld_get_spk_alloc(i32) #1

declare dso_local i64 @hdmi_codec_spk_mask_from_alloc(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hdmi_codec_cea_spk_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
