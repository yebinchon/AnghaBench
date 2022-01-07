; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_adsp_rate_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_adsp_rate_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, i32*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.soc_enum = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cannot change '%s' while in use by active audio paths\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @madera_adsp_rate_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_adsp_rate_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %20 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %21 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %32 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %85

38:                                               ; preds = %2
  %39 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %40 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %43 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %44 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @madera_can_change_grp_rate(%struct.madera_priv* %42, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %38
  %54 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %55 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %80

66:                                               ; preds = %38
  %67 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %68 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %75 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %66, %53
  %81 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %82 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %35
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @madera_can_change_grp_rate(%struct.madera_priv*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
