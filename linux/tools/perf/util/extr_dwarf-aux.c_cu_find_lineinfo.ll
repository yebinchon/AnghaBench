; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_cu_find_lineinfo.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_cu_find_lineinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cu_find_lineinfo(i32* %0, i64 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @dwarf_getsrc_die(i32* %11, i64 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @dwarf_lineaddr(i32* %17, i64* %10)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @dwarf_lineno(i32* %25, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = call i8* @dwarf_linesrc(i32* %30, i32* null, i32* null)
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %38, %24, %20, %16, %4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ %41, %43 ], [ %46, %44 ]
  ret i32 %48
}

declare dso_local i32* @dwarf_getsrc_die(i32*, i64) #1

declare dso_local i64 @dwarf_lineaddr(i32*, i64*) #1

declare dso_local i64 @dwarf_lineno(i32*, i32*) #1

declare dso_local i8* @dwarf_linesrc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
