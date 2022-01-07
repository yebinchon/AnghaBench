; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_page_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_page_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.page*, i64, i32, i32, i32*)* @slob_page_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slob_page_alloc(%struct.page* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @SLOB_UNITS(i64 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %12, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  br label %25

25:                                               ; preds = %146, %5
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @slob_units(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i8*, i8** %13, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ALIGN(i64 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %30, %25
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %140

54:                                               ; preds = %48
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i8*, i8** %13, align 8
  %59 = call i8* @slob_next(i8* %58)
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @set_slob(i8* %60, i32 %63, i8* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @set_slob(i8* %66, i32 %67, i8* %68)
  %70 = load i8*, i8** %13, align 8
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %14, align 8
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @slob_units(i8* %72)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %57, %54
  %75 = load i8*, i8** %13, align 8
  %76 = call i8* @slob_next(i8* %75)
  store i8* %76, i8** %18, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @slob_units(i8* %85)
  %87 = load i8*, i8** %18, align 8
  %88 = call i32 @set_slob(i8* %84, i32 %86, i8* %87)
  br label %93

89:                                               ; preds = %80
  %90 = load i8*, i8** %18, align 8
  %91 = load %struct.page*, %struct.page** %7, align 8
  %92 = getelementptr inbounds %struct.page, %struct.page* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %83
  br label %123

94:                                               ; preds = %74
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @slob_units(i8* %99)
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  %105 = call i32 @set_slob(i8* %98, i32 %100, i8* %104)
  br label %113

106:                                              ; preds = %94
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %107, i64 %109
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %97
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %114, i64 %116
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i8*, i8** %18, align 8
  %122 = call i32 @set_slob(i8* %117, i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %113, %93
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.page*, %struct.page** %7, align 8
  %127 = getelementptr inbounds %struct.page, %struct.page* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.page*, %struct.page** %7, align 8
  %131 = getelementptr inbounds %struct.page, %struct.page* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %123
  %135 = load %struct.page*, %struct.page** %7, align 8
  %136 = call i32 @clear_slob_page_free(%struct.page* %135)
  %137 = load i32*, i32** %11, align 8
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %123
  %139 = load i8*, i8** %13, align 8
  store i8* %139, i8** %6, align 8
  br label %150

140:                                              ; preds = %48
  %141 = load i8*, i8** %13, align 8
  %142 = call i64 @slob_last(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i8* null, i8** %6, align 8
  br label %150

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %13, align 8
  store i8* %147, i8** %12, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = call i8* @slob_next(i8* %148)
  store i8* %149, i8** %13, align 8
  br label %25

150:                                              ; preds = %144, %138
  %151 = load i8*, i8** %6, align 8
  ret i8* %151
}

declare dso_local i32 @SLOB_UNITS(i64) #1

declare dso_local i32 @slob_units(i8*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i8* @slob_next(i8*) #1

declare dso_local i32 @set_slob(i8*, i32, i8*) #1

declare dso_local i32 @clear_slob_page_free(%struct.page*) #1

declare dso_local i64 @slob_last(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
