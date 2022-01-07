; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_turbo_ratio_limits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_turbo_ratio_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_TURBO_RATIO_LIMIT = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpu%d: MSR_TURBO_RATIO_LIMIT: 0x%08llx\0A\00", align 1
@MSR_TURBO_RATIO_LIMIT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cpu%d: MSR_TURBO_RATIO_LIMIT1: 0x%08llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%d * %.1f = %.1f MHz max turbo %d active cores\0A\00", align 1
@bclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_turbo_ratio_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_turbo_ratio_limits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @base_cpu, align 4
  %10 = load i32, i32* @MSR_TURBO_RATIO_LIMIT, align 4
  %11 = call i32 @get_msr(i32 %9, i32 %10, i64* %5)
  %12 = load i32, i32* @outf, align 4
  %13 = load i32, i32* @base_cpu, align 4
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @has_turbo_ratio_group_limits(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @base_cpu, align 4
  %23 = load i32, i32* @MSR_TURBO_RATIO_LIMIT1, align 4
  %24 = call i32 @get_msr(i32 %22, i32 %23, i64* %6)
  %25 = load i32, i32* @outf, align 4
  %26 = load i32, i32* @base_cpu, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  br label %31

30:                                               ; preds = %2
  store i64 578437695752307201, i64* %6, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i64, i64* %5, align 8
  %33 = lshr i64 %32, 56
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 56
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load i32, i32* @outf, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @bclk, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @bclk, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %31
  %52 = load i64, i64* %5, align 8
  %53 = lshr i64 %52, 48
  %54 = and i64 %53, 255
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %6, align 8
  %57 = lshr i64 %56, 48
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load i32, i32* @outf, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @bclk, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @bclk, align 4
  %68 = mul i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = load i64, i64* %5, align 8
  %73 = lshr i64 %72, 40
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i64, i64* %6, align 8
  %77 = lshr i64 %76, 40
  %78 = and i64 %77, 255
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load i32, i32* @outf, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @bclk, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @bclk, align 4
  %88 = mul i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %71
  %92 = load i64, i64* %5, align 8
  %93 = lshr i64 %92, 32
  %94 = and i64 %93, 255
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i64, i64* %6, align 8
  %97 = lshr i64 %96, 32
  %98 = and i64 %97, 255
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load i32, i32* @outf, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @bclk, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @bclk, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %91
  %112 = load i64, i64* %5, align 8
  %113 = lshr i64 %112, 24
  %114 = and i64 %113, 255
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load i64, i64* %6, align 8
  %117 = lshr i64 %116, 24
  %118 = and i64 %117, 255
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %111
  %123 = load i32, i32* @outf, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @bclk, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @bclk, align 4
  %128 = mul i32 %126, %127
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %111
  %132 = load i64, i64* %5, align 8
  %133 = lshr i64 %132, 16
  %134 = and i64 %133, 255
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  %136 = load i64, i64* %6, align 8
  %137 = lshr i64 %136, 16
  %138 = and i64 %137, 255
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %131
  %143 = load i32, i32* @outf, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @bclk, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @bclk, align 4
  %148 = mul i32 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %142, %131
  %152 = load i64, i64* %5, align 8
  %153 = lshr i64 %152, 8
  %154 = and i64 %153, 255
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %7, align 4
  %156 = load i64, i64* %6, align 8
  %157 = lshr i64 %156, 8
  %158 = and i64 %157, 255
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %151
  %163 = load i32, i32* @outf, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @bclk, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @bclk, align 4
  %168 = mul i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %165, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %162, %151
  %172 = load i64, i64* %5, align 8
  %173 = lshr i64 %172, 0
  %174 = and i64 %173, 255
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %7, align 4
  %176 = load i64, i64* %6, align 8
  %177 = lshr i64 %176, 0
  %178 = and i64 %177, 255
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load i32, i32* @outf, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @bclk, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @bclk, align 4
  %188 = mul i32 %186, %187
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %185, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %171
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @has_turbo_ratio_group_limits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
