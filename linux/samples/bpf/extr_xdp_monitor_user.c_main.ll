; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hDSs:\00", align 1
@long_options = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ERROR - bpf_log_buf: %s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@prog_fd = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR - load_bpf_file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@event_fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %14 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %16 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %16, i32* %15, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %17, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %41, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @long_options, align 4
  %27 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %37 [
    i32 68, label %31
    i32 83, label %32
    i32 115, label %33
    i32 104, label %36
  ]

31:                                               ; preds = %29
  store i32 1, i32* @debug, align 4
  br label %41

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* %12, align 4
  br label %41

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %29, %36
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @usage(i8** %38)
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %33, %32, %31
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %44 = call i64 @setrlimit(i32 %43, %struct.rlimit* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %97

49:                                               ; preds = %42
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %51 = call i64 @load_bpf_file(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** @bpf_log_buf, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %56, i32* %3, align 4
  br label %97

57:                                               ; preds = %49
  %58 = load i32*, i32** @prog_fd, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @errno, align 4
  %64 = call i8* @strerror(i32 %63)
  %65 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %66, i32* %3, align 4
  br label %97

67:                                               ; preds = %57
  %68 = load i32, i32* @debug, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @print_bpf_prog_info()
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32*, i32** @event_fd, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32*, i32** @prog_fd, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = load i32*, i32** @event_fd, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i32*, i32** @prog_fd, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @close(i32 %90)
  br label %92

92:                                               ; preds = %75, %72
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @stats_poll(i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %62, %53, %46, %37
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(i8**) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @print_bpf_prog_info(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @stats_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
