; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i64, i32, i64, i32, i32 }

@HDSPM_Start = common dso_local global i32 0, align 4
@HDSPM_AudioInterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Midi1InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Midi2InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Midi3InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @snd_hdspm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_free(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %3 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %4 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @HDSPM_Start, align 4
  %9 = load i32, i32* @HDSPM_AudioInterruptEnable, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HDSPM_Midi0InterruptEnable, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HDSPM_Midi1InterruptEnable, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HDSPM_Midi2InterruptEnable, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @HDSPM_Midi3InterruptEnable, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %21 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %25 = load i32, i32* @HDSPM_controlRegister, align 4
  %26 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hdspm_write(%struct.hdspm* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %7, %1
  %31 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %32 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %40 = bitcast %struct.hdspm* %39 to i8*
  %41 = call i32 @free_irq(i64 %38, i8* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %44 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %48 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @iounmap(i32 %49)
  %51 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %52 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %57 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_release_regions(i32 %58)
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %62 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_disable_device(i32 %63)
  ret i32 0
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
