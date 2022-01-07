; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_check_coeff_flags.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_check_coeff_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.wm_coeff_parsed_coeff = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Illegal flags 0x%x for control type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, %struct.wm_coeff_parsed_coeff*, i32, i32)* @wm_adsp_check_coeff_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_check_coeff_flags(%struct.wm_adsp* %0, %struct.wm_coeff_parsed_coeff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca %struct.wm_coeff_parsed_coeff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %6, align 8
  store %struct.wm_coeff_parsed_coeff* %1, %struct.wm_coeff_parsed_coeff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.wm_coeff_parsed_coeff*, %struct.wm_coeff_parsed_coeff** %7, align 8
  %11 = getelementptr inbounds %struct.wm_coeff_parsed_coeff, %struct.wm_coeff_parsed_coeff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load %struct.wm_coeff_parsed_coeff*, %struct.wm_coeff_parsed_coeff** %7, align 8
  %18 = getelementptr inbounds %struct.wm_coeff_parsed_coeff, %struct.wm_coeff_parsed_coeff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %16, %4
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %26 = load %struct.wm_coeff_parsed_coeff*, %struct.wm_coeff_parsed_coeff** %7, align 8
  %27 = getelementptr inbounds %struct.wm_coeff_parsed_coeff, %struct.wm_coeff_parsed_coeff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wm_coeff_parsed_coeff*, %struct.wm_coeff_parsed_coeff** %7, align 8
  %30 = getelementptr inbounds %struct.wm_coeff_parsed_coeff, %struct.wm_coeff_parsed_coeff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @adsp_err(%struct.wm_adsp* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
