; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_base_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_base_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_coeff_ctl = type { i64, %struct.wm_adsp_alg_region, %struct.wm_adsp* }
%struct.wm_adsp_alg_region = type { i64, i32 }
%struct.wm_adsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wm_adsp_region*, i64)* }
%struct.wm_adsp_region = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"No base for region %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_coeff_ctl*, i32*)* @wm_coeff_base_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_base_reg(%struct.wm_coeff_ctl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm_coeff_ctl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wm_adsp_alg_region*, align 8
  %7 = alloca %struct.wm_adsp*, align 8
  %8 = alloca %struct.wm_adsp_region*, align 8
  store %struct.wm_coeff_ctl* %0, %struct.wm_coeff_ctl** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %4, align 8
  %10 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %9, i32 0, i32 1
  store %struct.wm_adsp_alg_region* %10, %struct.wm_adsp_alg_region** %6, align 8
  %11 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %4, align 8
  %12 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %11, i32 0, i32 2
  %13 = load %struct.wm_adsp*, %struct.wm_adsp** %12, align 8
  store %struct.wm_adsp* %13, %struct.wm_adsp** %7, align 8
  %14 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %15 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %16 = getelementptr inbounds %struct.wm_adsp_alg_region, %struct.wm_adsp_alg_region* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %14, i32 %17)
  store %struct.wm_adsp_region* %18, %struct.wm_adsp_region** %8, align 8
  %19 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %8, align 8
  %20 = icmp ne %struct.wm_adsp_region* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %23 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %24 = getelementptr inbounds %struct.wm_adsp_alg_region, %struct.wm_adsp_alg_region* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @adsp_err(%struct.wm_adsp* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %31 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.wm_adsp_region*, i64)*, i32 (%struct.wm_adsp_region*, i64)** %33, align 8
  %35 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %8, align 8
  %36 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %4, align 8
  %37 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.wm_adsp_alg_region, %struct.wm_adsp_alg_region* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %4, align 8
  %41 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 %34(%struct.wm_adsp_region* %35, i64 %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %29, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
