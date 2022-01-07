; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_dai_spbAselect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_dai_spbAselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siu_info = type { i32, %struct.siu_firmware }
%struct.siu_firmware = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }
%struct.siu_port = type { i32, i32 }

@siu_i2s_data = common dso_local global %struct.siu_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siu_port*)* @siu_dai_spbAselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_dai_spbAselect(%struct.siu_port* %0) #0 {
  %2 = alloca %struct.siu_port*, align 8
  %3 = alloca %struct.siu_info*, align 8
  %4 = alloca %struct.siu_firmware*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.siu_port* %0, %struct.siu_port** %2, align 8
  %7 = load %struct.siu_info*, %struct.siu_info** @siu_i2s_data, align 8
  store %struct.siu_info* %7, %struct.siu_info** %3, align 8
  %8 = load %struct.siu_info*, %struct.siu_info** %3, align 8
  %9 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %8, i32 0, i32 1
  store %struct.siu_firmware* %9, %struct.siu_firmware** %4, align 8
  %10 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %11 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %5, align 8
  %13 = load %struct.siu_info*, %struct.siu_info** %3, align 8
  %14 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i64 1, i64* %6, align 8
  br label %19

18:                                               ; preds = %1
  store i64 2, i64* %6, align 8
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %21 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 16
  %28 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %29 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %27, %35
  %37 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %38 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 7
  %45 = or i32 %36, %44
  %46 = or i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %51 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %54, i64* %56, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  store i64 134217728, i64* %58, align 8
  %59 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %60 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %67 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 4
  store i64 %70, i64* %72, align 8
  %73 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %74 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 7
  store i64 %79, i64* %81, align 8
  %82 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %83 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.siu_port*, %struct.siu_port** %2, align 8
  %90 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %94 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.siu_port*, %struct.siu_port** %2, align 8
  %101 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
