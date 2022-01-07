; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_energy_model.c_em_create_pd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_energy_model.c_em_create_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_perf_domain = type { i64, i64, i32, i32, %struct.em_perf_domain*, i32 }
%struct.em_data_callback = type { i32 (i64*, i64*, i32)* }
%struct.em_cap_state = type { i64, i64, i32, i32, %struct.em_cap_state*, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pd%d: invalid cap. state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pd%d: non-increasing freq: %lu\0A\00", align 1
@EM_CPU_MAX_POWER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"pd%d: invalid power: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"pd%d: hertz/watts ratio non-monotonically decreasing: em_cap_state %d >= em_cap_state%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.em_perf_domain* (i32*, i32, %struct.em_data_callback*)* @em_create_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.em_perf_domain* @em_create_pd(i32* %0, i32 %1, %struct.em_data_callback* %2) #0 {
  %4 = alloca %struct.em_perf_domain*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.em_data_callback*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.em_cap_state*, align 8
  %17 = alloca %struct.em_perf_domain*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.em_data_callback* %2, %struct.em_data_callback** %7, align 8
  %19 = load i64, i64* @ULONG_MAX, align 8
  store i64 %19, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @cpumask_first(i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.em_data_callback*, %struct.em_data_callback** %7, align 8
  %23 = getelementptr inbounds %struct.em_data_callback, %struct.em_data_callback* %22, i32 0, i32 0
  %24 = load i32 (i64*, i64*, i32)*, i32 (i64*, i64*, i32)** %23, align 8
  %25 = icmp ne i32 (i64*, i64*, i32)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store %struct.em_perf_domain* null, %struct.em_perf_domain** %4, align 8
  br label %176

27:                                               ; preds = %3
  %28 = call i64 (...) @cpumask_size()
  %29 = add i64 40, %28
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.em_perf_domain* @kzalloc(i64 %29, i32 %30)
  store %struct.em_perf_domain* %31, %struct.em_perf_domain** %17, align 8
  %32 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %33 = icmp ne %struct.em_perf_domain* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store %struct.em_perf_domain* null, %struct.em_perf_domain** %4, align 8
  br label %176

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.em_perf_domain* @kcalloc(i32 %36, i32 40, i32 %37)
  %39 = bitcast %struct.em_perf_domain* %38 to %struct.em_cap_state*
  store %struct.em_cap_state* %39, %struct.em_cap_state** %16, align 8
  %40 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %41 = icmp ne %struct.em_cap_state* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %173

43:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %107, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %44
  %49 = load %struct.em_data_callback*, %struct.em_data_callback** %7, align 8
  %50 = getelementptr inbounds %struct.em_data_callback, %struct.em_data_callback* %49, i32 0, i32 0
  %51 = load i32 (i64*, i64*, i32)*, i32 (i64*, i64*, i32)** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 %51(i64* %10, i64* %11, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %59)
  br label %169

61:                                               ; preds = %48
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %67)
  br label %169

69:                                               ; preds = %61
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @EM_CPU_MAX_POWER, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %15, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %77, i64 %78)
  br label %169

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %82, i64 %84
  %86 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %12, align 8
  %88 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %88, i64 %90
  %92 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %91, i32 0, i32 1
  store i64 %87, i64* %92, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = udiv i64 %93, %94
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %80
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @pr_warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %80
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %44

112:                                              ; preds = %44
  %113 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %113, i64 %116
  %118 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %148, %112
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %128, i64 %130
  %132 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = mul i64 %127, %133
  %135 = trunc i64 %134 to i32
  %136 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %136, i64 %138
  %140 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @div64_u64(i32 %135, i64 %141)
  %143 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %143, i64 %145
  %147 = getelementptr inbounds %struct.em_cap_state, %struct.em_cap_state* %146, i32 0, i32 5
  store i32 %142, i32* %147, align 8
  br label %148

148:                                              ; preds = %125
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %121

151:                                              ; preds = %121
  %152 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %153 = bitcast %struct.em_cap_state* %152 to %struct.em_perf_domain*
  %154 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %155 = getelementptr inbounds %struct.em_perf_domain, %struct.em_perf_domain* %154, i32 0, i32 4
  store %struct.em_perf_domain* %153, %struct.em_perf_domain** %155, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %158 = getelementptr inbounds %struct.em_perf_domain, %struct.em_perf_domain* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %160 = getelementptr inbounds %struct.em_perf_domain, %struct.em_perf_domain* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @to_cpumask(i32 %161)
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @cpumask_copy(i32 %162, i32* %163)
  %165 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @em_debug_create_pd(%struct.em_perf_domain* %165, i32 %166)
  %168 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  store %struct.em_perf_domain* %168, %struct.em_perf_domain** %4, align 8
  br label %176

169:                                              ; preds = %76, %65, %56
  %170 = load %struct.em_cap_state*, %struct.em_cap_state** %16, align 8
  %171 = bitcast %struct.em_cap_state* %170 to %struct.em_perf_domain*
  %172 = call i32 @kfree(%struct.em_perf_domain* %171)
  br label %173

173:                                              ; preds = %169, %42
  %174 = load %struct.em_perf_domain*, %struct.em_perf_domain** %17, align 8
  %175 = call i32 @kfree(%struct.em_perf_domain* %174)
  store %struct.em_perf_domain* null, %struct.em_perf_domain** %4, align 8
  br label %176

176:                                              ; preds = %173, %151, %34, %26
  %177 = load %struct.em_perf_domain*, %struct.em_perf_domain** %4, align 8
  ret %struct.em_perf_domain* %177
}

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local %struct.em_perf_domain* @kzalloc(i64, i32) #1

declare dso_local i64 @cpumask_size(...) #1

declare dso_local %struct.em_perf_domain* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @div64_u64(i32, i64) #1

declare dso_local i32 @cpumask_copy(i32, i32*) #1

declare dso_local i32 @to_cpumask(i32) #1

declare dso_local i32 @em_debug_create_pd(%struct.em_perf_domain*, i32) #1

declare dso_local i32 @kfree(%struct.em_perf_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
