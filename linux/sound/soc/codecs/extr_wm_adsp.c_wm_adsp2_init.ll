; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, i32, i32*, i64, i32 }

@ADSP2_CONTROL = common dso_local global i64 0, align 8
@ADSP2_MEM_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to clear memory retention: %d\0A\00", align 1
@wm_adsp2_ops = common dso_local global i32* null, align 8
@wm_adsp_boot_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp2_init(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %5 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %6 = call i32 @wm_adsp_common_init(%struct.wm_adsp* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %13 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %43 [
    i32 0, label %15
    i32 1, label %38
  ]

15:                                               ; preds = %11
  %16 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %17 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %20 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ADSP2_CONTROL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @ADSP2_MEM_ENA, align 4
  %25 = call i32 @regmap_update_bits(i32 %18, i64 %23, i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @adsp_err(%struct.wm_adsp* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %15
  %34 = load i32*, i32** @wm_adsp2_ops, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %37 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  br label %48

38:                                               ; preds = %11
  %39 = load i32*, i32** @wm_adsp2_ops, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %42 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  br label %48

43:                                               ; preds = %11
  %44 = load i32*, i32** @wm_adsp2_ops, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %47 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %43, %38, %33
  %49 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %50 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %49, i32 0, i32 1
  %51 = load i32, i32* @wm_adsp_boot_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %28, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @wm_adsp_common_init(%struct.wm_adsp*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
