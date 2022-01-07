; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_num_or_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_num_or_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8**, i8*)* @parse_num_or_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_num_or_str(i8** %0, i32* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %15, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isdigit(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %94

30:                                               ; preds = %24
  store i32 0, i32* @errno, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strtoull(i8* %32, i8** %10, i32 0)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %94

40:                                               ; preds = %30
  %41 = load i8*, i8** %10, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %94

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = load i8**, i8*** %6, align 8
  store i8* %49, i8** %50, align 8
  br label %93

51:                                               ; preds = %4
  %52 = load i8**, i8*** %8, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %94

57:                                               ; preds = %51
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strspn(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %61, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %8, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @strcspn(i8* %69, i8* %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %57
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %94

77:                                               ; preds = %57
  %78 = load i64, i64* %11, align 8
  %79 = load i8**, i8*** %6, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %78
  store i8* %81, i8** %79, align 8
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %89, align 8
  br label %92

92:                                               ; preds = %86, %77
  br label %93

93:                                               ; preds = %92, %48
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %74, %54, %45, %37, %27
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
