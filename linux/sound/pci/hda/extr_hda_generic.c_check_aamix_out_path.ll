; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_aamix_out_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_aamix_out_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.nid_path = type { i32, i64*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @check_aamix_out_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_aamix_out_path(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.nid_path*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %6, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %14, i32 %15)
  store %struct.nid_path* %16, %struct.nid_path** %7, align 8
  %17 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %18 = icmp ne %struct.nid_path* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %21 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %26 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %27 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @is_nid_contained(%struct.nid_path* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %19, %2
  store i32 0, i32* %3, align 4
  br label %125

32:                                               ; preds = %24
  %33 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %34 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %44 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %47 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %57 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %53, i64 %54, i64 %55, i32 %58)
  store %struct.nid_path* %59, %struct.nid_path** %7, align 8
  %60 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %61 = icmp ne %struct.nid_path* %60, null
  br i1 %61, label %113, label %62

62:                                               ; preds = %32
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %9, align 8
  br label %101

68:                                               ; preds = %62
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  br label %100

83:                                               ; preds = %68
  %84 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %85 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %93 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  br label %99

98:                                               ; preds = %83
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %109 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %105, i64 %106, i64 %107, i32 %110)
  store %struct.nid_path* %111, %struct.nid_path** %7, align 8
  br label %112

112:                                              ; preds = %104, %101
  br label %113

113:                                              ; preds = %112, %32
  %114 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %115 = icmp ne %struct.nid_path* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %125

117:                                              ; preds = %113
  %118 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %119 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  %120 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %121 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  %122 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %123 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %124 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %122, %struct.nid_path* %123)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %116, %31
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i64 @is_nid_contained(%struct.nid_path*, i32) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
