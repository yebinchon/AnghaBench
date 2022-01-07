; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_region_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_region_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp_region = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unknown memory region type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp_region*, i32)* @wm_halo_region_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_halo_region_to_reg(%struct.wm_adsp_region* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm_adsp_region*, align 8
  %5 = alloca i32, align 4
  store %struct.wm_adsp_region* %0, %struct.wm_adsp_region** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %4, align 8
  %7 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 132, label %9
    i32 131, label %9
    i32 129, label %16
    i32 128, label %16
    i32 130, label %24
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %4, align 8
  %11 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul i32 %13, 4
  %15 = add i32 %12, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2, %2
  %17 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %4, align 8
  %18 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 %20, 3
  %22 = add i32 %19, %21
  %23 = and i32 %22, -4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %4, align 8
  %26 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %28, 5
  %30 = add i32 %27, %29
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %2
  %32 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %24, %16, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
