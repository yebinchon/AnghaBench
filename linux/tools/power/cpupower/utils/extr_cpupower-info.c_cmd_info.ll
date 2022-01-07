; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower-info.c_cmd_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower-info.c_cmd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.anon = type { i32 }
%struct.anon = type { i8, [3 x i8] }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@set_opts = common dso_local global i32 0, align 4
@cpus_chosen = common dso_local global i32 0, align 4
@run_as_root = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Intel's performance bias setting needs root privileges\0A\00", align 1
@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPUPOWER_CAP_PERF_BIAS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"System does not support Intel's performance bias setting\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"analyzing CPU %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" *is offline\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not read perf-bias value[%d]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"perf-bias: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_info(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %union.anon* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @LC_ALL, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = call i32 @textdomain(i32 %12)
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @set_opts, align 4
  %18 = call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %38 [
    i32 98, label %22
  ]

22:                                               ; preds = %20
  %23 = bitcast %union.anon* %7 to %struct.anon*
  %24 = bitcast %struct.anon* %23 to i8*
  %25 = load i8, i8* %24, align 4
  %26 = shl i8 %25, 7
  %27 = ashr i8 %26, 7
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @print_wrong_arg_exit()
  br label %32

32:                                               ; preds = %30, %22
  %33 = bitcast %union.anon* %7 to %struct.anon*
  %34 = bitcast %struct.anon* %33 to i8*
  %35 = load i8, i8* %34, align 4
  %36 = and i8 %35, -2
  %37 = or i8 %36, 1
  store i8 %37, i8* %34, align 4
  br label %40

38:                                               ; preds = %20
  %39 = call i32 (...) @print_wrong_arg_exit()
  br label %40

40:                                               ; preds = %38, %32
  br label %14

41:                                               ; preds = %14
  %42 = bitcast %union.anon* %7 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = bitcast %union.anon* %7 to i32*
  store i32 7, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* @cpus_chosen, align 4
  %49 = call i64 @bitmask_isallclear(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @cpus_chosen, align 4
  %53 = call i32 @bitmask_setbit(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %51, %47
  %55 = bitcast %union.anon* %7 to %struct.anon*
  %56 = bitcast %struct.anon* %55 to i8*
  %57 = load i8, i8* %56, align 4
  %58 = shl i8 %57, 7
  %59 = ashr i8 %58, 7
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %150

64:                                               ; preds = %54
  %65 = bitcast %union.anon* %7 to %struct.anon*
  %66 = bitcast %struct.anon* %65 to i8*
  %67 = load i8, i8* %66, align 4
  %68 = shl i8 %67, 7
  %69 = ashr i8 %68, 7
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %64
  %73 = load i32, i32* @run_as_root, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = bitcast %union.anon* %7 to %struct.anon*
  %77 = bitcast %struct.anon* %76 to i8*
  %78 = load i8, i8* %77, align 4
  %79 = and i8 %78, -2
  store i8 %79, i8* %77, align 4
  %80 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* %80)
  br label %95

82:                                               ; preds = %72
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 4
  %84 = load i32, i32* @CPUPOWER_CAP_PERF_BIAS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* %88)
  %90 = bitcast %union.anon* %7 to %struct.anon*
  %91 = bitcast %struct.anon* %90 to i8*
  %92 = load i8, i8* %91, align 4
  %93 = and i8 %92, -2
  store i8 %93, i8* %91, align 4
  br label %94

94:                                               ; preds = %87, %82
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* @cpus_chosen, align 4
  %98 = call i32 @bitmask_first(i32 %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %146, %96
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @cpus_chosen, align 4
  %102 = call i32 @bitmask_last(i32 %101)
  %103 = icmp ule i32 %100, %102
  br i1 %103, label %104, label %149

104:                                              ; preds = %99
  %105 = load i32, i32* @cpus_chosen, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @bitmask_isbitset(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %146

110:                                              ; preds = %104
  %111 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (i8*, ...) @printf(i8* %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @sysfs_is_cpu_online(i32 %114)
  %116 = icmp ne i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %119 = call i32 (i8*, ...) @printf(i8* %118)
  br label %146

120:                                              ; preds = %110
  %121 = bitcast %union.anon* %7 to %struct.anon*
  %122 = bitcast %struct.anon* %121 to i8*
  %123 = load i8, i8* %122, align 4
  %124 = shl i8 %123, 7
  %125 = ashr i8 %124, 7
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @msr_intel_get_perf_bias(i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @fprintf(i32 %134, i8* %135, i32 %136)
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  %139 = call i32 @exit(i32 %138) #4
  unreachable

140:                                              ; preds = %128
  %141 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i8*, ...) @printf(i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %120
  br label %146

146:                                              ; preds = %145, %117, %109
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %99

149:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %62
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @textdomain(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @print_wrong_arg_exit(...) #2

declare dso_local i64 @bitmask_isallclear(i32) #2

declare dso_local i32 @bitmask_setbit(i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @bitmask_first(i32) #2

declare dso_local i32 @bitmask_last(i32) #2

declare dso_local i32 @bitmask_isbitset(i32, i32) #2

declare dso_local i32 @sysfs_is_cpu_online(i32) #2

declare dso_local i32 @msr_intel_get_perf_bias(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
