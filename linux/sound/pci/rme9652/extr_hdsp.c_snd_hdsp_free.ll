; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@HDSP_Start = common dso_local global i32 0, align 4
@HDSP_AudioInterruptEnable = common dso_local global i32 0, align 4
@HDSP_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSP_Midi1InterruptEnable = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @snd_hdsp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_free(%struct.hdsp* %0) #0 {
  %2 = alloca %struct.hdsp*, align 8
  store %struct.hdsp* %0, %struct.hdsp** %2, align 8
  %3 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %4 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 7
  %10 = call i32 @tasklet_kill(i32* %9)
  %11 = load i32, i32* @HDSP_Start, align 4
  %12 = load i32, i32* @HDSP_AudioInterruptEnable, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @HDSP_Midi0InterruptEnable, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HDSP_Midi1InterruptEnable, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %20 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %24 = load i32, i32* @HDSP_controlRegister, align 4
  %25 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hdsp_write(%struct.hdsp* %23, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %7, %1
  %30 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %31 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %36 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %39 = bitcast %struct.hdsp* %38 to i8*
  %40 = call i32 @free_irq(i64 %37, i8* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %43 = call i32 @snd_hdsp_free_buffers(%struct.hdsp* %42)
  %44 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @release_firmware(i32 %46)
  %48 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %49 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vfree(i32 %50)
  %52 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %53 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @iounmap(i32 %54)
  %56 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %57 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %62 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_release_regions(i32 %63)
  br label %65

65:                                               ; preds = %60, %41
  %66 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pci_disable_device(i32 %68)
  ret i32 0
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @snd_hdsp_free_buffers(%struct.hdsp*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
