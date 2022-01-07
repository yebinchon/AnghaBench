; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_mux_select.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_mux_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32*, i32 (%struct.hda_codec.0*, i32*, i32*)*, i64, i64, %struct.hda_input_mux }
%struct.hda_codec.0 = type opaque
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @mux_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_select(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca %struct.hda_input_mux*, align 8
  %10 = alloca %struct.nid_path*, align 8
  %11 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %8, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 4
  store %struct.hda_input_mux* %16, %struct.hda_input_mux** %9, align 8
  %17 = load %struct.hda_input_mux*, %struct.hda_input_mux** %9, align 8
  %18 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hda_input_mux*, %struct.hda_input_mux** %9, align 8
  %25 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.hda_input_mux*, %struct.hda_input_mux** %9, align 8
  %30 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %125

44:                                               ; preds = %33
  %45 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %45, i32 %46, i32 %53)
  store %struct.nid_path* %54, %struct.nid_path** %10, align 8
  %55 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %56 = icmp ne %struct.nid_path* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %125

58:                                               ; preds = %44
  %59 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %60 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %65 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %66 = call i32 @snd_hda_activate_path(%struct.hda_codec* %64, %struct.nid_path* %65, i32 0, i32 0)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @update_hp_mic(%struct.hda_codec* %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %79, %67
  %84 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %85 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @dyn_adc_pcm_resetup(%struct.hda_codec* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %93, i32 %94, i32 %95)
  store %struct.nid_path* %96, %struct.nid_path** %11, align 8
  %97 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %98 = icmp ne %struct.nid_path* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %125

100:                                              ; preds = %92
  %101 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %102 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %125

106:                                              ; preds = %100
  %107 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %108 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %109 = call i32 @snd_hda_activate_path(%struct.hda_codec* %107, %struct.nid_path* %108, i32 1, i32 0)
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 1
  %112 = load i32 (%struct.hda_codec.0*, i32*, i32*)*, i32 (%struct.hda_codec.0*, i32*, i32*)** %111, align 8
  %113 = icmp ne i32 (%struct.hda_codec.0*, i32*, i32*)* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %116 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %115, i32 0, i32 1
  %117 = load i32 (%struct.hda_codec.0*, i32*, i32*)*, i32 (%struct.hda_codec.0*, i32*, i32*)** %116, align 8
  %118 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %119 = bitcast %struct.hda_codec* %118 to %struct.hda_codec.0*
  %120 = call i32 %117(%struct.hda_codec.0* %119, i32* null, i32* null)
  br label %121

121:                                              ; preds = %114, %106
  %122 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %123 = load %struct.nid_path*, %struct.nid_path** %10, align 8
  %124 = call i32 @path_power_down_sync(%struct.hda_codec* %122, %struct.nid_path* %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %105, %99, %57, %43, %21
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @update_hp_mic(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dyn_adc_pcm_resetup(%struct.hda_codec*, i32) #1

declare dso_local i32 @path_power_down_sync(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
