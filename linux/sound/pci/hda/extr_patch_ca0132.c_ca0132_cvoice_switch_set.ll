; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_cvoice_switch_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_cvoice_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i32* }

@.str = private unnamed_addr constant [35 x i8] c"ca0132_cvoice_switch_set: val=%ld\0A\00", align 1
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@IN_EFFECT_START_NID = common dso_local global i64 0, align 8
@IN_EFFECT_END_NID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_cvoice_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_cvoice_switch_set(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @CRYSTAL_VOICE, align 8
  %16 = load i64, i64* @EFFECT_START_NID, align 8
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @codec_dbg(%struct.hda_codec* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @IN_EFFECT_START_NID, align 8
  %22 = load i64, i64* @EFFECT_START_NID, align 8
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* @IN_EFFECT_START_NID, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @IN_EFFECT_END_NID, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %34 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ca0132_effects_set(%struct.hda_codec* %31, i64 %32, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %51 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = call i32 @ca0132_voicefx_set(%struct.hda_codec* %49, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = call i32 @stop_mic1(%struct.hda_codec* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %62 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = call i32 @ca0132_alt_set_vipsource(%struct.hda_codec* %65, i32 1)
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %74

69:                                               ; preds = %48
  %70 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %71 = call i32 @ca0132_set_vipsource(%struct.hda_codec* %70, i32 1)
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @resume_mic1(%struct.hda_codec* %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @ca0132_effects_set(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @ca0132_voicefx_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @stop_mic1(%struct.hda_codec*) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0132_alt_set_vipsource(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_set_vipsource(%struct.hda_codec*, i32) #1

declare dso_local i32 @resume_mic1(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
