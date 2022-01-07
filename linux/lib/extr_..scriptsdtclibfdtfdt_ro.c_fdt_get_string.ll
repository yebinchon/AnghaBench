; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADOFFSET = common dso_local global i32 0, align 4
@FDT_MAGIC = common dso_local global i64 0, align 8
@FDT_SW_MAGIC = common dso_local global i64 0, align 8
@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4
@FDT_ERR_TRUNCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_get_string(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @fdt_off_dt_strings(i8* %15)
  %17 = add nsw i64 %14, %16
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @fdt_ro_probe_(i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %125

23:                                               ; preds = %3
  %24 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @fdt_totalsize(i8* %27)
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %125

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @fdt_totalsize(i8* %32)
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @fdt_magic(i8* %36)
  %38 = load i64, i64* @FDT_MAGIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %125

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @fdt_version(i8* %45)
  %47 = icmp sge i32 %46, 17
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @fdt_size_dt_strings(i8* %50)
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %125

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @fdt_size_dt_strings(i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @fdt_size_dt_strings(i8* %63)
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %62, %54
  br label %69

69:                                               ; preds = %68, %44
  br label %100

70:                                               ; preds = %31
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @fdt_magic(i8* %71)
  %73 = load i64, i64* @FDT_SW_MAGIC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @fdt_size_dt_strings(i8* %80)
  %82 = sub nsw i32 0, %81
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %75
  br label %125

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 0, %86
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %9, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 0, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %99

96:                                               ; preds = %70
  %97 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %125

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i8*, i8** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i8* @memchr(i8* %104, i8 signext 0, i64 %105)
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %125

112:                                              ; preds = %100
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %112
  %124 = load i8*, i8** %11, align 8
  store i8* %124, i8** %4, align 8
  br label %132

125:                                              ; preds = %109, %96, %84, %53, %43, %30, %22
  %126 = load i32*, i32** %7, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  store i8* null, i8** %4, align 8
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i8*, i8** %4, align 8
  ret i8* %133
}

declare dso_local i64 @fdt_off_dt_strings(i8*) #1

declare dso_local i32 @fdt_ro_probe_(i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i64 @fdt_magic(i8*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
