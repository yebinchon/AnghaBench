; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_handle_retune_mobile_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_handle_retune_mobile_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8994_priv = type { i32, i8**, %struct.TYPE_5__, %struct.TYPE_6__, %struct.wm8994* }
%struct.TYPE_5__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.TYPE_6__ = type { i64, i8** }
%struct.wm8994 = type { %struct.wm8994_pdata }
%struct.wm8994_pdata = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"AIF1.1 EQ Mode\00", align 1
@wm8994_get_retune_mobile_enum = common dso_local global i32 0, align 4
@wm8994_put_retune_mobile_enum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"AIF1.2 EQ Mode\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AIF2 EQ Mode\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Allocated %d unique ReTune Mobile names\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to add ReTune Mobile controls: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8994_priv*)* @wm8994_handle_retune_mobile_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8994_handle_retune_mobile_pdata(%struct.wm8994_priv* %0) #0 {
  %2 = alloca %struct.wm8994_priv*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8994*, align 8
  %5 = alloca %struct.wm8994_pdata*, align 8
  %6 = alloca [3 x %struct.snd_kcontrol_new], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  store %struct.wm8994_priv* %0, %struct.wm8994_priv** %2, align 8
  %11 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %12 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %16 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %15, i32 0, i32 4
  %17 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  store %struct.wm8994* %17, %struct.wm8994** %4, align 8
  %18 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %19 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %18, i32 0, i32 0
  store %struct.wm8994_pdata* %19, %struct.wm8994_pdata** %5, align 8
  %20 = getelementptr inbounds [3 x %struct.snd_kcontrol_new], [3 x %struct.snd_kcontrol_new]* %6, i64 0, i64 0
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 3
  %23 = load i32, i32* @wm8994_get_retune_mobile_enum, align 4
  %24 = load i32, i32* @wm8994_put_retune_mobile_enum, align 4
  %25 = bitcast %struct.TYPE_6__* %22 to { i64, i8** }*
  %26 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %25, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %27, i8** %29, i32 %23, i32 %24)
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i64 1
  %33 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %34 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %33, i32 0, i32 3
  %35 = load i32, i32* @wm8994_get_retune_mobile_enum, align 4
  %36 = load i32, i32* @wm8994_put_retune_mobile_enum, align 4
  %37 = bitcast %struct.TYPE_6__* %34 to { i64, i8** }*
  %38 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %37, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %39, i8** %41, i32 %35, i32 %36)
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %32, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %32, i64 1
  %45 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %46 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %45, i32 0, i32 3
  %47 = load i32, i32* @wm8994_get_retune_mobile_enum, align 4
  %48 = load i32, i32* @wm8994_put_retune_mobile_enum, align 4
  %49 = bitcast %struct.TYPE_6__* %46 to { i64, i8** }*
  %50 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %49, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %51, i8** %53, i32 %47, i32 %48)
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %44, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %57 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %58, i32 0, i32 1
  store i8** null, i8*** %59, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %141, %1
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %63 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %144

66:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %70 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %75 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %83 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %81, i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  br label %96

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %67

96:                                               ; preds = %91, %67
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %99 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %141

103:                                              ; preds = %96
  %104 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %105 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %108 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = mul i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8** @krealloc(i8** %106, i32 %113, i32 %114)
  store i8** %115, i8*** %10, align 8
  %116 = load i8**, i8*** %10, align 8
  %117 = icmp eq i8** %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %141

119:                                              ; preds = %103
  %120 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %121 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8**, i8*** %10, align 8
  %129 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %130 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %128, i64 %132
  store i8* %127, i8** %133, align 8
  %134 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %135 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load i8**, i8*** %10, align 8
  %139 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %140 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %139, i32 0, i32 1
  store i8** %138, i8*** %140, align 8
  br label %141

141:                                              ; preds = %119, %118, %102
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %60

144:                                              ; preds = %60
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %146 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %149 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = call i32 @dev_dbg(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %151)
  %153 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %154 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %158 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %161 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %160, i32 0, i32 1
  %162 = load i8**, i8*** %161, align 8
  %163 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %164 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i8** %162, i8*** %165, align 8
  %166 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %167 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %168, align 8
  %170 = getelementptr inbounds [3 x %struct.snd_kcontrol_new], [3 x %struct.snd_kcontrol_new]* %6, i64 0, i64 0
  %171 = getelementptr inbounds [3 x %struct.snd_kcontrol_new], [3 x %struct.snd_kcontrol_new]* %6, i64 0, i64 0
  %172 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %171)
  %173 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %169, %struct.snd_kcontrol_new* %170, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %144
  %177 = load %struct.wm8994_priv*, %struct.wm8994_priv** %2, align 8
  %178 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %179, align 8
  %181 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @dev_err(i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %176, %144
  ret void
}

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
