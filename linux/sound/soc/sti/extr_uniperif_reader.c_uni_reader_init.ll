; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uniperif = type { i32, i32, i32*, i32*, i32, i32* }

@UNIPERIF_STATE_STOPPED = common dso_local global i32 0, align 4
@uni_reader_dai_ops = common dso_local global i32 0, align 4
@uni_tdm_hw = common dso_local global i32 0, align 4
@uni_reader_pcm_hw = common dso_local global i32 0, align 4
@uni_reader_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_reader_init(%struct.platform_device* %0, %struct.uniperif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.uniperif*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.uniperif* %1, %struct.uniperif** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %10 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %9, i32 0, i32 5
  store i32* %8, i32** %10, align 8
  %11 = load i32, i32* @UNIPERIF_STATE_STOPPED, align 4
  %12 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %13 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %15 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %14, i32 0, i32 3
  store i32* @uni_reader_dai_ops, i32** %15, align 8
  %16 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %17 = call i64 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %21 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %20, i32 0, i32 2
  store i32* @uni_tdm_hw, i32** %21, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %24 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %23, i32 0, i32 2
  store i32* @uni_reader_pcm_hw, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %29 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @uni_reader_irq_handler, align 4
  %32 = load i32, i32* @IRQF_SHARED, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_name(i32* %34)
  %36 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %37 = call i32 @devm_request_irq(i32* %27, i32 %30, i32 %31, i32 %32, i32 %35, %struct.uniperif* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %25
  %47 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %48 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.uniperif*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
