; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_get_trl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_get_trl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_GET_TURBO_LIMIT_RATIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cpu:%d CONFIG_TDP_GET_TURBO_LIMIT_RATIOS req:%x resp:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cpu:%d CONFIG_TDP_GET_TURBO_LIMIT req:%x resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_get_trl(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CONFIG_TDP, align 4
  %19 = load i32, i32* @CONFIG_TDP_GET_TURBO_LIMIT_RATIOS, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @isst_send_mbox_command(i32 %17, i32 %18, i32 %19, i32 0, i32 %20, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %97

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @debug_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @GENMASK(i32 7, i32 0)
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @GENMASK(i32 15, i32 8)
  %38 = and i32 %36, %37
  %39 = lshr i32 %38, 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @GENMASK(i32 23, i32 16)
  %44 = and i32 %42, %43
  %45 = lshr i32 %44, 16
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @GENMASK(i32 31, i32 24)
  %50 = and i32 %48, %49
  %51 = lshr i32 %50, 24
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 8)
  %56 = or i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %56, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CONFIG_TDP, align 4
  %62 = load i32, i32* @CONFIG_TDP_GET_TURBO_LIMIT_RATIOS, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @isst_send_mbox_command(i32 %60, i32 %61, i32 %62, i32 0, i32 %63, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %26
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %97

69:                                               ; preds = %26
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @debug_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @GENMASK(i32 7, i32 0)
  %76 = and i32 %74, %75
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @GENMASK(i32 15, i32 8)
  %81 = and i32 %79, %80
  %82 = lshr i32 %81, 8
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @GENMASK(i32 23, i32 16)
  %87 = and i32 %85, %86
  %88 = lshr i32 %87, 16
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @GENMASK(i32 31, i32 24)
  %93 = and i32 %91, %92
  %94 = lshr i32 %93, 24
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %69, %67, %24
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
