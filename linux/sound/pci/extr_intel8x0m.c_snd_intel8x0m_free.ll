; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i64, i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_RESETREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*)* @snd_intel8x0m_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_free(%struct.intel8x0m* %0) #0 {
  %2 = alloca %struct.intel8x0m*, align 8
  %3 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %2, align 8
  %4 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %5 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %13 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %18 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %19 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %20 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %19, i32 0, i32 6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %18, %26
  %28 = call i32 @iputbyte(%struct.intel8x0m* %17, i64 %27, i32 0)
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %36 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %41 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %42 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %43 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %41, %49
  %51 = load i32, i32* @ICH_RESETREGS, align 4
  %52 = call i32 @iputbyte(%struct.intel8x0m* %40, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %33

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %8
  %58 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %59 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %64 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %67 = call i32 @free_irq(i64 %65, %struct.intel8x0m* %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %70 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %76 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %75, i32 0, i32 5
  %77 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %80 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %85 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %88 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @pci_iounmap(i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %93 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %98 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %101 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pci_iounmap(i32 %99, i64 %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %106 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pci_release_regions(i32 %107)
  %109 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %110 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pci_disable_device(i32 %111)
  %113 = load %struct.intel8x0m*, %struct.intel8x0m** %2, align 8
  %114 = call i32 @kfree(%struct.intel8x0m* %113)
  ret i32 0
}

declare dso_local i32 @iputbyte(%struct.intel8x0m*, i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.intel8x0m*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.intel8x0m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
