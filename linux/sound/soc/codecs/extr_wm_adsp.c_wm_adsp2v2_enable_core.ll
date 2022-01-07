; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2v2_enable_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2v2_enable_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i64, i32 }

@ADSP2_STATUS1 = common dso_local global i64 0, align 8
@ADSP2_RAM_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to start DSP RAM\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RAM ready after %d polls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp2v2_enable_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp2v2_enable_core(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %12 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %15 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ADSP2_STATUS1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_read(i32 %13, i64 %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ADSP2_RAM_RDY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %35

30:                                               ; preds = %24
  %31 = call i32 @usleep_range(i32 250, i32 500)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %29, %7
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ADSP2_RAM_RDY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %42 = call i32 @adsp_err(%struct.wm_adsp* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @adsp_dbg(%struct.wm_adsp* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %40, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
