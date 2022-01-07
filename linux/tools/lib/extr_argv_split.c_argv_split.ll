; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/extr_argv_split.c_argv_split.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/extr_argv_split.c_argv_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @argv_split(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @count_argc(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8** @calloc(i32 %14, i32 8)
  store i8** %15, i8*** %7, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %59

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8**, i8*** %7, align 8
  store i8** %26, i8*** %8, align 8
  br label %27

27:                                               ; preds = %56, %25
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @skip_spaces(i8* %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @skip_arg(i8* %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @strndup(i8* %41, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %61

52:                                               ; preds = %37
  %53 = load i8*, i8** %10, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  br label %56

56:                                               ; preds = %52, %31
  br label %27

57:                                               ; preds = %27
  %58 = load i8**, i8*** %8, align 8
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %18
  %60 = load i8**, i8*** %7, align 8
  store i8** %60, i8*** %3, align 8
  br label %64

61:                                               ; preds = %51
  %62 = load i8**, i8*** %7, align 8
  %63 = call i32 @argv_free(i8** %62)
  store i8** null, i8*** %3, align 8
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i8**, i8*** %3, align 8
  ret i8** %65
}

declare dso_local i32 @count_argc(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i8* @skip_arg(i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @argv_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
