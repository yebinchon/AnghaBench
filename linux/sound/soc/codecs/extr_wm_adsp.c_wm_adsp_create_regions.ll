; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_create_regions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_create_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.wm_adsp_alg_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32, i32, i32*, i32*)* @wm_adsp_create_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_create_regions(%struct.wm_adsp* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm_adsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wm_adsp_alg_region*, align 8
  %13 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %39, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.wm_adsp_alg_region* @wm_adsp_create_region(%struct.wm_adsp* %19, i32 %24, i32 %25, i32 %30)
  store %struct.wm_adsp_alg_region* %31, %struct.wm_adsp_alg_region** %12, align 8
  %32 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %12, align 8
  %33 = call i64 @IS_ERR(%struct.wm_adsp_alg_region* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %12, align 8
  %37 = call i32 @PTR_ERR(%struct.wm_adsp_alg_region* %36)
  store i32 %37, i32* %6, align 4
  br label %43

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.wm_adsp_alg_region* @wm_adsp_create_region(%struct.wm_adsp*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wm_adsp_alg_region*) #1

declare dso_local i32 @PTR_ERR(%struct.wm_adsp_alg_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
