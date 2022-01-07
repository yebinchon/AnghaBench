; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_map_singles.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_map_singles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i64*, i64*, i32*)* @map_singles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_singles(%struct.hda_codec* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hda_gen_spec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nid_path*, align 8
  %15 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %17, align 8
  store %struct.hda_gen_spec* %18, %struct.hda_gen_spec** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %93, %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %19
  %24 = load i64*, i64** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %93

31:                                               ; preds = %23
  %32 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @get_dac_if_single(%struct.hda_codec* %32, i64 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %93

42:                                               ; preds = %31
  %43 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %43, i64 %44, i64 %49, i32 %53)
  store %struct.nid_path* %54, %struct.nid_path** %14, align 8
  %55 = load %struct.nid_path*, %struct.nid_path** %14, align 8
  %56 = icmp ne %struct.nid_path* %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %66, i64 %67, i64 %72, i32 0)
  store %struct.nid_path* %73, %struct.nid_path** %14, align 8
  br label %74

74:                                               ; preds = %65, %60, %57, %42
  %75 = load %struct.nid_path*, %struct.nid_path** %14, align 8
  %76 = icmp ne %struct.nid_path* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* %15, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %78, i64* %82, align 8
  store i32 1, i32* %13, align 4
  %83 = load %struct.nid_path*, %struct.nid_path** %14, align 8
  %84 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = load %struct.nid_path*, %struct.nid_path** %14, align 8
  %87 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %85, %struct.nid_path* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %74
  br label %93

93:                                               ; preds = %92, %41, %30
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %19

96:                                               ; preds = %19
  %97 = load i32, i32* %13, align 4
  ret i32 %97
}

declare dso_local i64 @get_dac_if_single(%struct.hda_codec*, i64) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
