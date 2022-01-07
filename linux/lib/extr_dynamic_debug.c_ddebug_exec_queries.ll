; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_exec_queries.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_exec_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"query %d: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"processed %d queries, with %d matches, %d errs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ddebug_exec_queries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_exec_queries(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strpbrk(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  store i8 0, i8* %21, align 1
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @skip_spaces(i8* %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %28, %23
  br label %58

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i32, ...) @vpr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @ddebug_exec_query(i8* %42, i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %37
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %4, align 8
  br label %12

60:                                               ; preds = %12
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, i32, ...) @vpr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @vpr_info(i8*, i32, ...) #1

declare dso_local i32 @ddebug_exec_query(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
