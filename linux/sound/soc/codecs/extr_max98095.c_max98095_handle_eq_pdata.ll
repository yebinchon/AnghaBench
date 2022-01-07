; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_handle_eq_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_handle_eq_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i8**, %struct.TYPE_2__, %struct.max98095_pdata* }
%struct.TYPE_2__ = type { i8**, i64 }
%struct.max98095_pdata = type { i32, %struct.max98095_eq_cfg* }
%struct.max98095_eq_cfg = type { i8* }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"EQ1 Mode\00", align 1
@max98095_get_eq_enum = common dso_local global i32 0, align 4
@max98095_put_eq_enum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"EQ2 Mode\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to add EQ control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @max98095_handle_eq_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98095_handle_eq_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98095_priv*, align 8
  %4 = alloca %struct.max98095_pdata*, align 8
  %5 = alloca %struct.max98095_eq_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.snd_kcontrol_new], align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.max98095_priv* %13, %struct.max98095_priv** %3, align 8
  %14 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %15 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %14, i32 0, i32 3
  %16 = load %struct.max98095_pdata*, %struct.max98095_pdata** %15, align 8
  store %struct.max98095_pdata* %16, %struct.max98095_pdata** %4, align 8
  %17 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %11, i64 0, i64 0
  %18 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %19 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %18, i32 0, i32 2
  %20 = load i32, i32* @max98095_get_eq_enum, align 4
  %21 = load i32, i32* @max98095_put_eq_enum, align 4
  %22 = bitcast %struct.TYPE_2__* %19 to { i8**, i64 }*
  %23 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %24, i64 %26, i32 %20, i32 %21)
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i64 1
  %30 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %31 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %30, i32 0, i32 2
  %32 = load i32, i32* @max98095_get_eq_enum, align 4
  %33 = load i32, i32* @max98095_put_eq_enum, align 4
  %34 = bitcast %struct.TYPE_2__* %31 to { i8**, i64 }*
  %35 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %36, i64 %38, i32 %32, i32 %33)
  %40 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %42 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %41, i32 0, i32 1
  %43 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %42, align 8
  store %struct.max98095_eq_cfg* %43, %struct.max98095_eq_cfg** %5, align 8
  %44 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %45 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  %47 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %48 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %50 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %49, i32 0, i32 1
  store i8** null, i8*** %50, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %126, %1
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %59 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %63, i64 %65
  %67 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %70 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %68, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %83

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %56

83:                                               ; preds = %78, %56
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %86 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %126

90:                                               ; preds = %83
  %91 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %92 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %95 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = mul i64 8, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8** @krealloc(i8** %93, i32 %100, i32 %101)
  store i8** %102, i8*** %9, align 8
  %103 = load i8**, i8*** %9, align 8
  %104 = icmp eq i8** %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %126

106:                                              ; preds = %90
  %107 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %107, i64 %109
  %111 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %9, align 8
  %114 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %115 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %113, i64 %117
  store i8* %112, i8** %118, align 8
  %119 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %120 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load i8**, i8*** %9, align 8
  %124 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %125 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %124, i32 0, i32 1
  store i8** %123, i8*** %125, align 8
  br label %126

126:                                              ; preds = %106, %105, %89
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %51

129:                                              ; preds = %51
  %130 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %131 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %134 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i8** %132, i8*** %135, align 8
  %136 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %137 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %141 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %144 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %11, i64 0, i64 0
  %145 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %11, i64 0, i64 0
  %146 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %145)
  %147 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %143, %struct.snd_kcontrol_new* %144, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %129
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %152 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %150, %129
  ret void
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @SOC_ENUM_EXT(i8*, i8**, i64, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8** @krealloc(i8**, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
