; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_pci.c_pci_acc_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_pci.c_pci_acc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_dev* }
%struct.pci_access = type { %struct.pci_dev* }
%struct.pci_filter = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_acc_init(%struct.pci_access** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_access**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_filter, align 4
  %17 = alloca %struct.pci_dev*, align 8
  store %struct.pci_access** %0, %struct.pci_access*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = call %struct.pci_access* (...) @pci_alloc()
  %19 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  store %struct.pci_access* %18, %struct.pci_access** %19, align 8
  %20 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %21 = load %struct.pci_access*, %struct.pci_access** %20, align 8
  %22 = icmp eq %struct.pci_access* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  br label %68

24:                                               ; preds = %7
  %25 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %26 = load %struct.pci_access*, %struct.pci_access** %25, align 8
  %27 = call i32 @pci_filter_init(%struct.pci_access* %26, %struct.pci_filter* %16)
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds %struct.pci_filter, %struct.pci_filter* %16, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %41 = load %struct.pci_access*, %struct.pci_access** %40, align 8
  %42 = call i32 @pci_init(%struct.pci_access* %41)
  %43 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %44 = load %struct.pci_access*, %struct.pci_access** %43, align 8
  %45 = call i32 @pci_scan_bus(%struct.pci_access* %44)
  %46 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %47 = load %struct.pci_access*, %struct.pci_access** %46, align 8
  %48 = getelementptr inbounds %struct.pci_access, %struct.pci_access* %47, i32 0, i32 0
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  store %struct.pci_dev* %49, %struct.pci_dev** %17, align 8
  br label %50

50:                                               ; preds = %60, %24
  %51 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %52 = icmp ne %struct.pci_dev* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %55 = call i64 @pci_filter_match(%struct.pci_filter* %16, %struct.pci_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %58, %struct.pci_dev** %8, align 8
  br label %68

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load %struct.pci_dev*, %struct.pci_dev** %62, align 8
  store %struct.pci_dev* %63, %struct.pci_dev** %17, align 8
  br label %50

64:                                               ; preds = %50
  %65 = load %struct.pci_access**, %struct.pci_access*** %9, align 8
  %66 = load %struct.pci_access*, %struct.pci_access** %65, align 8
  %67 = call i32 @pci_cleanup(%struct.pci_access* %66)
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  br label %68

68:                                               ; preds = %64, %57, %23
  %69 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  ret %struct.pci_dev* %69
}

declare dso_local %struct.pci_access* @pci_alloc(...) #1

declare dso_local i32 @pci_filter_init(%struct.pci_access*, %struct.pci_filter*) #1

declare dso_local i32 @pci_init(%struct.pci_access*) #1

declare dso_local i32 @pci_scan_bus(%struct.pci_access*) #1

declare dso_local i64 @pci_filter_match(%struct.pci_filter*, %struct.pci_dev*) #1

declare dso_local i32 @pci_cleanup(%struct.pci_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
