; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_schedule_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_schedule_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5514_dsp = type { i32, i32, i32, i32, i32, i64, i32 }

@RT5514_BUFFER_VOICE_BASE = common dso_local global i32 0, align 4
@RT5514_BUFFER_VOICE_LIMIT = common dso_local global i32 0, align 4
@RT5514_BUFFER_VOICE_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5514_dsp*)* @rt5514_schedule_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5514_schedule_copy(%struct.rt5514_dsp* %0) #0 {
  %2 = alloca %struct.rt5514_dsp*, align 8
  %3 = alloca [8 x i32], align 16
  store %struct.rt5514_dsp* %0, %struct.rt5514_dsp** %2, align 8
  %4 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %5 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %115

9:                                                ; preds = %1
  %10 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %11 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @RT5514_BUFFER_VOICE_BASE, align 4
  %13 = bitcast [8 x i32]* %3 to i32*
  %14 = call i32 @rt5514_spi_burst_read(i32 %12, i32* %13, i32 32)
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 16
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 24
  %28 = or i32 %24, %27
  %29 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %30 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @RT5514_BUFFER_VOICE_LIMIT, align 4
  %32 = bitcast [8 x i32]* %3 to i32*
  %33 = call i32 @rt5514_spi_burst_read(i32 %31, i32* %32, i32 32)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 16
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = or i32 %43, %46
  %48 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %49 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @RT5514_BUFFER_VOICE_WP, align 4
  %51 = bitcast [8 x i32]* %3 to i32*
  %52 = call i32 @rt5514_spi_burst_read(i32 %50, i32* %51, i32 32)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 16
  %62 = or i32 %58, %61
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 24
  %66 = or i32 %62, %65
  %67 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %68 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %70 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = srem i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %9
  %75 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %76 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 8
  %79 = mul nsw i32 %78, 8
  %80 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %81 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %74, %9
  %83 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %84 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %87 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %91 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %93 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %82
  %97 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %98 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %103 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %108 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.rt5514_dsp*, %struct.rt5514_dsp** %2, align 8
  %113 = getelementptr inbounds %struct.rt5514_dsp, %struct.rt5514_dsp* %112, i32 0, i32 4
  %114 = call i32 @schedule_delayed_work(i32* %113, i32 0)
  br label %115

115:                                              ; preds = %8, %111, %106, %101, %96, %82
  ret void
}

declare dso_local i32 @rt5514_spi_burst_read(i32, i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
