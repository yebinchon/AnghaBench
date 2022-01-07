; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_pcidev.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_pcidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.pci_dev = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_driver = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"PCIDEV %02x%02x %04x%04x %x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %llx\00", align 1
@PCI_REGION_FLAG_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, %struct.pci_dev*)* @mmio_print_pcidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmio_print_pcidev(%struct.trace_seq* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_driver*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.pci_driver* @pci_dev_driver(%struct.pci_dev* %9)
  store %struct.pci_driver* %10, %struct.pci_driver** %8, align 8
  %11 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %58, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 7
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCI_REGION_FLAG_MASK, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %44, %54
  %56 = sext i32 %55 to i64
  %57 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %31

61:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %110, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 7
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %90, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %65
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 1
  br label %107

106:                                              ; preds = %65
  br label %107

107:                                              ; preds = %106, %100
  %108 = phi i64 [ %105, %100 ], [ 0, %106 ]
  %109 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %62

113:                                              ; preds = %62
  %114 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %115 = icmp ne %struct.pci_driver* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %118 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %119 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  br label %125

122:                                              ; preds = %113
  %123 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %124 = call i32 @trace_seq_puts(%struct.trace_seq* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %116
  ret void
}

declare dso_local %struct.pci_driver* @pci_dev_driver(%struct.pci_dev*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, ...) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
