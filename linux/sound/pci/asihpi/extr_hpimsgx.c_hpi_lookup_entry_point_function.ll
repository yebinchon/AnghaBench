; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_hpi_lookup_entry_point_function.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_hpi_lookup_entry_point_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.hpi_pci = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@asihpi_pci_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hpi_pci*)* @hpi_lookup_entry_point_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hpi_lookup_entry_point_function(%struct.hpi_pci* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.hpi_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.hpi_pci* %0, %struct.hpi_pci** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %113, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %116

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_ANY_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hpi_pci*, %struct.hpi_pci** %3, align 8
  %30 = getelementptr inbounds %struct.hpi_pci, %struct.hpi_pci* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %113

36:                                               ; preds = %22, %13
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI_ANY_ID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hpi_pci*, %struct.hpi_pci** %3, align 8
  %53 = getelementptr inbounds %struct.hpi_pci, %struct.hpi_pci* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %113

59:                                               ; preds = %45, %36
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI_ANY_ID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hpi_pci*, %struct.hpi_pci** %3, align 8
  %76 = getelementptr inbounds %struct.hpi_pci, %struct.hpi_pci* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %113

82:                                               ; preds = %68, %59
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCI_ANY_ID, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.hpi_pci*, %struct.hpi_pci** %3, align 8
  %99 = getelementptr inbounds %struct.hpi_pci, %struct.hpi_pci* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %113

105:                                              ; preds = %91, %82
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asihpi_pci_tbl, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %2, align 8
  br label %117

113:                                              ; preds = %104, %81, %58, %35
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %5

116:                                              ; preds = %5
  store i32* null, i32** %2, align 8
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32*, i32** %2, align 8
  ret i32* %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
