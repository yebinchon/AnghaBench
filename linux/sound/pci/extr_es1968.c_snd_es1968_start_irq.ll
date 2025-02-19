; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64, i64 }

@ESM_HIRQ_DSIE = common dso_local global i16 0, align 2
@ESM_HIRQ_HW_VOLUME = common dso_local global i16 0, align 2
@ESM_HIRQ_MPU401 = common dso_local global i16 0, align 2
@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_start_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_start_irq(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca i16, align 2
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %4 = load i16, i16* @ESM_HIRQ_DSIE, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @ESM_HIRQ_HW_VOLUME, align 2
  %7 = zext i16 %6 to i32
  %8 = or i32 %5, %7
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %3, align 2
  %10 = load %struct.es1968*, %struct.es1968** %2, align 8
  %11 = getelementptr inbounds %struct.es1968, %struct.es1968* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i16, i16* @ESM_HIRQ_MPU401, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %3, align 2
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i16, i16* %3, align 2
  %23 = load %struct.es1968*, %struct.es1968** %2, align 8
  %24 = getelementptr inbounds %struct.es1968, %struct.es1968* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 26
  %27 = call i32 @outb(i16 zeroext %22, i64 %26)
  %28 = load i16, i16* %3, align 2
  %29 = load %struct.es1968*, %struct.es1968** %2, align 8
  %30 = getelementptr inbounds %struct.es1968, %struct.es1968* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outw(i16 zeroext %28, i64 %33)
  ret void
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
