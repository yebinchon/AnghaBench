; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_adsp2_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_adsp2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs47l92 = type { %struct.madera_priv }
%struct.madera_priv = type { i32*, %struct.madera* }
%struct.madera = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Spurious compressed data IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs47l92_adsp2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l92_adsp2_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs47l92*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.madera*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cs47l92*
  store %struct.cs47l92* %11, %struct.cs47l92** %6, align 8
  %12 = load %struct.cs47l92*, %struct.cs47l92** %6, align 8
  %13 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %12, i32 0, i32 0
  store %struct.madera_priv* %13, %struct.madera_priv** %7, align 8
  %14 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %15 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %14, i32 0, i32 1
  %16 = load %struct.madera*, %struct.madera** %15, align 8
  store %struct.madera* %16, %struct.madera** %8, align 8
  %17 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %18 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @wm_adsp_compr_handle_irq(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.madera*, %struct.madera** %8, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wm_adsp_compr_handle_irq(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
