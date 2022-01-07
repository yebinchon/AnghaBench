; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@R_DACCRS = common dso_local global i32 0, align 4
@R_DACCRADD = common dso_local global i32 0, align 4
@R_DACCRWDL = common dso_local global i32 0, align 4
@COEFF_RAM_COEFF_COUNT = common dso_local global i32 0, align 4
@R_SPKCRS = common dso_local global i32 0, align 4
@R_SPKCRADD = common dso_local global i32 0, align 4
@R_SPKCRWDL = common dso_local global i32 0, align 4
@R_SUBCRS = common dso_local global i32 0, align 4
@R_SUBCRADD = common dso_local global i32 0, align 4
@R_SUBCRWDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.tscs454*)* @coeff_ram_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coeff_ram_sync(%struct.snd_soc_component* %0, %struct.tscs454* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.tscs454*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.tscs454* %1, %struct.tscs454** %5, align 8
  %7 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %8 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %12 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %19 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @R_DACCRS, align 4
  %23 = load i32, i32* @R_DACCRADD, align 4
  %24 = load i32, i32* @R_DACCRWDL, align 4
  %25 = load i32, i32* @COEFF_RAM_COEFF_COUNT, align 4
  %26 = call i32 @write_coeff_ram(%struct.snd_soc_component* %17, i32 %21, i32 %22, i32 %23, i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %31 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %109

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %38 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %42 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %46 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %36
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %52 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %53 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @R_SPKCRS, align 4
  %57 = load i32, i32* @R_SPKCRADD, align 4
  %58 = load i32, i32* @R_SPKCRWDL, align 4
  %59 = load i32, i32* @COEFF_RAM_COEFF_COUNT, align 4
  %60 = call i32 @write_coeff_ram(%struct.snd_soc_component* %51, i32 %55, i32 %56, i32 %57, i32 %58, i32 0, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %65 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %109

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %72 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %76 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %80 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %70
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %86 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %87 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @R_SUBCRS, align 4
  %91 = load i32, i32* @R_SUBCRADD, align 4
  %92 = load i32, i32* @R_SUBCRWDL, align 4
  %93 = load i32, i32* @COEFF_RAM_COEFF_COUNT, align 4
  %94 = call i32 @write_coeff_ram(%struct.snd_soc_component* %85, i32 %89, i32 %90, i32 %91, i32 %92, i32 0, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %99 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %109

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.tscs454*, %struct.tscs454** %5, align 8
  %106 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %97, %63, %29
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_coeff_ram(%struct.snd_soc_component*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
