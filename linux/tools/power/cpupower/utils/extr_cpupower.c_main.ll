; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i8*, i32 (i32, i8**)*, i64 }
%struct.stat = type { i32 }
%struct.utsname = type { i8* }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@cpus_chosen = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@base_cpu = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"No valid cpus found.\0A\00", align 1
@cpupower_cpu_info = common dso_local global i32 0, align 4
@run_as_root = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"modprobe msr\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"MSR access not available.\0A\00", align 1
@commands = common dso_local global %struct.cmd_struct* null, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Subcommand %s needs root privileges\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.utsname, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca %struct.cmd_struct*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %14 = call i32 @sysconf(i32 %13)
  %15 = call i64 @bitmask_alloc(i32 %14)
  store i64 %15, i64* @cpus_chosen, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8** %19, i8*** %5, align 8
  %20 = call i32 @handle_options(i32* %4, i8*** %5)
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 (...) @print_help()
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %144

29:                                               ; preds = %2
  %30 = load i32, i32* @LC_ALL, align 4
  %31 = call i32 @setlocale(i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @PACKAGE, align 4
  %33 = call i32 @textdomain(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %45, i8** %47, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %36, %29
  %51 = call i64 (...) @sched_getcpu()
  store i64 %51, i64* @base_cpu, align 8
  %52 = load i64, i64* @base_cpu, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %58, i32* %3, align 4
  br label %144

59:                                               ; preds = %50
  %60 = call i32 @get_cpu_info(i32* @cpupower_cpu_info)
  %61 = call i32 (...) @geteuid()
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* @run_as_root, align 4
  %65 = load i32, i32* @run_as_root, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = call i32 @uname(%struct.utsname* %10)
  store i32 %68, i32* %8, align 4
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %70 = load i64, i64* @base_cpu, align 8
  %71 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.utsname, %struct.utsname* %10, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %81 = call i64 @stat(i8* %80, %struct.stat* %9)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = call i32 @system(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90, %79, %74, %67
  br label %92

92:                                               ; preds = %91, %59
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %138, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.cmd_struct*, %struct.cmd_struct** @commands, align 8
  %96 = call i32 @ARRAY_SIZE(%struct.cmd_struct* %95)
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %98, label %141

98:                                               ; preds = %93
  %99 = load %struct.cmd_struct*, %struct.cmd_struct** @commands, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %99, i64 %101
  store %struct.cmd_struct* %102, %struct.cmd_struct** %12, align 8
  %103 = load %struct.cmd_struct*, %struct.cmd_struct** %12, align 8
  %104 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @strcmp(i8* %105, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %138

110:                                              ; preds = %98
  %111 = load i32, i32* @run_as_root, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = load %struct.cmd_struct*, %struct.cmd_struct** %12, align 8
  %115 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @stderr, align 4
  %120 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* %120, i8* %121)
  %123 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %123, i32* %3, align 4
  br label %144

124:                                              ; preds = %113, %110
  %125 = load %struct.cmd_struct*, %struct.cmd_struct** %12, align 8
  %126 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %125, i32 0, i32 1
  %127 = load i32 (i32, i8**)*, i32 (i32, i8**)** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = call i32 %127(i32 %128, i8** %129)
  store i32 %130, i32* %8, align 4
  %131 = load i64, i64* @cpus_chosen, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i64, i64* @cpus_chosen, align 8
  %135 = call i32 @bitmask_free(i64 %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %144

138:                                              ; preds = %109
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %93

141:                                              ; preds = %93
  %142 = call i32 (...) @print_help()
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %141, %136, %118, %54, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @bitmask_alloc(i32) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @handle_options(i32*, i8***) #1

declare dso_local i32 @print_help(...) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sched_getcpu(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @get_cpu_info(i32*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd_struct*) #1

declare dso_local i32 @bitmask_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
