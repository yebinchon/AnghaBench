; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32, i32* }
%struct.nid_path = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ad1988_auto_smux_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_auto_smux_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ad198x_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nid_path*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %24 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %23, i32 11)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %2
  %33 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %34 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %83

39:                                               ; preds = %32
  %40 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %44 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %45 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %48 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %43, i32 %52)
  store %struct.nid_path* %53, %struct.nid_path** %9, align 8
  %54 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %55 = icmp ne %struct.nid_path* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %59 = call i32 @snd_hda_activate_path(%struct.hda_codec* %57, %struct.nid_path* %58, i32 0, i32 1)
  br label %60

60:                                               ; preds = %56, %39
  %61 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %62 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %63 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %61, i32 %68)
  store %struct.nid_path* %69, %struct.nid_path** %9, align 8
  %70 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %71 = icmp ne %struct.nid_path* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %74 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %75 = call i32 @snd_hda_activate_path(%struct.hda_codec* %73, %struct.nid_path* %74, i32 1, i32 1)
  br label %76

76:                                               ; preds = %72, %60
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %79 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %38, %29
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
