; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_vmcore.c_read_from_oldmem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_vmcore.c_read_from_oldmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_from_oldmem(i8* %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %93

20:                                               ; preds = %5
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %88, %20
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i64, i64* %13, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %14, align 8
  br label %41

39:                                               ; preds = %29
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @pfn_is_ram(i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @memset(i8* %46, i32 0, i64 %47)
  br label %72

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @copy_oldmem_page_encrypted(i64 %53, i8* %54, i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %16, align 8
  br label %66

59:                                               ; preds = %49
  %60 = load i64, i64* %12, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @copy_oldmem_page(i64 %60, i8* %61, i64 %62, i64 %63, i32 %64)
  store i64 %65, i64* %16, align 8
  br label %66

66:                                               ; preds = %59, %52
  %67 = load i64, i64* %16, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* %16, align 8
  store i64 %70, i64* %6, align 8
  br label %93

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i64, i64* %14, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %7, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %88

88:                                               ; preds = %72
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %29, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %15, align 8
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %91, %69, %19
  %94 = load i64, i64* %6, align 8
  ret i64 %94
}

declare dso_local i64 @pfn_is_ram(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @copy_oldmem_page_encrypted(i64, i8*, i64, i64, i32) #1

declare dso_local i64 @copy_oldmem_page(i64, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
