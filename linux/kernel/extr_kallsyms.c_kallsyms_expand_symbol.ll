; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_expand_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_expand_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kallsyms_names = common dso_local global i64* null, align 8
@kallsyms_token_table = common dso_local global i64* null, align 8
@kallsyms_token_index = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @kallsyms_expand_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kallsyms_expand_symbol(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64*, i64** @kallsyms_names, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i64*, i64** %10, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %63, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = load i64*, i64** @kallsyms_token_table, align 8
  %29 = load i64*, i64** @kallsyms_token_index, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %28, i64 %33
  store i64* %34, i64** %9, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %60, %27
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = icmp ule i64 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %65

50:                                               ; preds = %46
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i8
  %54 = load i8*, i8** %5, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %6, align 8
  br label %60

59:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %9, align 8
  br label %39

63:                                               ; preds = %39
  br label %24

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
