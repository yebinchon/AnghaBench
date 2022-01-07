; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c___expand_string.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c___expand_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32 (i8)*, i32, i8**)* @__expand_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__expand_string(i8** %0, i32 (i8)* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i8)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 (i8)* %1, i32 (i8)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = call i8* @xmalloc(i32 1)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  store i8 0, i8* %16, align 1
  store i64 1, i64* %14, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %4, %24, %61
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 36
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, i64* %13, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8**, i8*** %8, align 8
  %34 = call i8* @expand_dollar_with_args(i8** %10, i32 %32, i8** %33)
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add i64 %35, %37
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i8* @xrealloc(i8* %41, i64 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @strncat(i8* %44, i8* %45, i64 %46)
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @strcat(i8* %48, i8* %49)
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %9, align 8
  br label %19

54:                                               ; preds = %19
  %55 = load i32 (i8)*, i32 (i8)** %6, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 %55(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %64

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  br label %19

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %14, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i8* @xrealloc(i8* %73, i64 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @strncat(i8* %76, i8* %77, i64 %78)
  %80 = load i8*, i8** %10, align 8
  %81 = load i8**, i8*** %5, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %12, align 8
  ret i8* %82
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @expand_dollar_with_args(i8**, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
