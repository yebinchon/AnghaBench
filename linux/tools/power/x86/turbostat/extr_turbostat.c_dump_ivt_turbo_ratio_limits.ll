; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_ivt_turbo_ratio_limits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_ivt_turbo_ratio_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_TURBO_RATIO_LIMIT1 = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cpu%d: MSR_TURBO_RATIO_LIMIT1: 0x%08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 16 active cores\0A\00", align 1
@bclk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 15 active cores\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 14 active cores\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 13 active cores\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 12 active cores\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 11 active cores\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo 10 active cores\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz max turbo 9 active cores\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_ivt_turbo_ratio_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ivt_turbo_ratio_limits() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @base_cpu, align 4
  %4 = load i32, i32* @MSR_TURBO_RATIO_LIMIT1, align 4
  %5 = call i32 @get_msr(i32 %3, i32 %4, i64* %1)
  %6 = load i32, i32* @outf, align 4
  %7 = load i32, i32* @base_cpu, align 4
  %8 = load i64, i64* %1, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9)
  %11 = load i64, i64* %1, align 8
  %12 = lshr i64 %11, 56
  %13 = and i64 %12, 255
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load i32, i32* @outf, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @bclk, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @bclk, align 4
  %23 = mul i32 %21, %22
  %24 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %17, %0
  %26 = load i64, i64* %1, align 8
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* @outf, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @bclk, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @bclk, align 4
  %38 = mul i32 %36, %37
  %39 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i64, i64* %1, align 8
  %42 = lshr i64 %41, 40
  %43 = and i64 %42, 255
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* @outf, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @bclk, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @bclk, align 4
  %53 = mul i32 %51, %52
  %54 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i64, i64* %1, align 8
  %57 = lshr i64 %56, 32
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* @outf, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @bclk, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @bclk, align 4
  %68 = mul i32 %66, %67
  %69 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load i64, i64* %1, align 8
  %72 = lshr i64 %71, 24
  %73 = and i64 %72, 255
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @outf, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @bclk, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @bclk, align 4
  %83 = mul i32 %81, %82
  %84 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %77, %70
  %86 = load i64, i64* %1, align 8
  %87 = lshr i64 %86, 16
  %88 = and i64 %87, 255
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32, i32* @outf, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @bclk, align 4
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @bclk, align 4
  %98 = mul i32 %96, %97
  %99 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %92, %85
  %101 = load i64, i64* %1, align 8
  %102 = lshr i64 %101, 8
  %103 = and i64 %102, 255
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32, i32* @outf, align 4
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @bclk, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @bclk, align 4
  %113 = mul i32 %111, %112
  %114 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %107, %100
  %116 = load i64, i64* %1, align 8
  %117 = lshr i64 %116, 0
  %118 = and i64 %117, 255
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %2, align 4
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i32, i32* @outf, align 4
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @bclk, align 4
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @bclk, align 4
  %128 = mul i32 %126, %127
  %129 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %124, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %122, %115
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
