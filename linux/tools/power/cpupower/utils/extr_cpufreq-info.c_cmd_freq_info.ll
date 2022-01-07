; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_cmd_freq_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_cmd_freq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"oefwldpgrasmybn\00", align 1
@info_opts = common dso_local global i32 0, align 4
@no_rounding = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid or unknown argument\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@cpus_chosen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"The argument passed to this tool can't be combined with passing a --cpu argument\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"You can't specify more than one --cpu parameter and/or\0Amore than one output-specific argument\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"analyzing CPU %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" *is offline\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_freq_info(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* @info_opts, align 4
  %15 = call i32 @getopt_long(i32 %12, i8** %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %31 [
    i32 63, label %17
    i32 -1, label %18
    i32 98, label %19
    i32 111, label %19
    i32 97, label %19
    i32 114, label %19
    i32 103, label %19
    i32 112, label %19
    i32 100, label %19
    i32 108, label %19
    i32 119, label %19
    i32 102, label %19
    i32 101, label %19
    i32 115, label %19
    i32 121, label %19
    i32 109, label %25
    i32 110, label %30
  ]

17:                                               ; preds = %11
  store i32 63, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %35

18:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %35

19:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %10, align 4
  br label %35

25:                                               ; preds = %11
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %35

29:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %35

30:                                               ; preds = %11
  store i32 1, i32* @no_rounding, align 4
  br label %35

31:                                               ; preds = %11
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %34, i32* %3, align 4
  br label %153

35:                                               ; preds = %30, %29, %28, %23, %22, %18, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %11, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %52 [
    i32 111, label %41
    i32 0, label %51
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @cpus_chosen, align 4
  %43 = call i64 @bitmask_isallclear(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %153

50:                                               ; preds = %41
  br label %52

51:                                               ; preds = %39
  store i32 101, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %39, %50
  store i32 0, i32* %6, align 4
  %53 = load i32, i32* @cpus_chosen, align 4
  %54 = call i64 @bitmask_isallclear(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @cpus_chosen, align 4
  %58 = call i32 @bitmask_setbit(i32 %57, i32 0)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %10, align 4
  switch i32 %60, label %74 [
    i32 -1, label %61
    i32 63, label %66
    i32 111, label %71
  ]

61:                                               ; preds = %59
  %62 = call i8* @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @printf(i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %153

66:                                               ; preds = %59
  %67 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %153

71:                                               ; preds = %59
  %72 = call i32 (...) @proc_cpufreq_output()
  %73 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %153

74:                                               ; preds = %59
  %75 = load i32, i32* @cpus_chosen, align 4
  %76 = call i32 @bitmask_first(i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %148, %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @cpus_chosen, align 4
  %80 = call i32 @bitmask_last(i32 %79)
  %81 = icmp ule i32 %78, %80
  br i1 %81, label %82, label %151

82:                                               ; preds = %77
  %83 = load i32, i32* @cpus_chosen, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @bitmask_isbitset(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %148

88:                                               ; preds = %82
  %89 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @printf(i8* %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @sysfs_is_cpu_online(i32 %92)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %148

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  switch i32 %100, label %142 [
    i32 98, label %101
    i32 101, label %104
    i32 97, label %107
    i32 114, label %110
    i32 103, label %113
    i32 112, label %116
    i32 100, label %119
    i32 108, label %122
    i32 119, label %126
    i32 102, label %130
    i32 115, label %134
    i32 121, label %138
  ]

101:                                              ; preds = %99
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @get_boost_mode(i32 %102)
  br label %142

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @debug_output_one(i32 %105)
  br label %142

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @get_affected_cpus(i32 %108)
  store i32 %109, i32* %6, align 4
  br label %142

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @get_related_cpus(i32 %111)
  store i32 %112, i32* %6, align 4
  br label %142

113:                                              ; preds = %99
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @get_available_governors(i32 %114)
  store i32 %115, i32* %6, align 4
  br label %142

116:                                              ; preds = %99
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @get_policy(i32 %117)
  store i32 %118, i32* %6, align 4
  br label %142

119:                                              ; preds = %99
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @get_driver(i32 %120)
  store i32 %121, i32* %6, align 4
  br label %142

122:                                              ; preds = %99
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @get_hardware_limits(i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  br label %142

126:                                              ; preds = %99
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @get_freq_hardware(i32 %127, i32 %128)
  store i32 %129, i32* %6, align 4
  br label %142

130:                                              ; preds = %99
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @get_freq_kernel(i32 %131, i32 %132)
  store i32 %133, i32* %6, align 4
  br label %142

134:                                              ; preds = %99
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @get_freq_stats(i32 %135, i32 %136)
  store i32 %137, i32* %6, align 4
  br label %142

138:                                              ; preds = %99
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @get_latency(i32 %139, i32 %140)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %99, %138, %134, %130, %126, %122, %119, %116, %113, %110, %107, %104, %101
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %153

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %95, %87
  %149 = load i32, i32* %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %77

151:                                              ; preds = %77
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %145, %71, %66, %61, %45, %31
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @bitmask_isallclear(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bitmask_setbit(i32, i32) #1

declare dso_local i32 @proc_cpufreq_output(...) #1

declare dso_local i32 @bitmask_first(i32) #1

declare dso_local i32 @bitmask_last(i32) #1

declare dso_local i32 @bitmask_isbitset(i32, i32) #1

declare dso_local i32 @sysfs_is_cpu_online(i32) #1

declare dso_local i32 @get_boost_mode(i32) #1

declare dso_local i32 @debug_output_one(i32) #1

declare dso_local i32 @get_affected_cpus(i32) #1

declare dso_local i32 @get_related_cpus(i32) #1

declare dso_local i32 @get_available_governors(i32) #1

declare dso_local i32 @get_policy(i32) #1

declare dso_local i32 @get_driver(i32) #1

declare dso_local i32 @get_hardware_limits(i32, i32) #1

declare dso_local i32 @get_freq_hardware(i32, i32) #1

declare dso_local i32 @get_freq_kernel(i32, i32) #1

declare dso_local i32 @get_freq_stats(i32, i32) #1

declare dso_local i32 @get_latency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
