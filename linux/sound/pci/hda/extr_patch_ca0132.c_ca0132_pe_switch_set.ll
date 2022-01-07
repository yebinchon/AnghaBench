; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_pe_switch_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_pe_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"ca0132_pe_switch_set: val=%ld\0A\00", align 1
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@OUT_EFFECT_START_NID = common dso_local global i64 0, align 8
@OUT_EFFECT_END_NID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_pe_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_pe_switch_set(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  store %struct.ca0132_spec* %9, %struct.ca0132_spec** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %15 = load i64, i64* @EFFECT_START_NID, align 8
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @codec_dbg(%struct.hda_codec* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %21 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @ca0132_alt_select_out(%struct.hda_codec* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i64, i64* @OUT_EFFECT_START_NID, align 8
  %28 = load i64, i64* @EFFECT_START_NID, align 8
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* @OUT_EFFECT_START_NID, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %49, %26
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @OUT_EFFECT_END_NID, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %40 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ca0132_effects_set(%struct.hda_codec* %37, i64 %38, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_effects_set(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
