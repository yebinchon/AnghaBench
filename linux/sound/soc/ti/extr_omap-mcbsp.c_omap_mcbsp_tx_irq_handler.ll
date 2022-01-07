; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_tx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_tx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32 }

@SPCR2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TX IRQ callback : 0x%x\0A\00", align 1
@XSYNC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TX Frame Sync Error! : 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_mcbsp_tx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_tx_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap_mcbsp*
  store %struct.omap_mcbsp* %8, %struct.omap_mcbsp** %5, align 8
  %9 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %10 = load i32, i32* @SPCR2, align 4
  %11 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %13 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @XSYNC_ERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %23 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %28 = load i32, i32* @SPCR2, align 4
  %29 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %30 = load i32, i32* @SPCR2, align 4
  %31 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %29, i32 %30)
  %32 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %21, %2
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local i32 @MCBSP_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
