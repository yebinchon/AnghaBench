; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_read_objdump_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_read_objdump_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i8**, i64*)* @read_objdump_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_objdump_chunk(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %61, %3
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %9, align 1
  %25 = call i32 @isxdigit(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %62

28:                                               ; preds = %19
  %29 = load i8**, i8*** %4, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load i8, i8* %30, align 1
  store i8 %32, i8* %10, align 1
  %33 = load i8, i8* %10, align 1
  %34 = call i32 @isxdigit(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %62

37:                                               ; preds = %28
  %38 = load i8, i8* %9, align 1
  %39 = call i32 @hex(i8 signext %38)
  %40 = shl i32 %39, 4
  %41 = load i8, i8* %10, align 1
  %42 = call i32 @hex(i8 signext %41)
  %43 = or i32 %40, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  store i8 %44, i8* %46, align 1
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isspace(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %62

61:                                               ; preds = %37
  br label %15

62:                                               ; preds = %60, %36, %27, %15
  %63 = load i64, i64* %7, align 8
  %64 = icmp ugt i64 %63, 1
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = call i32 (...) @bigendian()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %77, %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %12, align 1
  %80 = load i8*, i8** %11, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %8, align 8
  store i8 %81, i8* %82, align 1
  %83 = load i8, i8* %12, align 1
  %84 = load i8*, i8** %11, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %11, align 8
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %65, %62
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @hex(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @bigendian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
