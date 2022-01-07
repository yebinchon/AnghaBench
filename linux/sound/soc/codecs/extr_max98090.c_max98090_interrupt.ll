; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98090_priv = type { i32, i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"***** max98090_interrupt *****\0A\00", align 1
@M98090_REG_INTERRUPT_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to read M98090_REG_INTERRUPT_S: %d\0A\00", align 1
@M98090_REG_DEVICE_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to read M98090_REG_DEVICE_STATUS: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"active=0x%02x mask=0x%02x -> active=0x%02x\0A\00", align 1
@M98090_CLD_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"M98090_CLD_MASK\0A\00", align 1
@M98090_SLD_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"M98090_SLD_MASK\0A\00", align 1
@M98090_ULK_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"M98090_ULK_MASK\0A\00", align 1
@M98090_JDET_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"M98090_JDET_MASK\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@M98090_DRCACT_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"M98090_DRCACT_MASK\0A\00", align 1
@M98090_DRCCLP_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"M98090_DRCCLP_MASK\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max98090_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.max98090_priv*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.max98090_priv*
  store %struct.max98090_priv* %12, %struct.max98090_priv** %6, align 8
  %13 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %14 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %13, i32 0, i32 3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = icmp eq %struct.snd_soc_component* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %145

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %26 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @M98090_REG_INTERRUPT_S, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %9)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %145

39:                                               ; preds = %20
  %40 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %41 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @M98090_REG_DEVICE_STATUS, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %10)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %145

54:                                               ; preds = %39
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %60, %61
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @IRQ_NONE, align 4
  store i32 %70, i32* %3, align 4
  br label %145

71:                                               ; preds = %54
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @M98090_CLD_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @M98090_SLD_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @M98090_ULK_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %101 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %102 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %101, i32 0, i32 1
  %103 = call i32 @schedule_work(i32* %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @M98090_JDET_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @pm_wakeup_event(i32 %116, i32 100)
  %118 = load i32, i32* @system_power_efficient_wq, align 4
  %119 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %120 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %119, i32 0, i32 0
  %121 = call i32 @msecs_to_jiffies(i32 100)
  %122 = call i32 @queue_delayed_work(i32 %118, i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %109, %104
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @M98090_DRCACT_MASK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %130 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @dev_dbg(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @M98090_DRCCLP_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %140 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %69, %47, %32, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
