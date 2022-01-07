; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_jvmti_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_jvmti_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jitheader = type { i32, i32, i32, i64, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@use_arch_timestamp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"jvmti: arch timestamp not supported\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"jvmti: kernel does not support %d clock id\00", align 1
@perf_clk_id = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s/jit-%i.dump\00", align 1
@jit_path = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [135 x i8] c"jvmti: cannot generate jitdump file full path because %s/jit-%i.dump is too long, please check the cwd, JITDUMPDIR, and HOME variables\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"jvmti: failed to create marker file\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"jvmti: cannot create %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"jvmti: jitdump in %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"get_e_machine failed\0A\00", align 1
@JITHEADER_MAGIC = common dso_local global i32 0, align 4
@JITHEADER_VERSION = common dso_local global i32 0, align 4
@JITDUMP_FLAGS_ARCH_TIMESTAMP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"jvmti: cannot write dumpfile header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jvmti_open() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.jitheader, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = call i32 (...) @init_arch_timestamp()
  %14 = call i64 (...) @perf_get_timestamp()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* @use_arch_timestamp, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** @perf_clk_id, align 8
  %23 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %19
  br label %25

25:                                               ; preds = %24, %0
  %26 = call i32 @memset(%struct.jitheader* %4, i32 0, i32 32)
  %27 = call i64 (...) @create_jit_cache_dir()
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

30:                                               ; preds = %25
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = load i8*, i8** @jit_path, align 8
  %33 = call i32 (...) @getpid()
  %34 = call i32 @snprintf(i8* %12, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** @jit_path, align 8
  %40 = call i32 (...) @getpid()
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32 %40)
  store i8* null, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

42:                                               ; preds = %30
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = load i32, i32* @O_TRUNC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i8* %12, i32 %47, i32 438)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i8* null, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @perf_open_marker_file(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = call i8* @fdopen(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %12)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @close(i32 %65)
  br label %98

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %12)
  %69 = call i64 @get_e_machine(%struct.jitheader* %4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %98

73:                                               ; preds = %67
  %74 = load i32, i32* @JITHEADER_MAGIC, align 4
  %75 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 5
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @JITHEADER_VERSION, align 4
  %77 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 4
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 0
  store i32 32, i32* %78, align 8
  %79 = call i32 (...) @getpid()
  %80 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = call i64 (...) @perf_get_timestamp()
  %82 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 3
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* @use_arch_timestamp, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load i32, i32* @JITDUMP_FLAGS_ARCH_TIMESTAMP, align 4
  %87 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %4, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %73
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @fwrite(%struct.jitheader* %4, i32 32, i32 1, i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %98

96:                                               ; preds = %90
  %97 = load i8*, i8** %7, align 8
  store i8* %97, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

98:                                               ; preds = %94, %71, %63
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @fclose(i8* %99)
  store i8* null, i8** %1, align 8
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %96, %56, %51, %38, %29
  %102 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i8*, i8** %1, align 8
  ret i8* %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @init_arch_timestamp(...) #2

declare dso_local i64 @perf_get_timestamp(...) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @memset(%struct.jitheader*, i32, i32) #2

declare dso_local i64 @create_jit_cache_dir(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @perf_open_marker_file(i32) #2

declare dso_local i8* @fdopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @get_e_machine(%struct.jitheader*) #2

declare dso_local i32 @fwrite(%struct.jitheader*, i32, i32, i8*) #2

declare dso_local i32 @fclose(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
