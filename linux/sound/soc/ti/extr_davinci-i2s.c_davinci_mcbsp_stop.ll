; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_mcbsp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_mcbsp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcbsp_dev = type { i32 }

@DAVINCI_MCBSP_SPCR_REG = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_GRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_FRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_XRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_RRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcbsp_dev*, i32)* @davinci_mcbsp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.davinci_mcbsp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.davinci_mcbsp_dev* %0, %struct.davinci_mcbsp_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %7 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %8 = call i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @DAVINCI_MCBSP_SPCR_GRST, align 4
  %10 = load i32, i32* @DAVINCI_MCBSP_SPCR_FRST, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @DAVINCI_MCBSP_SPCR_XRST, align 4
  %19 = xor i32 %18, -1
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @DAVINCI_MCBSP_SPCR_RRST, align 4
  %22 = xor i32 %21, -1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %28 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @toggle_clock(%struct.davinci_mcbsp_dev* %31, i32 %32)
  ret void
}

declare dso_local i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev*, i32) #1

declare dso_local i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev*, i32, i32) #1

declare dso_local i32 @toggle_clock(%struct.davinci_mcbsp_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
