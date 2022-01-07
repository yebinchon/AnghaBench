; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_adsp2_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_adsp2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs47l24_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { i32 }
%struct.arizona_voice_trigger_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@WM_ADSP_COMPR_VOICE_TRIGGER = common dso_local global i32 0, align 4
@ARIZONA_NOTIFY_VOICE_TRIGGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Spurious compressed data IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs47l24_adsp2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l24_adsp2_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs47l24_priv*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca %struct.arizona_voice_trigger_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cs47l24_priv*
  store %struct.cs47l24_priv* %13, %struct.cs47l24_priv** %6, align 8
  %14 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %6, align 8
  %15 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.arizona*, %struct.arizona** %16, align 8
  store %struct.arizona* %17, %struct.arizona** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %48, %2
  %19 = load i32, i32* %10, align 4
  %20 = icmp sle i32 %19, 2
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %6, align 8
  %23 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @wm_adsp_compr_handle_irq(i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @WM_ADSP_COMPR_VOICE_TRIGGER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %struct.arizona_voice_trigger_info, %struct.arizona_voice_trigger_info* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.arizona*, %struct.arizona** %7, align 8
  %45 = load i32, i32* @ARIZONA_NOTIFY_VOICE_TRIGGER, align 4
  %46 = call i32 @arizona_call_notifiers(%struct.arizona* %44, i32 %45, %struct.arizona_voice_trigger_info* %8)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.arizona*, %struct.arizona** %7, align 8
  %56 = getelementptr inbounds %struct.arizona, %struct.arizona* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @wm_adsp_compr_handle_irq(i32*) #1

declare dso_local i32 @arizona_call_notifiers(%struct.arizona*, i32, %struct.arizona_voice_trigger_info*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
