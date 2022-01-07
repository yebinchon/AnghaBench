; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_addresses.c_fdt_appendprop_addrrange.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_addresses.c_fdt_appendprop_addrrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i64 0, align 8
@FDT_ERR_BADVALUE = common dso_local global i32 0, align 4
@FDT_ERR_BADNCELLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_appendprop_addrrange(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @fdt_address_cells(i8* %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %7, align 4
  br label %113

26:                                               ; preds = %6
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fdt_size_cells(i8* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %113

35:                                               ; preds = %26
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %15, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  store i32* %37, i32** %18, align 8
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @UINT32_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @UINT32_MAX, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %13, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %40
  %52 = load i32, i32* @FDT_ERR_BADVALUE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %113

54:                                               ; preds = %44
  %55 = load i32*, i32** %18, align 8
  %56 = load i64, i64* %12, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @fdt32_st(i32* %55, i32 %57)
  br label %70

59:                                               ; preds = %35
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %18, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @fdt64_st(i32* %63, i64 %64)
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @FDT_ERR_BADNCELLS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %113

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = load i32*, i32** %18, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %18, align 8
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @UINT32_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @FDT_ERR_BADVALUE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %113

85:                                               ; preds = %78
  %86 = load i32*, i32** %18, align 8
  %87 = load i64, i64* %13, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @fdt32_st(i32* %86, i32 %88)
  br label %101

90:                                               ; preds = %70
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %18, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @fdt64_st(i32* %94, i64 %95)
  br label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @FDT_ERR_BADNCELLS, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %113

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @fdt_appendprop(i8* %102, i32 %103, i8* %104, i32* %105, i32 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %101, %97, %82, %66, %51, %33, %24
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @fdt_address_cells(i8*, i32) #1

declare dso_local i32 @fdt_size_cells(i8*, i32) #1

declare dso_local i32 @fdt32_st(i32*, i32) #1

declare dso_local i32 @fdt64_st(i32*, i64) #1

declare dso_local i32 @fdt_appendprop(i8*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
