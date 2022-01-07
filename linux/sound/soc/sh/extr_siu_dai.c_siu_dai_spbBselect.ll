; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_dai_spbBselect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_dai_spbBselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siu_info = type { i32, %struct.siu_firmware }
%struct.siu_firmware = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.siu_port = type { i32, i32 }

@siu_i2s_data = common dso_local global %struct.siu_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siu_port*)* @siu_dai_spbBselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_dai_spbBselect(%struct.siu_port* %0) #0 {
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
  store i64 7, i64* %6, align 8
  br label %19

18:                                               ; preds = %1
  store i64 8, i64* %6, align 8
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
  %37 = or i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %42 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 6
  store i64 %47, i64* %49, align 8
  %50 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %51 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.siu_port*, %struct.siu_port** %2, align 8
  %58 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.siu_firmware*, %struct.siu_firmware** %4, align 8
  %62 = getelementptr inbounds %struct.siu_firmware, %struct.siu_firmware* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.siu_port*, %struct.siu_port** %2, align 8
  %69 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
