; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_adsp2_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_adsp2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs47l35 = type { %struct.madera_priv }
%struct.madera_priv = type { i32*, %struct.madera* }
%struct.madera = type { i32, i32 }
%struct.madera_voice_trigger_info = type { i32 }

@CS47L35_NUM_ADSP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM_ADSP_COMPR_VOICE_TRIGGER = common dso_local global i32 0, align 4
@MADERA_NOTIFY_VOICE_TRIGGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Spurious compressed data IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs47l35_adsp2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l35_adsp2_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs47l35*, align 8
  %7 = alloca %struct.madera_priv*, align 8
  %8 = alloca %struct.madera*, align 8
  %9 = alloca %struct.madera_voice_trigger_info, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.cs47l35*
  store %struct.cs47l35* %14, %struct.cs47l35** %6, align 8
  %15 = load %struct.cs47l35*, %struct.cs47l35** %6, align 8
  %16 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %15, i32 0, i32 0
  store %struct.madera_priv* %16, %struct.madera_priv** %7, align 8
  %17 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %18 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %17, i32 0, i32 1
  %19 = load %struct.madera*, %struct.madera** %18, align 8
  store %struct.madera* %19, %struct.madera** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @CS47L35_NUM_ADSP, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.madera_priv*, %struct.madera_priv** %7, align 8
  %26 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @wm_adsp_compr_handle_irq(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @WM_ADSP_COMPR_VOICE_TRIGGER, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = getelementptr inbounds %struct.madera_voice_trigger_info, %struct.madera_voice_trigger_info* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.madera*, %struct.madera** %8, align 8
  %48 = getelementptr inbounds %struct.madera, %struct.madera* %47, i32 0, i32 1
  %49 = load i32, i32* @MADERA_NOTIFY_VOICE_TRIGGER, align 4
  %50 = call i32 @blocking_notifier_call_chain(i32* %48, i32 %49, %struct.madera_voice_trigger_info* %9)
  br label %51

51:                                               ; preds = %43, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.madera*, %struct.madera** %8, align 8
  %60 = getelementptr inbounds %struct.madera, %struct.madera* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @IRQ_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %58
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @wm_adsp_compr_handle_irq(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.madera_voice_trigger_info*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
