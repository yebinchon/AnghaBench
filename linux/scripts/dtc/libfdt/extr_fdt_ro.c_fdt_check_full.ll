; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_check_full.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_check_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_V1_SIZE = common dso_local global i64 0, align 8
@FDT_ERR_TRUNCATED = common dso_local global i32 0, align 4
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_check_full(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @FDT_V1_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @fdt_check_header(i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @fdt_totalsize(i8* %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @fdt_num_mem_rsv(i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %93
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @fdt_next_tag(i8* %45, i32 %46, i32* %9)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %90 [
    i32 129, label %54
    i32 131, label %55
    i32 132, label %62
    i32 130, label %72
    i32 128, label %81
  ]

54:                                               ; preds = %52
  br label %93

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %94

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @INT_MAX, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %62
  br label %93

72:                                               ; preds = %52
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %94

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %93

81:                                               ; preds = %52
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @fdt_getprop_by_offset(i8* %82, i32 %83, i8** %13, i32* %6)
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %94

89:                                               ; preds = %81
  br label %93

90:                                               ; preds = %52
  %91 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %89, %78, %71, %54
  br label %43

94:                                               ; preds = %90, %87, %75, %68, %61, %58, %50, %40, %32, %25, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @fdt_check_header(i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_num_mem_rsv(i8*) #1

declare dso_local i32 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local i8* @fdt_getprop_by_offset(i8*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
