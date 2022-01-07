; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdif_in_dev = type { i64, i32 }

@SPDIF_IN_IRQ = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@SPDIF_IRQ_FIFOWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"spdif in: fifo write error\00", align 1
@SPDIF_IRQ_EMPTYFIFOREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"spdif in: empty fifo read error\00", align 1
@SPDIF_IRQ_FIFOFULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"spdif in: fifo full error\00", align 1
@SPDIF_IRQ_OUTOFRANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"spdif in: out of range error\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spdif_in_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_in_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spdif_in_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.spdif_in_dev*
  store %struct.spdif_in_dev* %9, %struct.spdif_in_dev** %6, align 8
  %10 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %11 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SPDIF_IN_IRQ, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPDIF_IRQ_FIFOWRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %27 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SPDIF_IRQ_EMPTYFIFOREAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %37 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SPDIF_IRQ_FIFOFULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %47 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SPDIF_IRQ_OUTOFRANGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %57 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %6, align 8
  %62 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPDIF_IN_IRQ, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 0, i64 %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
