; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_set_capture_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_set_capture_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onyx = type { i32 }

@ONYX_REG_ADC_CONTROL = common dso_local global i32 0, align 4
@ONYX_ADC_INPUT_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.onyx*, i32)* @onyx_set_capture_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onyx_set_capture_source(%struct.onyx* %0, i32 %1) #0 {
  %3 = alloca %struct.onyx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.onyx* %0, %struct.onyx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.onyx*, %struct.onyx** %3, align 8
  %7 = getelementptr inbounds %struct.onyx, %struct.onyx* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.onyx*, %struct.onyx** %3, align 8
  %10 = load i32, i32* @ONYX_REG_ADC_CONTROL, align 4
  %11 = call i32 @onyx_read_register(%struct.onyx* %9, i32 %10, i32* %5)
  %12 = load i32, i32* @ONYX_ADC_INPUT_MIC, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ONYX_ADC_INPUT_MIC, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.onyx*, %struct.onyx** %3, align 8
  %24 = load i32, i32* @ONYX_REG_ADC_CONTROL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @onyx_write_register(%struct.onyx* %23, i32 %24, i32 %25)
  %27 = load %struct.onyx*, %struct.onyx** %3, align 8
  %28 = getelementptr inbounds %struct.onyx, %struct.onyx* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i32 @onyx_write_register(%struct.onyx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
