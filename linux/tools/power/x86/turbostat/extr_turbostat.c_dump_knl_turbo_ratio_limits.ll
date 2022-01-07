; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_knl_turbo_ratio_limits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_knl_turbo_ratio_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_TURBO_RATIO_LIMIT = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpu%d: MSR_TURBO_RATIO_LIMIT: 0x%08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo %d active cores\0A\00", align 1
@bclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_knl_turbo_ratio_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_knl_turbo_ratio_limits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  %8 = alloca [7 x i32], align 16
  store i32 7, i32* %1, align 4
  %9 = load i32, i32* @base_cpu, align 4
  %10 = load i32, i32* @MSR_TURBO_RATIO_LIMIT, align 4
  %11 = call i32 @get_msr(i32 %9, i32 %10, i64* %2)
  %12 = load i32, i32* @outf, align 4
  %13 = load i32, i32* @base_cpu, align 4
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  store i32 0, i32* %6, align 4
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, 255
  %19 = lshr i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %2, align 8
  %25 = lshr i64 %24, 8
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  store i32 16, i32* %5, align 4
  br label %31

31:                                               ; preds = %70, %0
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i64, i64* %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %35, %37
  %39 = and i64 %38, 31
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load i64, i64* %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 5
  %44 = zext i32 %43 to i64
  %45 = lshr i64 %41, %44
  %46 = and i64 %45, 7
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %34
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 8
  store i32 %72, i32* %5, align 4
  br label %31

73:                                               ; preds = %31
  store i32 6, i32* %5, align 4
  br label %74

74:                                               ; preds = %111, %73
  %75 = load i32, i32* %5, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %92, label %110

91:                                               ; preds = %77
  br i1 true, label %92, label %110

92:                                               ; preds = %91, %80
  %93 = load i32, i32* @outf, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @bclk, align 4
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @bclk, align 4
  %104 = mul i32 %102, %103
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98, i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %92, %91, %80
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  br label %74

114:                                              ; preds = %74
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
