; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_setup_eq2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_setup_eq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { i32*, i32, %struct.max98088_cdata*, %struct.max98088_pdata* }
%struct.max98088_cdata = type { i32, i32 }
%struct.max98088_pdata = type { i32, %struct.max98088_eq_cfg* }
%struct.max98088_eq_cfg = type { i32, i32, i32, i32, i32, i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Selected %s/%dHz for %dHz sample rate\0A\00", align 1
@M98088_REG_49_CFG_LEVEL = common dso_local global i32 0, align 4
@M98088_EQ2EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @max98088_setup_eq2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98088_setup_eq2(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98088_priv*, align 8
  %4 = alloca %struct.max98088_pdata*, align 8
  %5 = alloca %struct.max98088_eq_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.max98088_cdata*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.max98088_priv* %14, %struct.max98088_priv** %3, align 8
  %15 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %16 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %15, i32 0, i32 3
  %17 = load %struct.max98088_pdata*, %struct.max98088_pdata** %16, align 8
  store %struct.max98088_pdata* %17, %struct.max98088_pdata** %4, align 8
  %18 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %19 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %18, i32 0, i32 2
  %20 = load %struct.max98088_cdata*, %struct.max98088_cdata** %19, align 8
  %21 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %20, i64 1
  store %struct.max98088_cdata* %21, %struct.max98088_cdata** %12, align 8
  %22 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %23 = icmp ne %struct.max98088_pdata* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %26 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %1
  br label %160

30:                                               ; preds = %24
  %31 = load %struct.max98088_cdata*, %struct.max98088_cdata** %12, align 8
  %32 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.max98088_cdata*, %struct.max98088_cdata** %12, align 8
  %35 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %92, %30
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %38
  %45 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %45, i32 0, i32 1
  %47 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %47, i64 %49
  %51 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %54 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @strcmp(i32 %52, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %44
  %63 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %64 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %63, i32 0, i32 1
  %65 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %65, i64 %67
  %69 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %70, %72
  %74 = call i32 @abs(i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %6, align 4
  %79 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %80 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %79, i32 0, i32 1
  %81 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %81, i64 %83
  %85 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = call i32 @abs(i64 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %77, %62, %44
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %38

95:                                               ; preds = %38
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %97 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %100 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %99, i32 0, i32 1
  %101 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %101, i64 %103
  %105 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %108 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %107, i32 0, i32 1
  %109 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %109, i64 %111
  %113 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %106, i64 %114, i32 %115)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %118 = load i32, i32* @M98088_REG_49_CFG_LEVEL, align 4
  %119 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %121 = load i32, i32* @M98088_REG_49_CFG_LEVEL, align 4
  %122 = load i32, i32* @M98088_EQ2EN, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 %122, i32 0)
  %124 = load %struct.max98088_pdata*, %struct.max98088_pdata** %4, align 8
  %125 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %124, i32 0, i32 1
  %126 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %126, i64 %128
  store %struct.max98088_eq_cfg* %129, %struct.max98088_eq_cfg** %5, align 8
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %131 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %5, align 8
  %132 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @m98088_eq_band(%struct.snd_soc_component* %130, i32 1, i32 0, i32 %133)
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %136 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %5, align 8
  %137 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @m98088_eq_band(%struct.snd_soc_component* %135, i32 1, i32 1, i32 %138)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %141 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %5, align 8
  %142 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @m98088_eq_band(%struct.snd_soc_component* %140, i32 1, i32 2, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %146 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %5, align 8
  %147 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @m98088_eq_band(%struct.snd_soc_component* %145, i32 1, i32 3, i32 %148)
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %151 = load %struct.max98088_eq_cfg*, %struct.max98088_eq_cfg** %5, align 8
  %152 = getelementptr inbounds %struct.max98088_eq_cfg, %struct.max98088_eq_cfg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @m98088_eq_band(%struct.snd_soc_component* %150, i32 1, i32 4, i32 %153)
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %156 = load i32, i32* @M98088_REG_49_CFG_LEVEL, align 4
  %157 = load i32, i32* @M98088_EQ2EN, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %155, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %95, %29
  ret void
}

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @m98088_eq_band(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
