; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_postprologue_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_postprologue_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i64, i64*)* @die_get_postprologue_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @die_get_postprologue_addr(i64 %0, i32* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32* @dwarf_onesrcline(i32* %18, i64 %19)
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i64 @dwarf_lineno(i32* %21, i32* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %86

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %12, align 8
  br label %27

27:                                               ; preds = %67, %25
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32* @dwarf_onesrcline(i32* %32, i64 %33)
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call i64 @dwarf_lineaddr(i32* %35, i64* %16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %15, align 8
  %40 = call i64 @dwarf_lineno(i32* %39, i32* %14)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %15, align 8
  %44 = call i64 @dwarf_lineprologueend(i32* %43, i32* %17)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %31
  store i32 0, i32* %6, align 4
  br label %86

47:                                               ; preds = %42
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %70

52:                                               ; preds = %47
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %56
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %70

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %27

70:                                               ; preds = %65, %60, %55, %51, %27
  %71 = load i32*, i32** %15, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = call i64 @dwarf_lineaddr(i32* %71, i64* %72)
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub i64 %80, 1
  %82 = call i32* @dwarf_onesrcline(i32* %79, i64 %81)
  %83 = load i64*, i64** %11, align 8
  %84 = call i64 @dwarf_lineaddr(i32* %82, i64* %83)
  br label %85

85:                                               ; preds = %78, %70
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %46, %24
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @dwarf_onesrcline(i32*, i64) #1

declare dso_local i64 @dwarf_lineno(i32*, i32*) #1

declare dso_local i64 @dwarf_lineaddr(i32*, i64*) #1

declare dso_local i64 @dwarf_lineprologueend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
