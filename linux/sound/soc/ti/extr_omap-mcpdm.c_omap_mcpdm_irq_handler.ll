; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcpdm = type { i32 }

@MCPDM_REG_IRQSTATUS = common dso_local global i32 0, align 4
@MCPDM_DN_IRQ_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DN (playback) FIFO Full\0A\00", align 1
@MCPDM_DN_IRQ_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DN (playback) FIFO Empty\0A\00", align 1
@MCPDM_DN_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DN (playback) write request\0A\00", align 1
@MCPDM_UP_IRQ_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"UP (capture) FIFO Full\0A\00", align 1
@MCPDM_UP_IRQ_EMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"UP (capture) FIFO Empty\0A\00", align 1
@MCPDM_UP_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"UP (capture) write request\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_mcpdm_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcpdm_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_mcpdm*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap_mcpdm*
  store %struct.omap_mcpdm* %8, %struct.omap_mcpdm** %5, align 8
  %9 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %10 = load i32, i32* @MCPDM_REG_IRQSTATUS, align 4
  %11 = call i32 @omap_mcpdm_read(%struct.omap_mcpdm* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %13 = load i32, i32* @MCPDM_REG_IRQSTATUS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MCPDM_DN_IRQ_FULL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %22 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MCPDM_DN_IRQ_EMPTY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %32 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MCPDM_DN_IRQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %42 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MCPDM_UP_IRQ_FULL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %52 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MCPDM_UP_IRQ_EMPTY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %62 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MCPDM_UP_IRQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %72 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @omap_mcpdm_read(%struct.omap_mcpdm*, i32) #1

declare dso_local i32 @omap_mcpdm_write(%struct.omap_mcpdm*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
