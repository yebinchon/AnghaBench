; ModuleID = '/home/carl/AnghaBench/linux/security/loadpin/extr_loadpin.c_report_load.c'
source_filename = "/home/carl/AnghaBench/linux/security/loadpin/extr_loadpin.c_report_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s %s obj=%s%s%s pid=%d cmdline=%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.file*, i8*)* @report_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_load(i8* %0, %struct.file* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kstrdup_quotable_file(%struct.file* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* @current, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kstrdup_quotable_cmdline(i32 %12, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 60
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 60
  br label %38

38:                                               ; preds = %32, %25
  %39 = phi i1 [ false, %25 ], [ %37, %32 ]
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @task_pid_nr(i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %28, i8* %29, i8* %41, i32 %43, i8* %47, i8* %48, i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @kfree(i8* %56)
  ret void
}

declare dso_local i8* @kstrdup_quotable_file(%struct.file*, i32) #1

declare dso_local i8* @kstrdup_quotable_cmdline(i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
