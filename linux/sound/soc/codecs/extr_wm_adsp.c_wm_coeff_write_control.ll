; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_write_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_coeff_ctl = type { %struct.wm_adsp* }
%struct.wm_adsp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to write %zu bytes to %x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Wrote %zu bytes to %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_coeff_ctl*, i8*, i64)* @wm_coeff_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_write_control(%struct.wm_coeff_ctl* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm_coeff_ctl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wm_adsp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm_coeff_ctl* %0, %struct.wm_coeff_ctl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %13 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %12, i32 0, i32 0
  %14 = load %struct.wm_adsp*, %struct.wm_adsp** %13, align 8
  store %struct.wm_adsp* %14, %struct.wm_adsp** %8, align 8
  %15 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %16 = call i32 @wm_coeff_base_reg(%struct.wm_coeff_ctl* %15, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @GFP_DMA, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @kmemdup(i8* %22, i64 %23, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %21
  %34 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %35 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @regmap_raw_write(i32 %36, i32 %37, i8* %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @adsp_err(%struct.wm_adsp* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46, i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %33
  %53 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @adsp_dbg(%struct.wm_adsp* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @kfree(i8* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %43, %30, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @wm_coeff_base_reg(%struct.wm_coeff_ctl*, i32*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i8*, i64) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i64, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
