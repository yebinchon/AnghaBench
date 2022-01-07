; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_rate_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_rate_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read 0x%x (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Cannot change '%s' while in use by active audio paths\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_rate_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.madera_priv* %15, %struct.madera_priv** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_enum*
  store %struct.soc_enum* %19, %struct.soc_enum** %8, align 8
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %29 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %2
  %36 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %37 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %40 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %41 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %39, i32 %42, i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %48 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %53 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %103

57:                                               ; preds = %35
  %58 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %59 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = lshr i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %64 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %103

74:                                               ; preds = %57
  %75 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %76 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %77 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @madera_can_change_grp_rate(%struct.madera_priv* %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %74
  %82 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %83 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %86, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %102

94:                                               ; preds = %74
  %95 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %96 = call i32 @madera_spin_sysclk(%struct.madera_priv* %95)
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %99 = call i32 @snd_soc_put_enum_double(%struct.snd_kcontrol* %97, %struct.snd_ctl_elem_value* %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %101 = call i32 @madera_spin_sysclk(%struct.madera_priv* %100)
  br label %102

102:                                              ; preds = %94, %81
  br label %103

103:                                              ; preds = %102, %73, %46
  %104 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %105 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %32
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_enum_item_to_val(%struct.soc_enum*, i32) #1

declare dso_local i32 @madera_can_change_grp_rate(%struct.madera_priv*, i32) #1

declare dso_local i32 @madera_spin_sysclk(%struct.madera_priv*) #1

declare dso_local i32 @snd_soc_put_enum_double(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
