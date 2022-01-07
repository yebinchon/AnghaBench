; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_convert_flags.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_convert_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADSP_MAX_STD_CTRL_SIZE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_WRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_VOLATILE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@WMFW_CTL_FLAG_WRITEABLE = common dso_local global i32 0, align 4
@WMFW_CTL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @wmfw_convert_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmfw_convert_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ADSP_MAX_STD_CTRL_SIZE, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_WRITE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @WMFW_CTL_FLAG_WRITEABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @WMFW_CTL_FLAG_VOLATILE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %54

46:                                               ; preds = %21
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %45
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
