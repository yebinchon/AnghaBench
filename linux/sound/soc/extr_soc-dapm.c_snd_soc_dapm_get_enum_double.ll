; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_enum_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.soc_enum = type { i64, i32, i32, i32 }

@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_NOPM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_get_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %6, align 8
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %15, align 8
  store %struct.snd_soc_card* %16, %struct.snd_soc_card** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_enum*
  store %struct.soc_enum* %20, %struct.soc_enum** %8, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 0
  %23 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %24 = call i32 @mutex_lock_nested(i32* %22, i32 %23)
  %25 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %26 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SND_SOC_NOPM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %32 = call i64 @dapm_kcontrol_is_powered(%struct.snd_kcontrol* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %36 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %37 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @soc_dapm_read(%struct.snd_soc_dapm_context* %35, i64 %38, i32* %9)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %34
  br label %51

48:                                               ; preds = %30, %2
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %50 = call i32 @dapm_kcontrol_get_value(%struct.snd_kcontrol* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %57 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = lshr i32 %55, %58
  %60 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %61 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @snd_soc_enum_val_to_item(%struct.soc_enum* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %69 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %67, i32* %73, align 4
  %74 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %75 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %78 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %51
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %84 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = lshr i32 %82, %85
  %87 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %88 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %86, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @snd_soc_enum_val_to_item(%struct.soc_enum* %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %97 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %81, %51
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %42
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @dapm_kcontrol_is_powered(%struct.snd_kcontrol*) #1

declare dso_local i32 @soc_dapm_read(%struct.snd_soc_dapm_context*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dapm_kcontrol_get_value(%struct.snd_kcontrol*) #1

declare dso_local i8* @snd_soc_enum_val_to_item(%struct.soc_enum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
