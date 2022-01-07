; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_chip_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_chip_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i64, i32, i32, i64 }

@SIS_GCR_SOFTWARE_RESET = common dso_local global i32 0, align 4
@SIS_GCR = common dso_local global i64 0, align 8
@SIS_GIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis7019*)* @sis_chip_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_chip_free(%struct.sis7019* %0) #0 {
  %2 = alloca %struct.sis7019*, align 8
  store %struct.sis7019* %0, %struct.sis7019** %2, align 8
  %3 = load i32, i32* @SIS_GCR_SOFTWARE_RESET, align 4
  %4 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %5 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SIS_GCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outl(i32 %3, i64 %8)
  %10 = call i32 @udelay(i32 25)
  %11 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %12 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIS_GCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outl(i32 0, i64 %15)
  %17 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %18 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIS_GIER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 0, i64 %21)
  %23 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %24 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %29 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %32 = call i32 @free_irq(i64 %30, %struct.sis7019* %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %35 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %39 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_release_regions(i32 %40)
  %42 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %43 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_disable_device(i32 %44)
  %46 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %47 = call i32 @sis_free_suspend(%struct.sis7019* %46)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @free_irq(i64, %struct.sis7019*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @sis_free_suspend(%struct.sis7019*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
