; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_handle_retune_mobile_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_handle_retune_mobile_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i8**, %struct.TYPE_4__, %struct.wm8904_pdata* }
%struct.TYPE_4__ = type { i64, i8** }
%struct.wm8904_pdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"EQ Mode\00", align 1
@wm8904_get_retune_mobile_enum = common dso_local global i32 0, align 4
@wm8904_put_retune_mobile_enum = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Allocated %d unique ReTune Mobile names\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to add ReTune Mobile control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8904_handle_retune_mobile_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8904_handle_retune_mobile_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8904_priv*, align 8
  %4 = alloca %struct.wm8904_pdata*, align 8
  %5 = alloca %struct.snd_kcontrol_new, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8904_priv* %11, %struct.wm8904_priv** %3, align 8
  %12 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %12, i32 0, i32 3
  %14 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %13, align 8
  store %struct.wm8904_pdata* %14, %struct.wm8904_pdata** %4, align 8
  %15 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %15, i32 0, i32 2
  %17 = load i32, i32* @wm8904_get_retune_mobile_enum, align 4
  %18 = load i32, i32* @wm8904_put_retune_mobile_enum, align 4
  %19 = bitcast %struct.TYPE_4__* %16 to { i64, i8** }*
  %20 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %19, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21, i8** %23, i32 %17, i32 %18)
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %27 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %29 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %28, i32 0, i32 1
  store i8** null, i8*** %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %111, %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %33 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %114

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %40 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %45 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %51, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %66

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %37

66:                                               ; preds = %61, %37
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %69 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %111

73:                                               ; preds = %66
  %74 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %75 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %78 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 8, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8** @krealloc(i8** %76, i32 %83, i32 %84)
  store i8** %85, i8*** %9, align 8
  %86 = load i8**, i8*** %9, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %111

89:                                               ; preds = %73
  %90 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %91 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %100 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %97, i8** %103, align 8
  %104 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %105 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %110 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %109, i32 0, i32 1
  store i8** %108, i8*** %110, align 8
  br label %111

111:                                              ; preds = %89, %88, %72
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %30

114:                                              ; preds = %30
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %116 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %119 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  %123 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %124 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %128 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %131 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %134 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8** %132, i8*** %135, align 8
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %137 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %136, %struct.snd_kcontrol_new* %5, i32 1)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %114
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %142 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %140, %114
  ret void
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @SOC_ENUM_EXT(i8*, i64, i8**, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8** @krealloc(i8**, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
