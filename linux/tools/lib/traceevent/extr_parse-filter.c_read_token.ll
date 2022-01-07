; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_read_token.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_read_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEP_EVENT_NEWLINE = common dso_local global i32 0, align 4
@TEP_EVENT_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@TEP_EVENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @read_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_token(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* null, i8** %5, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @free_token(i8* %7)
  %9 = call i32 @tep_read_token(i8** %5)
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TEP_EVENT_NEWLINE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TEP_EVENT_SPACE, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ true, %10 ], [ %17, %14 ]
  br i1 %19, label %6, label %20

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27, %23
  %32 = call signext i8 (...) @tep_peek_char()
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 126
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = call i8* @malloc(i32 3)
  %37 = load i8**, i8*** %3, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %3, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free_token(i8* %42)
  %44 = load i32, i32* @TEP_EVENT_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %35
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %49, i8 signext 126)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free_token(i8* %51)
  %53 = call i32 @tep_read_token(i8** %5)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free_token(i8* %54)
  br label %59

56:                                               ; preds = %31, %27, %20
  %57 = load i8*, i8** %5, align 8
  %58 = load i8**, i8*** %3, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %41
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @tep_read_token(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local signext i8 @tep_peek_char(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
