; ModuleID = '/home/carl/AnghaBench/linux/tools/laptop/freefall/extr_freefall.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/laptop/freefall/extr_freefall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/sda\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"usage: %s <device> (default: /dev/sda)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/dev/freefall\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"/sys/class/leds/hp::hddprotect/brightness\00", align 1
@noled = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@app_name = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_LOCAL1 = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@ignore_me = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.sched_param, align 4
  %10 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @set_unload_heads_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @set_unload_heads_path(i8* %21)
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 (...) @valid_disk()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %30
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %47, i32* %3, align 4
  br label %105

48:                                               ; preds = %40
  %49 = call i64 @stat(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* @noled, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = call i64 @daemon(i32 0, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %57, i32* %3, align 4
  br label %105

58:                                               ; preds = %52
  %59 = load i32, i32* @app_name, align 4
  %60 = load i32, i32* @LOG_CONS, align 4
  %61 = load i32, i32* @LOG_PID, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @LOG_NDELAY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LOG_LOCAL1, align 4
  %66 = call i32 @openlog(i32 %59, i32 %64, i32 %65)
  %67 = load i32, i32* @SCHED_FIFO, align 4
  %68 = call i32 @sched_get_priority_max(i32 %67)
  %69 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %9, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @SCHED_FIFO, align 4
  %71 = call i32 @sched_setscheduler(i32 0, i32 %70, %struct.sched_param* %9)
  %72 = load i32, i32* @MCL_CURRENT, align 4
  %73 = load i32, i32* @MCL_FUTURE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @mlockall(i32 %74)
  %76 = load i32, i32* @SIGALRM, align 4
  %77 = load i32, i32* @ignore_me, align 4
  %78 = call i32 @signal(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %96, %89, %58
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @read(i32 %80, i8* %10, i32 1)
  store i32 %81, i32* %7, align 4
  %82 = call i32 @alarm(i32 0)
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EINTR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %79

90:                                               ; preds = %85, %79
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %100

96:                                               ; preds = %90
  %97 = call i32 @protect(i32 21)
  %98 = call i32 @set_led(i32 1)
  %99 = call i32 @alarm(i32 2)
  br label %79

100:                                              ; preds = %94
  %101 = call i32 (...) @closelog()
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %55, %45
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @set_unload_heads_path(i8*) #1

declare dso_local i32 @valid_disk(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @protect(i32) #1

declare dso_local i32 @set_led(i32) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
