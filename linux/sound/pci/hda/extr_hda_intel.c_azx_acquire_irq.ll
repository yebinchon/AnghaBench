; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_acquire_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_acquire_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hdac_bus = type { i32 }

@azx_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, i32)* @azx_acquire_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_acquire_irq(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.azx*, %struct.azx** %4, align 8
  %8 = call %struct.hdac_bus* @azx_bus(%struct.azx* %7)
  store %struct.hdac_bus* %8, %struct.hdac_bus** %6, align 8
  %9 = load %struct.azx*, %struct.azx** %4, align 8
  %10 = getelementptr inbounds %struct.azx, %struct.azx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @azx_interrupt, align 4
  %15 = load %struct.azx*, %struct.azx** %4, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQF_SHARED, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  %24 = load %struct.azx*, %struct.azx** %4, align 8
  %25 = getelementptr inbounds %struct.azx, %struct.azx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.azx*, %struct.azx** %4, align 8
  %30 = call i64 @request_irq(i32 %13, i32 %14, i32 %23, i32 %28, %struct.azx* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %22
  %33 = load %struct.azx*, %struct.azx** %4, align 8
  %34 = getelementptr inbounds %struct.azx, %struct.azx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.azx*, %struct.azx** %4, align 8
  %39 = getelementptr inbounds %struct.azx, %struct.azx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.azx*, %struct.azx** %4, align 8
  %48 = getelementptr inbounds %struct.azx, %struct.azx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @snd_card_disconnect(%struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %46, %32
  store i32 -1, i32* %3, align 4
  br label %70

52:                                               ; preds = %22
  %53 = load %struct.azx*, %struct.azx** %4, align 8
  %54 = getelementptr inbounds %struct.azx, %struct.azx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %59 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.azx*, %struct.azx** %4, align 8
  %61 = getelementptr inbounds %struct.azx, %struct.azx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.azx*, %struct.azx** %4, align 8
  %64 = getelementptr inbounds %struct.azx, %struct.azx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @pci_intx(%struct.TYPE_4__* %62, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %52, %51
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.azx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_card_disconnect(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_intx(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
