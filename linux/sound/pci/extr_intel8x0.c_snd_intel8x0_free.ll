; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i64, i32, i64, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_RESETREGS = common dso_local global i32 0, align 4
@DEVICE_NFORCE = common dso_local global i64 0, align 8
@spdif_aclink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*)* @snd_intel8x0_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_free(%struct.intel8x0* %0) #0 {
  %2 = alloca %struct.intel8x0*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %2, align 8
  %5 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %6 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %79

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %14 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %19 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %20 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %21 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %20, i32 0, i32 7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %19, %27
  %29 = call i32 @iputbyte(%struct.intel8x0* %18, i64 %28, i32 0)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %37 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %42 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %43 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %44 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %43, i32 0, i32 7
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %42, %50
  %52 = load i32, i32* @ICH_RESETREGS, align 4
  %53 = call i32 @iputbyte(%struct.intel8x0* %41, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %59 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DEVICE_NFORCE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load i32, i32* @spdif_aclink, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %68 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pci_read_config_dword(i32 %69, i32 76, i32* %4)
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, -16777217
  store i32 %72, i32* %4, align 4
  %73 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %74 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_write_config_dword(i32 %75, i32 76, i32 %76)
  br label %78

78:                                               ; preds = %66, %63, %57
  br label %79

79:                                               ; preds = %78, %9
  %80 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %81 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %86 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %89 = call i32 @free_irq(i64 %87, %struct.intel8x0* %88)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %92 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %98 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %97, i32 0, i32 6
  %99 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %102 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %107 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %110 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @pci_iounmap(i32 %108, i64 %111)
  br label %113

113:                                              ; preds = %105, %100
  %114 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %115 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %120 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %123 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @pci_iounmap(i32 %121, i64 %124)
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %128 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pci_release_regions(i32 %129)
  %131 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %132 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pci_disable_device(i32 %133)
  %135 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %136 = call i32 @kfree(%struct.intel8x0* %135)
  ret i32 0
}

declare dso_local i32 @iputbyte(%struct.intel8x0*, i64, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.intel8x0*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.intel8x0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
