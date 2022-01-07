; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_cap_put_caller.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_cap_put_caller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, %struct.hda_input_mux }
%struct.hda_codec.0 = type opaque
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32)* @cap_put_caller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_put_caller(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_value*, align 8
  %7 = alloca i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec*, align 8
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.hda_input_mux*, align 8
  %12 = alloca %struct.nid_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %6, align 8
  store i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %2, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %17 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.hda_codec* %17, %struct.hda_codec** %9, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 1
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %19, align 8
  store %struct.hda_gen_spec* %20, %struct.hda_gen_spec** %10, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 1
  store %struct.hda_input_mux* %22, %struct.hda_input_mux** %11, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %71, %4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.hda_input_mux*, %struct.hda_input_mux** %11, align 8
  %33 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %37, i32 %38, i32 %39)
  store %struct.nid_path* %40, %struct.nid_path** %12, align 8
  %41 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %42 = icmp ne %struct.nid_path* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %45 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43, %36
  br label %71

53:                                               ; preds = %43
  %54 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %55 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %62 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %7, align 8
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %66 = call i32 %63(%struct.snd_kcontrol* %64, %struct.snd_ctl_elem_value* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %74

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %30

74:                                               ; preds = %69, %30
  %75 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %76 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %15, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %82 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %81, i32 0, i32 0
  %83 = load i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %82, align 8
  %84 = icmp ne i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %87 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %86, i32 0, i32 0
  %88 = load i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %87, align 8
  %89 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %90 = bitcast %struct.hda_codec* %89 to %struct.hda_codec.0*
  %91 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %92 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %93 = call i32 %88(%struct.hda_codec.0* %90, %struct.snd_kcontrol* %91, %struct.snd_ctl_elem_value* %92)
  br label %94

94:                                               ; preds = %85, %80, %74
  %95 = load i32, i32* %15, align 4
  ret i32 %95
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
