; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.nau8824 = type { i32, i32, i32, %struct.snd_soc_jack* }

@nau8824_jdet_work = common dso_local global i32 0, align 4
@nau8824_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nau8824\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot request irq %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nau8824_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.nau8824*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.nau8824* %8, %struct.nau8824** %5, align 8
  %9 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %10 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %11 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %10, i32 0, i32 3
  store %struct.snd_soc_jack* %9, %struct.snd_soc_jack** %11, align 8
  %12 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %13 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %12, i32 0, i32 2
  %14 = load i32, i32* @nau8824_jdet_work, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %17 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %20 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @nau8824_interrupt, align 4
  %23 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %24 = load i32, i32* @IRQF_ONESHOT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %27 = call i32 @devm_request_threaded_irq(i32 %18, i32 %21, i32* null, i32 %22, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.nau8824* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %32 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %35 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.nau8824*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
