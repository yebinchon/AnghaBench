; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32, i32 (%struct.snd_opl3*, i32, i32)*, i32 }

@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_TIMER_CONTROL = common dso_local global i32 0, align 4
@OPL3_TIMER1_MASK = common dso_local global i32 0, align 4
@OPL3_TIMER2_MASK = common dso_local global i32 0, align 4
@OPL3_IRQ_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OPL3: stat1 = 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OPL3_REG_TIMER1 = common dso_local global i32 0, align 4
@OPL3_TIMER1_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"OPL3: stat2 = 0x%x\0A\00", align 1
@OPL3_HW_AUTO = common dso_local global i64 0, align 8
@OPL3_HW_OPL2 = common dso_local global i64 0, align 8
@OPL3_HW_OPL3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*)* @snd_opl3_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_detect(%struct.snd_opl3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  %7 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %8 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %7, i32 0, i32 2
  %9 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %8, align 8
  %10 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %11 = load i32, i32* @OPL3_LEFT, align 4
  %12 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @OPL3_TIMER1_MASK, align 4
  %15 = load i32, i32* @OPL3_TIMER2_MASK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 %9(%struct.snd_opl3* %10, i32 %13, i32 %16)
  %18 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %19 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %18, i32 0, i32 2
  %20 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %19, align 8
  %21 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %22 = load i32, i32* @OPL3_LEFT, align 4
  %23 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @OPL3_IRQ_RESET, align 4
  %26 = call i32 %20(%struct.snd_opl3* %21, i32 %24, i32 %25)
  %27 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %28 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call zeroext i8 @inb(i32 %29)
  store i8 %30, i8* %4, align 1
  store i8 %30, i8* %6, align 1
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 224
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @snd_printd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %126

40:                                               ; preds = %1
  %41 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %42 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %41, i32 0, i32 2
  %43 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %42, align 8
  %44 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %45 = load i32, i32* @OPL3_LEFT, align 4
  %46 = load i32, i32* @OPL3_REG_TIMER1, align 4
  %47 = or i32 %45, %46
  %48 = call i32 %43(%struct.snd_opl3* %44, i32 %47, i32 255)
  %49 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %50 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %49, i32 0, i32 2
  %51 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %50, align 8
  %52 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %53 = load i32, i32* @OPL3_LEFT, align 4
  %54 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @OPL3_TIMER2_MASK, align 4
  %57 = load i32, i32* @OPL3_TIMER1_START, align 4
  %58 = or i32 %56, %57
  %59 = call i32 %51(%struct.snd_opl3* %52, i32 %55, i32 %58)
  %60 = call i32 @udelay(i32 200)
  %61 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %62 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call zeroext i8 @inb(i32 %63)
  store i8 %64, i8* %5, align 1
  %65 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %66 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %65, i32 0, i32 2
  %67 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %66, align 8
  %68 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %69 = load i32, i32* @OPL3_LEFT, align 4
  %70 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @OPL3_TIMER1_MASK, align 4
  %73 = load i32, i32* @OPL3_TIMER2_MASK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 %67(%struct.snd_opl3* %68, i32 %71, i32 %74)
  %76 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %77 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %76, i32 0, i32 2
  %78 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %77, align 8
  %79 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %80 = load i32, i32* @OPL3_LEFT, align 4
  %81 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @OPL3_IRQ_RESET, align 4
  %84 = call i32 %78(%struct.snd_opl3* %79, i32 %82, i32 %83)
  %85 = load i8, i8* %5, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 224
  %88 = icmp ne i32 %87, 192
  br i1 %88, label %89, label %94

89:                                               ; preds = %40
  %90 = load i8, i8* %5, align 1
  %91 = call i32 @snd_printd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %126

94:                                               ; preds = %40
  %95 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %96 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @OPL3_HW_AUTO, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %126

101:                                              ; preds = %94
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64, i64* @OPL3_HW_OPL2, align 8
  %107 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %108 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %125

109:                                              ; preds = %101
  %110 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %111 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @snd_BUG_ON(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %126

121:                                              ; preds = %109
  %122 = load i64, i64* @OPL3_HW_OPL3, align 8
  %123 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %124 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %105
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %118, %100, %89, %35
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @snd_printd(i8*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
