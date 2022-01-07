; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon.c_raid6_2data_recov_neon.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon.c_raid6_2data_recov_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@raid6_vgfmul = common dso_local global i32** null, align 8
@raid6_gfexi = common dso_local global i64* null, align 8
@raid6_gfinv = common dso_local global i64* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i8**)* @raid6_2data_recov_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid6_2data_recov_neon(i32 %0, i64 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %12, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %13, align 8
  %37 = load i64, i64* @raid6_empty_zero_page, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8**, i8*** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %38, i8** %42, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i8**, i8*** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load i8**, i8*** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %14, align 8
  %56 = load i64, i64* @raid6_empty_zero_page, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8**, i8*** %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %57, i8** %61, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i8**, i8*** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i8**, i8*** %10, align 8
  %73 = call i32 %69(i32 %70, i64 %71, i8** %72)
  %74 = load i32*, i32** %13, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i8**, i8*** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i8**, i8*** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %81, i8** %85, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i8**, i8*** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = load i8**, i8*** %10, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %94, i8** %99, align 8
  %100 = load i32**, i32*** @raid6_vgfmul, align 8
  %101 = load i64*, i64** @raid6_gfexi, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %101, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32*, i32** %100, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %15, align 8
  %110 = load i32**, i32*** @raid6_vgfmul, align 8
  %111 = load i64*, i64** @raid6_gfinv, align 8
  %112 = load i64*, i64** @raid6_gfexp, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** @raid6_gfexp, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = xor i64 %116, %121
  %123 = getelementptr inbounds i64, i64* %111, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32*, i32** %110, i64 %124
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %16, align 8
  %127 = call i32 (...) @kernel_neon_begin()
  %128 = load i64, i64* %7, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @__raid6_2data_recov_neon(i64 %128, i32* %129, i32* %130, i32* %131, i32* %132, i32* %133, i32* %134)
  %136 = call i32 (...) @kernel_neon_end()
  ret void
}

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @__raid6_2data_recov_neon(i64, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
