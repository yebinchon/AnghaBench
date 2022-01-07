; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_exec_query.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_exec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddebug_query = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"tokenize failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"flags parse failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"query parse failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"applied\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"no-match\00", align 1
@MAXWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ddebug_exec_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_exec_query(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddebug_query, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 0
  %14 = call i32 @ddebug_tokenize(i8* %12, i8** %13, i32 9)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @ddebug_parse_flags(i8* %26, i32* %6, i32* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 0
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @ddebug_parse_query(i8** %34, i32 %36, %struct.ddebug_query* %8, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ddebug_change(%struct.ddebug_query* %8, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %52 = call i32 @vpr_info_dq(%struct.ddebug_query* %8, i8* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %40, %29, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ddebug_tokenize(i8*, i8**, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ddebug_parse_flags(i8*, i32*, i32*) #1

declare dso_local i64 @ddebug_parse_query(i8**, i32, %struct.ddebug_query*, i8*) #1

declare dso_local i32 @ddebug_change(%struct.ddebug_query*, i32, i32) #1

declare dso_local i32 @vpr_info_dq(%struct.ddebug_query*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
