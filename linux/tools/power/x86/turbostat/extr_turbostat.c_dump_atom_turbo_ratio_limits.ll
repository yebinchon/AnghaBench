; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_atom_turbo_ratio_limits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_atom_turbo_ratio_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_ATOM_CORE_RATIOS = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cpu%d: MSR_ATOM_CORE_RATIOS: 0x%08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%d * %.1f = %.1f MHz minimum operating frequency\0A\00", align 1
@bclk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz low frequency mode (LFM)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%d * %.1f = %.1f MHz base frequency\0A\00", align 1
@MSR_ATOM_CORE_TURBO_RATIOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"cpu%d: MSR_ATOM_CORE_TURBO_RATIOS: 0x%08llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz max turbo 4 active cores\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz max turbo 3 active cores\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz max turbo 2 active cores\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"%d * %.1f = %.1f MHz max turbo 1 active core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_atom_turbo_ratio_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_atom_turbo_ratio_limits() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @base_cpu, align 4
  %4 = load i32, i32* @MSR_ATOM_CORE_RATIOS, align 4
  %5 = call i32 @get_msr(i32 %3, i32 %4, i64* %1)
  %6 = load i32, i32* @outf, align 4
  %7 = load i32, i32* @base_cpu, align 4
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, 4294967295
  %10 = trunc i64 %9 to i32
  %11 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load i64, i64* %1, align 8
  %13 = lshr i64 %12, 0
  %14 = and i64 %13, 63
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %0
  %19 = load i32, i32* @outf, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @bclk, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @bclk, align 4
  %24 = mul i32 %22, %23
  %25 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %0
  %27 = load i64, i64* %1, align 8
  %28 = lshr i64 %27, 8
  %29 = and i64 %28, 63
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @outf, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @bclk, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @bclk, align 4
  %39 = mul i32 %37, %38
  %40 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i64, i64* %1, align 8
  %43 = lshr i64 %42, 16
  %44 = and i64 %43, 63
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @outf, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @bclk, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @bclk, align 4
  %54 = mul i32 %52, %53
  %55 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load i32, i32* @base_cpu, align 4
  %58 = load i32, i32* @MSR_ATOM_CORE_TURBO_RATIOS, align 4
  %59 = call i32 @get_msr(i32 %57, i32 %58, i64* %1)
  %60 = load i32, i32* @outf, align 4
  %61 = load i32, i32* @base_cpu, align 4
  %62 = load i64, i64* %1, align 8
  %63 = and i64 %62, 4294967295
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i64, i64* %1, align 8
  %67 = lshr i64 %66, 24
  %68 = and i64 %67, 63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %56
  %73 = load i32, i32* @outf, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @bclk, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @bclk, align 4
  %78 = mul i32 %76, %77
  %79 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %56
  %81 = load i64, i64* %1, align 8
  %82 = lshr i64 %81, 16
  %83 = and i64 %82, 63
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i32, i32* @outf, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @bclk, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @bclk, align 4
  %93 = mul i32 %91, %92
  %94 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %80
  %96 = load i64, i64* %1, align 8
  %97 = lshr i64 %96, 8
  %98 = and i64 %97, 63
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i32, i32* @outf, align 4
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @bclk, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @bclk, align 4
  %108 = mul i32 %106, %107
  %109 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load i64, i64* %1, align 8
  %112 = lshr i64 %111, 0
  %113 = and i64 %112, 63
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load i32, i32* @outf, align 4
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @bclk, align 4
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @bclk, align 4
  %123 = mul i32 %121, %122
  %124 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %119, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %110
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
