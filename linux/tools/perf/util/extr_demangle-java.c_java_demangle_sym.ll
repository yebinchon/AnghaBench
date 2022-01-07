; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-java.c_java_demangle_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-java.c_java_demangle_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JAVA_DEMANGLE_NORET = common dso_local global i32 0, align 4
@MODE_TYPE = common dso_local global i32 0, align 4
@MODE_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @java_demangle_sym(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %76

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 41)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %76

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = mul nsw i32 %22, 3
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %76

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @JAVA_DEMANGLE_NORET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @MODE_TYPE, align 4
  %44 = call i8* @__demangle_java_sym(i8* %40, i8* null, i8* %41, i64 %42, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %73

48:                                               ; preds = %38
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %10, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 32, i8* %55, align 1
  br label %56

56:                                               ; preds = %48, %31
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %63, %64
  %66 = load i32, i32* @MODE_PREFIX, align 4
  %67 = call i8* @__demangle_java_sym(i8* %57, i8* %59, i8* %62, i64 %65, i32 %66)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %56
  br label %73

71:                                               ; preds = %56
  %72 = load i8*, i8** %6, align 8
  store i8* %72, i8** %3, align 8
  br label %76

73:                                               ; preds = %70, %47
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  store i8* null, i8** %3, align 8
  br label %76

76:                                               ; preds = %73, %71, %30, %19, %13
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @__demangle_java_sym(i8*, i8*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
