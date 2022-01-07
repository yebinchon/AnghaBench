; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_utilfdt_read_err.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_utilfdt_read_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utilfdt_read_err(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i64 1024, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8**, i8*** %6, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i64, i64* %10, align 8
  %28 = call i8* @xmalloc(i64 %27)
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %57, %26
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = mul i64 %34, 2
  store i64 %35, i64* %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i8* @xrealloc(i8* %36, i64 %37)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @read(i32 %40, i8* %43, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %12, align 4
  br label %60

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %29, label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  br label %71

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = load i8**, i8*** %6, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64*, i64** %7, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
