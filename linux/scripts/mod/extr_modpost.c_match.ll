; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_match.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %87, %2
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %88

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %5, align 8
  %17 = load i8*, i8** %15, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 42
  br i1 %27, label %28, label %50

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sub nsw i32 %37, 2
  %39 = call i32 @strndup(i8* %35, i32 %38)
  %40 = call i8* @NOFAIL(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @strstr(i8* %41, i8* %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %89

49:                                               ; preds = %33
  br label %87

50:                                               ; preds = %28, %14
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 42
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i64 @strrcmp(i8* %56, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %89

62:                                               ; preds = %55
  br label %86

63:                                               ; preds = %50
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 42
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sub nsw i32 %72, 1
  %74 = call i64 @strncmp(i8* %69, i8* %70, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %89

77:                                               ; preds = %68
  br label %85

78:                                               ; preds = %63
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %89

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %49
  br label %10

88:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %83, %76, %61, %48
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @NOFAIL(i32) #1

declare dso_local i32 @strndup(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strrcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
