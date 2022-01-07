; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_activate_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_activate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.nid_path = type { i32, i32, i32*, i64*, i32* }

@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_activate_path(%struct.hda_codec* %0, %struct.nid_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.nid_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_gen_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.nid_path* %1, %struct.nid_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %17 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %20
  %31 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %32 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @path_power_update(%struct.hda_codec* %31, %struct.nid_path* %32, i64 %35)
  br label %37

37:                                               ; preds = %30, %25, %4
  %38 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %39 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %102, %37
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %105

45:                                               ; preds = %42
  %46 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %47 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %45
  %56 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %57 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %68 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %69 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %65, i32 %66, i32 0, i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %64, %55, %45
  %77 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %78 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @has_amp_in(%struct.hda_codec* %77, %struct.nid_path* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %84 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @activate_amp_in(%struct.hda_codec* %83, %struct.nid_path* %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %91 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @has_amp_out(%struct.hda_codec* %90, %struct.nid_path* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %97 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @activate_amp_out(%struct.hda_codec* %96, %struct.nid_path* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  br label %42

105:                                              ; preds = %42
  ret void
}

declare dso_local i32 @path_power_update(%struct.hda_codec*, %struct.nid_path*, i64) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @has_amp_in(%struct.hda_codec*, %struct.nid_path*, i32) #1

declare dso_local i32 @activate_amp_in(%struct.hda_codec*, %struct.nid_path*, i32, i32, i32) #1

declare dso_local i64 @has_amp_out(%struct.hda_codec*, %struct.nid_path*, i32) #1

declare dso_local i32 @activate_amp_out(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
