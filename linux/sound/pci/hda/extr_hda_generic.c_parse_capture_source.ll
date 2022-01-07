; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_capture_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_capture_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64*, i64, i32, i32*, i64, i64*, i32**, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i32, i32, i8*, i32)* @parse_capture_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_capture_source(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_gen_spec*, align 8
  %14 = alloca %struct.hda_input_mux*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nid_path*, align 8
  %19 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %21, align 8
  store %struct.hda_gen_spec* %22, %struct.hda_gen_spec** %13, align 8
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 7
  store %struct.hda_input_mux* %24, %struct.hda_input_mux** %14, align 8
  %25 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %26 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %115, %6
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %118

32:                                               ; preds = %28
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %19, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i32 @is_reachable_path(%struct.hda_codec* %40, i64 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %115

46:                                               ; preds = %32
  %47 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %47, i64 %48, i64 %49, i32 %50)
  store %struct.nid_path* %51, %struct.nid_path** %18, align 8
  %52 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %53 = icmp ne %struct.nid_path* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %115

55:                                               ; preds = %46
  %56 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %57 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %58 = call i32 @print_nid_path(%struct.hda_codec* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.nid_path* %57)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %60 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %61 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %59, %struct.nid_path* %60)
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 6
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %61, i32* %71, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %55
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %82 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %85 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %89 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %88, i32 0, i32 5
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %92 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %90, i64 %94
  store i64 %87, i64* %95, align 8
  %96 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %97 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @snd_hda_add_imux_item(%struct.hda_codec* %96, %struct.hda_input_mux* %97, i8* %98, i32 %99, i32* null)
  store i32 1, i32* %16, align 4
  %101 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %102 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %86
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %108 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %86
  br label %114

114:                                              ; preds = %113, %55
  br label %115

115:                                              ; preds = %114, %54, %45
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %28

118:                                              ; preds = %28
  ret i32 0
}

declare dso_local i32 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @print_nid_path(%struct.hda_codec*, i8*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_add_imux_item(%struct.hda_codec*, %struct.hda_input_mux*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
