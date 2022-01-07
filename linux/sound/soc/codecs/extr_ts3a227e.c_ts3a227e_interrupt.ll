; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts3a227e = type { i32, %struct.device*, %struct.regmap* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@TS3A227E_REG_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to clear interrupt ret=%d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@DETECTION_COMPLETE_EVENT = common dso_local global i32 0, align 4
@INS_REM_EVENT = common dso_local global i32 0, align 4
@TS3A227E_REG_ACCESSORY_STATUS = common dso_local global i32 0, align 4
@TS3A227E_REG_KP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to clear key interrupt ret=%d\0A\00", align 1
@TS3A227E_NUM_BUTTONS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ts3a227e_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts3a227e_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ts3a227e*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ts3a227e*
  store %struct.ts3a227e* %15, %struct.ts3a227e** %6, align 8
  %16 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %17 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %16, i32 0, i32 2
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %7, align 8
  %19 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %20 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = load i32, i32* @TS3A227E_REG_INTERRUPT, align 4
  %24 = call i32 @regmap_read(%struct.regmap* %22, i32 %23, i32* %8)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DETECTION_COMPLETE_EVENT, align 4
  %35 = load i32, i32* @INS_REM_EVENT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.regmap*, %struct.regmap** %7, align 8
  %41 = load i32, i32* @TS3A227E_REG_ACCESSORY_STATUS, align 4
  %42 = call i32 @regmap_read(%struct.regmap* %40, i32 %41, i32* %10)
  %43 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ts3a227e_new_jack_state(%struct.ts3a227e* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.regmap*, %struct.regmap** %7, align 8
  %48 = load i32, i32* @TS3A227E_REG_KP_INTERRUPT, align 4
  %49 = call i32 @regmap_read(%struct.regmap* %47, i32 %48, i32* %9)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %97

57:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %90, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @TS3A227E_NUM_BUTTONS, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @PRESS_MASK(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 1, %69
  %71 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %72 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @RELEASE_MASK(i32 %77)
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %86 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %81, %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %58

93:                                               ; preds = %58
  %94 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %95 = call i32 @ts3a227e_jack_report(%struct.ts3a227e* %94)
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %52, %27
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ts3a227e_new_jack_state(%struct.ts3a227e*, i32) #1

declare dso_local i32 @PRESS_MASK(i32) #1

declare dso_local i32 @RELEASE_MASK(i32) #1

declare dso_local i32 @ts3a227e_jack_report(%struct.ts3a227e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
