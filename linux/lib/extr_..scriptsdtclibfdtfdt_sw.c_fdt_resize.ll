; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_resize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_resize(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @FDT_SW_PROBE(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @fdt_off_dt_struct(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @fdt_size_dt_struct(i8* %16)
  %18 = add i64 %15, %17
  store i64 %18, i64* %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @fdt_size_dt_strings(i8* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @fdt_totalsize(i8* %24)
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %88

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @fdt_totalsize(i8* %42)
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ule i8* %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %40
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memmove(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @memmove(i8* %63, i8* %64, i64 %65)
  br label %76

67:                                               ; preds = %40
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @memmove(i8* %68, i8* %69, i64 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memmove(i8* %72, i8* %73, i64 %74)
  br label %76

76:                                               ; preds = %67, %58
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @fdt_set_totalsize(i8* %77, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @fdt_off_dt_strings(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @fdt_set_off_dt_strings(i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %76
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %37, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @FDT_SW_PROBE(i8*) #1

declare dso_local i64 @fdt_off_dt_struct(i8*) #1

declare dso_local i64 @fdt_size_dt_struct(i8*) #1

declare dso_local i64 @fdt_size_dt_strings(i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local i64 @fdt_off_dt_strings(i8*) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
