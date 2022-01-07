; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_handle_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_handle_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32*, %struct.TYPE_4__, %struct.wm8904_pdata* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.wm8904_pdata = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@wm8904_eq_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"%d DRC configurations\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DRC Mode\00", align 1
@wm8904_get_drc_enum = common dso_local global i32 0, align 4
@wm8904_put_drc_enum = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to add DRC mode control: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%d ReTune Mobile configurations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8904_handle_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8904_handle_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8904_priv*, align 8
  %4 = alloca %struct.wm8904_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8904_priv* %9, %struct.wm8904_priv** %3, align 8
  %10 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %10, i32 0, i32 2
  %12 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %11, align 8
  store %struct.wm8904_pdata* %12, %struct.wm8904_pdata** %4, align 8
  %13 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %14 = icmp ne %struct.wm8904_pdata* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8904_eq_controls, align 8
  %18 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8904_eq_controls, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %18)
  %20 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %16, %struct.snd_kcontrol_new* %17, i32 %19)
  br label %129

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %30 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %21
  %34 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %35 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %34, i32 0, i32 1
  %36 = load i32, i32* @wm8904_get_drc_enum, align 4
  %37 = load i32, i32* @wm8904_put_drc_enum, align 4
  %38 = bitcast %struct.TYPE_4__* %35 to { i32, i32* }*
  %39 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %38, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32* %42, i32 %36, i32 %37)
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32* @kmalloc_array(i32 %47, i32 8, i32 %48)
  %50 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %51 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %33
  br label %129

57:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %61 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %66 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %74 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %64
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %84 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %87 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %90 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %93 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32* %91, i32** %94, align 8
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %96 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %95, %struct.snd_kcontrol_new* %7, i32 1)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %82
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %82
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %107 = call i32 @wm8904_set_drc(%struct.snd_soc_component* %106)
  br label %108

108:                                              ; preds = %105, %21
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %110 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %113 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %117 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %122 = call i32 @wm8904_handle_retune_mobile_pdata(%struct.snd_soc_component* %121)
  br label %129

123:                                              ; preds = %108
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %125 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8904_eq_controls, align 8
  %126 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8904_eq_controls, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %126)
  %128 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %124, %struct.snd_kcontrol_new* %125, i32 %127)
  br label %129

129:                                              ; preds = %15, %56, %123, %120
  ret void
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @SOC_ENUM_EXT(i8*, i32, i32*, i32, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8904_set_drc(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8904_handle_retune_mobile_pdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
