; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_srccode.c_fill_lines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_srccode.c_fill_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i8*, i32)* @fill_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_lines(i8** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  br label %69

23:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  store i8* %24, i8** %29, align 8
  br label %30

30:                                               ; preds = %51, %23
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @memchr(i8* %35, i8 signext 10, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br label %44

44:                                               ; preds = %34, %30
  %45 = phi i1 [ false, %30 ], [ %43, %34 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %69

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  store i8* %53, i8** %58, align 8
  br label %30

59:                                               ; preds = %44
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  br label %69

69:                                               ; preds = %22, %50, %63, %59
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
