; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_read_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_read_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_coeff_ctl = type { %struct.wm_adsp* }
%struct.wm_adsp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read %zu bytes from %x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Read %zu bytes from %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_coeff_ctl*, i8*, i64)* @wm_coeff_read_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_read_control(%struct.wm_coeff_ctl* %0, i8* %1, i64 %2) #0 {
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
  br label %62

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @GFP_DMA, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @kmalloc(i64 %22, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %21
  %33 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %34 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @regmap_raw_read(i32 %35, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @adsp_err(%struct.wm_adsp* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %45, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %32
  %52 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @adsp_dbg(%struct.wm_adsp* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @kfree(i8* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %42, %29, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @wm_coeff_base_reg(%struct.wm_coeff_ctl*, i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i8*, i64) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i64, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
