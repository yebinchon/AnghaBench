; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_retune_mobile_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_retune_mobile_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i8**, %struct.TYPE_4__, %struct.wm8996_pdata }
%struct.TYPE_4__ = type { i64, i8** }
%struct.wm8996_pdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"DSP1 EQ Mode\00", align 1
@wm8996_get_retune_mobile_enum = common dso_local global i32 0, align 4
@wm8996_put_retune_mobile_enum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DSP2 EQ Mode\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Allocated %d unique ReTune Mobile names\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to add ReTune Mobile controls: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8996_retune_mobile_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_retune_mobile_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8996_priv*, align 8
  %4 = alloca %struct.wm8996_pdata*, align 8
  %5 = alloca [2 x %struct.snd_kcontrol_new], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8996_priv* %11, %struct.wm8996_priv** %3, align 8
  %12 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %12, i32 0, i32 3
  store %struct.wm8996_pdata* %13, %struct.wm8996_pdata** %4, align 8
  %14 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %5, i64 0, i64 0
  %15 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %15, i32 0, i32 2
  %17 = load i32, i32* @wm8996_get_retune_mobile_enum, align 4
  %18 = load i32, i32* @wm8996_put_retune_mobile_enum, align 4
  %19 = bitcast %struct.TYPE_4__* %16 to { i64, i8** }*
  %20 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %19, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %21, i8** %23, i32 %17, i32 %18)
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %14, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %14, i64 1
  %27 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %28 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %27, i32 0, i32 2
  %29 = load i32, i32* @wm8996_get_retune_mobile_enum, align 4
  %30 = load i32, i32* @wm8996_put_retune_mobile_enum, align 4
  %31 = bitcast %struct.TYPE_4__* %28 to { i64, i8** }*
  %32 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %31, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %33, i8** %35, i32 %29, i32 %30)
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %26, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %39 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %40, i32 0, i32 1
  store i8** null, i8*** %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %123, %1
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %4, align 8
  %45 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %126

48:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %52 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %4, align 8
  %57 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %65 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strcmp(i8* %63, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %78

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %49

78:                                               ; preds = %73, %49
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %81 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %123

85:                                               ; preds = %78
  %86 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %87 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %90 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8** @krealloc(i8** %88, i32 %95, i32 %96)
  store i8** %97, i8*** %9, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = icmp eq i8** %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %123

101:                                              ; preds = %85
  %102 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %4, align 8
  %103 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8**, i8*** %9, align 8
  %111 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %112 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  store i8* %109, i8** %115, align 8
  %116 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %117 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %122 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %121, i32 0, i32 1
  store i8** %120, i8*** %122, align 8
  br label %123

123:                                              ; preds = %101, %100, %84
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %42

126:                                              ; preds = %42
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %128 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %131 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %133)
  %135 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %136 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %140 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %143 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %142, i32 0, i32 1
  %144 = load i8**, i8*** %143, align 8
  %145 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %146 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i8** %144, i8*** %147, align 8
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %149 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %5, i64 0, i64 0
  %150 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* %5, i64 0, i64 0
  %151 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %150)
  %152 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %148, %struct.snd_kcontrol_new* %149, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %126
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %155, %126
  ret void
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @SOC_ENUM_EXT(i8*, i64, i8**, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8** @krealloc(i8**, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
