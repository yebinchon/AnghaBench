; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_runtime = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.control_runtime* }
%struct.TYPE_3__ = type { i32 }
%struct.control_runtime = type { i32, i32 (%struct.control_runtime*)*, i32 (%struct.control_runtime*, i64)*, i32 (%struct.control_runtime*, i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [55 x i8] c"error stopping streaming while setting samplerate %d.\0A\00", align 1
@rates = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"error setting samplerate %d.\0A\00", align 1
@OUT_N_CHANNELS = common dso_local global i32 0, align 4
@IN_N_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"error initializing channels while setting samplerate %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"error starting streaming while setting samplerate %d.\0A\00", align 1
@rates_in_packet_size = common dso_local global i32* null, align 8
@rates_out_packet_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_runtime*)* @usb6fire_pcm_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_set_rate(%struct.pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.control_runtime*, align 8
  store %struct.pcm_runtime* %0, %struct.pcm_runtime** %3, align 8
  %6 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %7 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.control_runtime*, %struct.control_runtime** %9, align 8
  store %struct.control_runtime* %10, %struct.control_runtime** %5, align 8
  %11 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %13, i32 0, i32 1
  %15 = load i32 (%struct.control_runtime*)*, i32 (%struct.control_runtime*)** %14, align 8
  %16 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %17 = call i32 %15(%struct.control_runtime* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** @rates, align 8
  %28 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %134

35:                                               ; preds = %1
  %36 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %36, i32 0, i32 2
  %38 = load i32 (%struct.control_runtime*, i64)*, i32 (%struct.control_runtime*, i64)** %37, align 8
  %39 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %40 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 %38(%struct.control_runtime* %39, i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %35
  %47 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** @rates, align 8
  %54 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %55 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %134

61:                                               ; preds = %35
  %62 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %62, i32 0, i32 3
  %64 = load i32 (%struct.control_runtime*, i32, i32, i32, i32)*, i32 (%struct.control_runtime*, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %66 = load i32, i32* @OUT_N_CHANNELS, align 4
  %67 = load i32, i32* @IN_N_CHANNELS, align 4
  %68 = call i32 %64(%struct.control_runtime* %65, i32 %66, i32 %67, i32 0, i32 0)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %73 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** @rates, align 8
  %79 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %80 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %134

86:                                               ; preds = %61
  %87 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %88 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %90 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %89, i32 0, i32 1
  %91 = load i32 (%struct.control_runtime*)*, i32 (%struct.control_runtime*)** %90, align 8
  %92 = load %struct.control_runtime*, %struct.control_runtime** %5, align 8
  %93 = call i32 %91(%struct.control_runtime* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %86
  %97 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %98 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** @rates, align 8
  %104 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %105 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %134

111:                                              ; preds = %86
  %112 = load i32, i32* @IN_N_CHANNELS, align 4
  %113 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %114 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @OUT_N_CHANNELS, align 4
  %116 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %117 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** @rates_in_packet_size, align 8
  %119 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %120 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %125 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** @rates_out_packet_size, align 8
  %127 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %128 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %133 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %111, %96, %71, %46, %20
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
