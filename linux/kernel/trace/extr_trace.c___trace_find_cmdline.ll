; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_find_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_find_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"<idle>\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<XXX>\00", align 1
@PID_MAX_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@savedcmd = common dso_local global %struct.TYPE_2__* null, align 8
@NO_CMDLINE_MAP = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @__trace_find_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__trace_find_cmdline(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %47

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %47

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PID_MAX_DEFAULT, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @savedcmd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NO_CMDLINE_MAP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @get_saved_cmdlines(i32 %40)
  %42 = load i32, i32* @TASK_COMM_LEN, align 4
  %43 = call i32 @strlcpy(i8* %39, i32 %41, i32 %42)
  br label %47

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %8, %17, %24, %44, %38
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @get_saved_cmdlines(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
