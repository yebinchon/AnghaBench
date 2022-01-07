; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_set_adc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_set_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@H2I_BRES2_C1 = common dso_local global i32 0, align 4
@H2I_BRES2_C2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*)* @hal2_set_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_set_adc_rate(%struct.snd_hal2* %0) #0 {
  %2 = alloca %struct.snd_hal2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_hal2* %0, %struct.snd_hal2** %2, align 8
  %6 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %7 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %11 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %15 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %19 = load i32, i32* @H2I_BRES2_C1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 44100
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @hal2_i_write16(%struct.snd_hal2* %18, i32 %19, i32 %23)
  %25 = load %struct.snd_hal2*, %struct.snd_hal2** %2, align 8
  %26 = load i32, i32* @H2I_BRES2_C2, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = and i32 65535, %30
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @hal2_i_write32(%struct.snd_hal2* %25, i32 %26, i32 %34)
  ret void
}

declare dso_local i32 @hal2_i_write16(%struct.snd_hal2*, i32, i32) #1

declare dso_local i32 @hal2_i_write32(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
