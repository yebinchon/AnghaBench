; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_emu10k1_fx8010_irq* }
%struct.snd_emu10k1_fx8010_irq = type { i64, i32, i32 (%struct.snd_emu10k1.0*, i32)*, %struct.snd_emu10k1_fx8010_irq* }
%struct.snd_emu10k1.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*)* @snd_emu10k1_fx8010_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_fx8010_interrupt(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  %4 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %5 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %7, align 8
  store %struct.snd_emu10k1_fx8010_irq* %8, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  br label %9

9:                                                ; preds = %52, %1
  %10 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %11 = icmp ne %struct.snd_emu10k1_fx8010_irq* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %13, i32 0, i32 3
  %15 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %14, align 8
  store %struct.snd_emu10k1_fx8010_irq* %15, %struct.snd_emu10k1_fx8010_irq** %4, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %16, i64 %23, i32 0)
  %25 = and i32 %24, -65536
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %12
  %28 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %28, i32 0, i32 2
  %30 = load i32 (%struct.snd_emu10k1.0*, i32)*, i32 (%struct.snd_emu10k1.0*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.snd_emu10k1.0*, i32)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %33, i32 0, i32 2
  %35 = load i32 (%struct.snd_emu10k1.0*, i32)*, i32 (%struct.snd_emu10k1.0*, i32)** %34, align 8
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %37 = bitcast %struct.snd_emu10k1* %36 to %struct.snd_emu10k1.0*
  %38 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %35(%struct.snd_emu10k1.0* %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %27
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %43, i64 %50, i32 0, i32 1)
  br label %52

52:                                               ; preds = %42, %12
  %53 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %4, align 8
  store %struct.snd_emu10k1_fx8010_irq* %53, %struct.snd_emu10k1_fx8010_irq** %3, align 8
  br label %9

54:                                               ; preds = %9
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i64, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
