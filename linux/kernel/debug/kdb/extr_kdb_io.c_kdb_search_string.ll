; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kdb_search_string.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kdb_search_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_grep_leading = common dso_local global i64 0, align 8
@kdb_grep_trailing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @kdb_search_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_search_string(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load i64, i64* @kdb_grep_leading, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* @kdb_grep_trailing, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %81

30:                                               ; preds = %25, %22, %19
  %31 = load i64, i64* @kdb_grep_leading, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @strncmp(i8* %34, i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %81

40:                                               ; preds = %33
  br label %80

41:                                               ; preds = %30
  %42 = load i64, i64* @kdb_grep_trailing, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @strncmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %81

58:                                               ; preds = %44
  br label %79

59:                                               ; preds = %41
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %6, align 1
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %75, %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %6, align 1
  %66 = call i8* @strchr(i8* %64, i8 signext %65)
  store i8* %66, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @strncmp(i8* %69, i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  br label %63

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %40
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %57, %39, %29, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
