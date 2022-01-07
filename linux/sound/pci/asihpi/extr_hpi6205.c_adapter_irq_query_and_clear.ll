; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_adapter_irq_query_and_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_adapter_irq_query_and_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32 }

@C6205_HSR_INTSRC = common dso_local global i32 0, align 4
@HPI_IRQ_MIXER = common dso_local global i32 0, align 4
@HPI_IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_adapter_obj*, i32)* @adapter_irq_query_and_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_irq_query_and_clear(%struct.hpi_adapter_obj* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpi_hw_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %9 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %8, i32 0, i32 0
  %10 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  store %struct.hpi_hw_obj* %10, %struct.hpi_hw_obj** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %6, align 8
  %12 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ioread32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @C6205_HSR_INTSRC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @C6205_HSR_INTSRC, align 4
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %6, align 8
  %22 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iowrite32(i32 %20, i32 %23)
  %25 = load i32, i32* @HPI_IRQ_MIXER, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @HPI_IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
