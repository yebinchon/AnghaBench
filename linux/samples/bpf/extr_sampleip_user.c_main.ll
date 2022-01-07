; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sampleip_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sampleip_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_FREQ = common dso_local global i32 0, align 4
@DEFAULT_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"F:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: loading /proc/kallsyms\0A\00", align 1
@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@nr_cpus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR: malloc of pmu_fd\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ERROR: loading BPF program (errno %d):\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Try: ulimit -l unlimited\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"Sampling at %d Hertz for %d seconds. Ctrl-C also ends.\0A\00", align 1
@map_fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @DEFAULT_FREQ, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @DEFAULT_SECS, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %24 [
    i32 70, label %20
    i32 104, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %18, %23
  %25 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %116

26:                                               ; preds = %20
  br label %13

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39
  %46 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %116

47:                                               ; preds = %42
  %48 = call i64 (...) @load_kallsyms()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %116

53:                                               ; preds = %47
  %54 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %55 = call i32 @sysconf(i32 %54)
  store i32 %55, i32* @nr_cpus, align 4
  %56 = load i32, i32* @nr_cpus, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32* @malloc(i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %116

66:                                               ; preds = %53
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @snprintf(i8* %67, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %73 = call i64 @load_bpf_file(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** @bpf_log_buf, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %89

85:                                               ; preds = %75
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** @bpf_log_buf, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %82
  store i32 1, i32* %3, align 4
  br label %116

90:                                               ; preds = %66
  %91 = load i32, i32* @SIGINT, align 4
  %92 = load i32, i32* @int_exit, align 4
  %93 = call i32 @signal(i32 %91, i32 %92)
  %94 = load i32, i32* @SIGTERM, align 4
  %95 = load i32, i32* @int_exit, align 4
  %96 = call i32 @signal(i32 %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @sampling_start(i32* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  store i32 1, i32* %3, align 4
  br label %116

105:                                              ; preds = %90
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @sleep(i32 %106)
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @sampling_end(i32* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @free(i32* %110)
  %112 = load i32*, i32** @map_fd, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @print_ip_map(i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %105, %104, %89, %63, %50, %45, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @load_kallsyms(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @sampling_start(i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @sampling_end(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @print_ip_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
