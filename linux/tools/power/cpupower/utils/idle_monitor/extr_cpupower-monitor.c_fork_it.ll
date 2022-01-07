; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_fork_it.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_fork_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)* }
%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@avail_monitors = common dso_local global i32 0, align 4
@monitors = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s took %.5f seconds and exited with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork_it(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  store i8** %0, i8*** %2, align 8
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @CLOCK_REALTIME, align 4
  %11 = call i32 @clock_gettime(i32 %10, %struct.timespec* %7)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @avail_monitors, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i8**, i8*** %2, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %2, align 8
  %36 = call i32 @execvp(i8* %34, i8** %35)
  br label %57

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %37
  %44 = load i32, i32* @SIGINT, align 4
  %45 = load i32, i32* @SIG_IGN, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = load i32, i32* @SIGQUIT, align 4
  %48 = load i32, i32* @SIG_IGN, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @waitpid(i32 %50, i32* %3, i32 0)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* @CLOCK_REALTIME, align 4
  %59 = call i32 @clock_gettime(i32 %58, %struct.timespec* %8)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %73, %57
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @avail_monitors, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (...)*, i32 (...)** %70, align 8
  %72 = call i32 (...) %71()
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %60

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @timespec_diff_us(i32 %78, i32 %80)
  store i64 %81, i64* %5, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i64 @WIFEXITED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i8**, i8*** %2, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = uitofp i64 %90 to double
  %92 = fdiv double %91, 1.000000e+06
  %93 = fptoui double %92 to i64
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @WEXITSTATUS(i32 %94)
  %96 = call i32 @printf(i8* %86, i8* %89, i64 %93, i32 %95)
  br label %97

97:                                               ; preds = %85, %76
  ret i32 0
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @timespec_diff_us(i32, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
