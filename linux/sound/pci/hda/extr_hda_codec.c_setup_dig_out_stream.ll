; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_setup_dig_out_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_setup_dig_out_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64*, i64 }
%struct.hda_spdif_out = type { i32 }

@AC_VERB_GET_STREAM_FORMAT = common dso_local global i32 0, align 4
@AC_DIG1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64, i32, i32)* @setup_dig_out_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_dig_out_stream(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_spdif_out*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec* %13, i64 %14)
  store %struct.hda_spdif_out* %15, %struct.hda_spdif_out** %9, align 8
  %16 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %17 = icmp eq %struct.hda_spdif_out* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %98

22:                                               ; preds = %4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @AC_VERB_GET_STREAM_FORMAT, align 4
  %26 = call i32 @snd_hda_codec_read(%struct.hda_codec* %23, i64 %24, i32 0, i32 %25, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %33 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br label %42

42:                                               ; preds = %38, %31, %22
  %43 = phi i1 [ false, %31 ], [ false, %22 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %51 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = and i32 %55, 255
  %57 = call i32 @set_dig_out_convert(%struct.hda_codec* %48, i64 %49, i32 %56, i32 -1)
  br label %58

58:                                               ; preds = %47, %42
  %59 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %59, i64 %60, i32 %61, i32 0, i32 %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %65 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  store i64* %71, i64** %12, align 8
  br label %72

72:                                               ; preds = %83, %68
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %77, i64 %79, i32 %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %12, align 8
  br label %72

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %94 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 255
  %97 = call i32 @set_dig_out_convert(%struct.hda_codec* %91, i64 %92, i32 %96, i32 -1)
  br label %98

98:                                               ; preds = %21, %90, %87
  ret void
}

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @set_dig_out_convert(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
