; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_fw_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_fw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.soc_enum = type { i64 }
%struct.wm_adsp = type { i64, i32, i32, i64 }

@WM_ADSP_NUM_FW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_fw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca %struct.wm_adsp*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_enum*
  store %struct.soc_enum* %15, %struct.soc_enum** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm_adsp* %17, %struct.wm_adsp** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %26 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %27 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i64 %28
  %30 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

34:                                               ; preds = %2
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WM_ADSP_NUM_FW, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %34
  %48 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %49 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %50 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %48, i64 %51
  %53 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %56 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %57 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %55, i64 %58
  %60 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %47
  %64 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %65 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %66 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %64, i64 %67
  %69 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %68, i32 0, i32 2
  %70 = call i32 @list_empty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %63, %47
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %89

75:                                               ; preds = %63
  %76 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %77 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %84 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %85 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %83, i64 %86
  %88 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %87, i32 0, i32 0
  store i64 %82, i64* %88, align 8
  br label %89

89:                                               ; preds = %75, %72
  %90 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %91 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %92 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %90, i64 %93
  %95 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %44, %33
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
