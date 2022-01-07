; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_restore_mixer_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_restore_mixer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i64*, i32, %struct.snd_kcontrol**, i64 }
%struct.snd_kcontrol = type { i32, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, %struct.TYPE_4__* }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.snd_ctl_elem_value.1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CM_SAVED_MIXERS = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*)* @restore_mixer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_mixer_state(%struct.cmipci* %0) #0 {
  %2 = alloca %struct.cmipci*, align 8
  %3 = alloca %struct.snd_ctl_elem_value.1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %2, align 8
  %7 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %8 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %108

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.snd_ctl_elem_value.1* @kmalloc(i32 8, i32 %12)
  store %struct.snd_ctl_elem_value.1* %13, %struct.snd_ctl_elem_value.1** %3, align 8
  %14 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %15 = icmp ne %struct.snd_ctl_elem_value.1* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %108

17:                                               ; preds = %11
  %18 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %19 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %102, %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CM_SAVED_MIXERS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %26 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %25, i32 0, i32 2
  %27 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %27, i64 %29
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %30, align 8
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %5, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %33 = icmp ne %struct.snd_kcontrol* %32, null
  br i1 %33, label %34, label %101

34:                                               ; preds = %24
  %35 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %36 = call i32 @memset(%struct.snd_ctl_elem_value.1* %35, i32 0, i32 8)
  %37 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %38
  store i32 %45, i32* %43, align 4
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %47 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %46, i32 0, i32 2
  %48 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %47, align 8
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %50 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %51 = bitcast %struct.snd_ctl_elem_value.1* %50 to %struct.snd_ctl_elem_value.0*
  %52 = call i32 %48(%struct.snd_kcontrol* %49, %struct.snd_ctl_elem_value.0* %51)
  %53 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %62 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %60, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %34
  %70 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %71 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 %76, i64* %82, align 8
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %84 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %83, i32 0, i32 1
  %85 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %84, align 8
  %86 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %87 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %88 = bitcast %struct.snd_ctl_elem_value.1* %87 to %struct.snd_ctl_elem_value*
  %89 = call i32 %85(%struct.snd_kcontrol* %86, %struct.snd_ctl_elem_value* %88)
  %90 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %69, %34
  %94 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %95 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %99 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %98, i32 0, i32 0
  %100 = call i32 @snd_ctl_notify(i32 %96, i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %93, %24
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %20

105:                                              ; preds = %20
  %106 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %3, align 8
  %107 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %106)
  br label %108

108:                                              ; preds = %16, %105, %1
  ret void
}

declare dso_local %struct.snd_ctl_elem_value.1* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_value.1*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
