; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, i64, i64, i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, {}*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@emergency_dbdma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*)* @snd_pmac_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_free(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %4 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %4, i32 0, i32 14
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %10 = call i32 @snd_pmac_dbdma_reset(%struct.snd_pmac* %9)
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %15, i32 0, i32 9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = call i32 @in_le32(i32* %18)
  %20 = and i32 %19, 4095
  %21 = call i32 @out_le32(i32* %14, i32 %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %29 = call i32 @snd_pmac_sound_feature(%struct.snd_pmac* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 13
  %33 = bitcast {}** %32 to i32 (%struct.snd_pmac*)**
  %34 = load i32 (%struct.snd_pmac*)*, i32 (%struct.snd_pmac*)** %33, align 8
  %35 = icmp ne i32 (%struct.snd_pmac*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %38 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %37, i32 0, i32 13
  %39 = bitcast {}** %38 to i32 (%struct.snd_pmac*)**
  %40 = load i32 (%struct.snd_pmac*)*, i32 (%struct.snd_pmac*)** %39, align 8
  %41 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %42 = call i32 %40(%struct.snd_pmac* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %45 = call i32 @snd_pmac_detach_beep(%struct.snd_pmac* %44)
  %46 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %47 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %52 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %55 = bitcast %struct.snd_pmac* %54 to i8*
  %56 = call i32 @free_irq(i64 %53, i8* %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %59 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %64 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %67 = bitcast %struct.snd_pmac* %66 to i8*
  %68 = call i32 @free_irq(i64 %65, i8* %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %71 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %76 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %79 = bitcast %struct.snd_pmac* %78 to i8*
  %80 = call i32 @free_irq(i64 %77, i8* %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %83 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %84 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = call i32 @snd_pmac_dbdma_free(%struct.snd_pmac* %82, i32* %85)
  %87 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %88 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %89 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @snd_pmac_dbdma_free(%struct.snd_pmac* %87, i32* %90)
  %92 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %93 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %94 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %93, i32 0, i32 12
  %95 = call i32 @snd_pmac_dbdma_free(%struct.snd_pmac* %92, i32* %94)
  %96 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %97 = call i32 @snd_pmac_dbdma_free(%struct.snd_pmac* %96, i32* @emergency_dbdma)
  %98 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %99 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %98, i32 0, i32 11
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = call i32 @iounmap(%struct.TYPE_8__* %100)
  %102 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %103 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %102, i32 0, i32 10
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = call i32 @iounmap(%struct.TYPE_8__* %104)
  %106 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %107 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %106, i32 0, i32 9
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @iounmap(%struct.TYPE_8__* %108)
  %110 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %111 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @iounmap(%struct.TYPE_8__* %113)
  %115 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %116 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = call i32 @iounmap(%struct.TYPE_8__* %118)
  %120 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %121 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %154, %124
  %126 = load i32, i32* %3, align 4
  %127 = icmp slt i32 %126, 3
  br i1 %127, label %128, label %157

128:                                              ; preds = %125
  %129 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %130 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %128
  %137 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %138 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %137, i32 0, i32 6
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %146 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %145, i32 0, i32 6
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = call i32 @resource_size(%struct.TYPE_7__* %150)
  %152 = call i32 @release_mem_region(i32 %144, i32 %151)
  br label %153

153:                                              ; preds = %136, %128
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %125

157:                                              ; preds = %125
  br label %158

158:                                              ; preds = %157, %81
  %159 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %160 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pci_dev_put(i32 %161)
  %163 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %164 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @of_node_put(i64 %165)
  %167 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %168 = call i32 @kfree(%struct.snd_pmac* %167)
  ret i32 0
}

declare dso_local i32 @snd_pmac_dbdma_reset(%struct.snd_pmac*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @snd_pmac_sound_feature(%struct.snd_pmac*, i32) #1

declare dso_local i32 @snd_pmac_detach_beep(%struct.snd_pmac*) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @snd_pmac_dbdma_free(%struct.snd_pmac*, i32*) #1

declare dso_local i32 @iounmap(%struct.TYPE_8__*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @kfree(%struct.snd_pmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
