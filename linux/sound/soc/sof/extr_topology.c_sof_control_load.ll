; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_control_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_control_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_kcontrol_new = type { i64 }
%struct.snd_soc_tplg_ctl_hdr = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.soc_mixer_control = type { %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { i32, %struct.snd_sof_dev* }
%struct.snd_sof_dev = type { i32, i32 }
%struct.soc_bytes_ext = type { %struct.snd_soc_dobj }
%struct.soc_enum = type { %struct.snd_soc_dobj }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"tplg: load control type %d name : %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"control type not supported %d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*)* @sof_control_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_control_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_kcontrol_new* %2, %struct.snd_soc_tplg_ctl_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  %9 = alloca %struct.snd_soc_tplg_ctl_hdr*, align 8
  %10 = alloca %struct.soc_mixer_control*, align 8
  %11 = alloca %struct.soc_bytes_ext*, align 8
  %12 = alloca %struct.soc_enum*, align 8
  %13 = alloca %struct.snd_sof_dev*, align 8
  %14 = alloca %struct.snd_soc_dobj*, align 8
  %15 = alloca %struct.snd_sof_control*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.snd_kcontrol_new* %2, %struct.snd_kcontrol_new** %8, align 8
  store %struct.snd_soc_tplg_ctl_hdr* %3, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.snd_sof_dev* %18, %struct.snd_sof_dev** %13, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %13, align 8
  %22 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.snd_sof_control* @kzalloc(i32 16, i32 %31)
  store %struct.snd_sof_control* %32, %struct.snd_sof_control** %15, align 8
  %33 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %34 = icmp ne %struct.snd_sof_control* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %113

38:                                               ; preds = %4
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %13, align 8
  %40 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %41 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %40, i32 0, i32 1
  store %struct.snd_sof_dev* %39, %struct.snd_sof_dev** %41, align 8
  %42 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  switch i32 %46, label %84 [
    i32 135, label %47
    i32 134, label %47
    i32 133, label %47
    i32 140, label %59
    i32 139, label %71
    i32 138, label %71
    i32 137, label %83
    i32 136, label %83
    i32 128, label %83
    i32 132, label %83
    i32 130, label %83
    i32 131, label %83
    i32 129, label %83
  ]

47:                                               ; preds = %38, %38, %38
  %48 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %51, %struct.soc_mixer_control** %10, align 8
  %52 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %10, align 8
  %53 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %52, i32 0, i32 0
  store %struct.snd_soc_dobj* %53, %struct.snd_soc_dobj** %14, align 8
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %55 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %56 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %57 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %58 = call i32 @sof_control_load_volume(%struct.snd_soc_component* %54, %struct.snd_sof_control* %55, %struct.snd_kcontrol_new* %56, %struct.snd_soc_tplg_ctl_hdr* %57)
  store i32 %58, i32* %16, align 4
  br label %103

59:                                               ; preds = %38
  %60 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %63, %struct.soc_bytes_ext** %11, align 8
  %64 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %11, align 8
  %65 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %64, i32 0, i32 0
  store %struct.snd_soc_dobj* %65, %struct.snd_soc_dobj** %14, align 8
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %68 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %69 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %70 = call i32 @sof_control_load_bytes(%struct.snd_soc_component* %66, %struct.snd_sof_control* %67, %struct.snd_kcontrol_new* %68, %struct.snd_soc_tplg_ctl_hdr* %69)
  store i32 %70, i32* %16, align 4
  br label %103

71:                                               ; preds = %38, %38
  %72 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.soc_enum*
  store %struct.soc_enum* %75, %struct.soc_enum** %12, align 8
  %76 = load %struct.soc_enum*, %struct.soc_enum** %12, align 8
  %77 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %76, i32 0, i32 0
  store %struct.snd_soc_dobj* %77, %struct.snd_soc_dobj** %14, align 8
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %79 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %80 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %81 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %82 = call i32 @sof_control_load_enum(%struct.snd_soc_component* %78, %struct.snd_sof_control* %79, %struct.snd_kcontrol_new* %80, %struct.snd_soc_tplg_ctl_hdr* %81)
  store i32 %82, i32* %16, align 4
  br label %103

83:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  br label %84

84:                                               ; preds = %38, %83
  %85 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %13, align 8
  %86 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %89 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %93 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %97 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %95, i32 %99)
  %101 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %102 = call i32 @kfree(%struct.snd_sof_control* %101)
  store i32 0, i32* %5, align 4
  br label %113

103:                                              ; preds = %71, %59, %47
  %104 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %105 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %14, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %105, i32 0, i32 0
  store %struct.snd_sof_control* %104, %struct.snd_sof_control** %106, align 8
  %107 = load %struct.snd_sof_control*, %struct.snd_sof_control** %15, align 8
  %108 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %107, i32 0, i32 0
  %109 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %13, align 8
  %110 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %109, i32 0, i32 0
  %111 = call i32 @list_add(i32* %108, i32* %110)
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %103, %84, %35
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.snd_sof_control* @kzalloc(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sof_control_load_volume(%struct.snd_soc_component*, %struct.snd_sof_control*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @sof_control_load_bytes(%struct.snd_soc_component*, %struct.snd_sof_control*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @sof_control_load_enum(%struct.snd_soc_component*, %struct.snd_sof_control*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_sof_control*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
