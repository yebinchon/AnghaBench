; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt.c_fdt_check_header.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt.c_fdt_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_MAGIC = common dso_local global i64 0, align 8
@FDT_ERR_BADMAGIC = common dso_local global i32 0, align 4
@FDT_FIRST_SUPPORTED_VERSION = common dso_local global i32 0, align 4
@FDT_LAST_SUPPORTED_VERSION = common dso_local global i64 0, align 8
@FDT_ERR_BADVERSION = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@FDT_ERR_TRUNCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_check_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @fdt_magic(i8* %5)
  %7 = load i64, i64* @FDT_MAGIC, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @FDT_ERR_BADMAGIC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %105

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @fdt_header_size(i8* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @fdt_version(i8* %15)
  %17 = load i32, i32* @FDT_FIRST_SUPPORTED_VERSION, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @fdt_last_comp_version(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @FDT_LAST_SUPPORTED_VERSION, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %12
  %26 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @fdt_version(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @fdt_last_comp_version(i8* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %28
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @fdt_totalsize(i8* %38)
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @fdt_totalsize(i8* %43)
  %45 = load i64, i64* @INT_MAX, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %105

50:                                               ; preds = %42
  %51 = load i64, i64* %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @fdt_totalsize(i8* %52)
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @fdt_off_mem_rsvmap(i8* %54)
  %56 = call i32 @check_off_(i64 %51, i64 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %105

61:                                               ; preds = %50
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @fdt_version(i8* %62)
  %64 = icmp slt i32 %63, 17
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = call i64 @fdt_totalsize(i8* %67)
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @fdt_off_dt_struct(i8* %69)
  %71 = call i32 @check_off_(i64 %66, i64 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %105

76:                                               ; preds = %65
  br label %91

77:                                               ; preds = %61
  %78 = load i64, i64* %4, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i64 @fdt_totalsize(i8* %79)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @fdt_off_dt_struct(i8* %81)
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @fdt_size_dt_struct(i8* %83)
  %85 = call i32 @check_block_(i64 %78, i64 %80, i32 %82, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %105

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i64, i64* %4, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i64 @fdt_totalsize(i8* %93)
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @fdt_off_dt_strings(i8* %95)
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @fdt_size_dt_strings(i8* %97)
  %99 = call i32 @check_block_(i64 %92, i64 %94, i32 %96, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %101, %87, %73, %58, %47, %34, %25, %9
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @fdt_magic(i8*) #1

declare dso_local i64 @fdt_header_size(i8*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @fdt_last_comp_version(i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @check_off_(i64, i64, i32) #1

declare dso_local i32 @fdt_off_mem_rsvmap(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @check_block_(i64, i64, i32, i32) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @fdt_off_dt_strings(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
