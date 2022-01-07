; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rchan_buf*, i64*)* @relay_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @relay_alloc_buf(%struct.rchan_buf* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @PAGE_ALIGN(i64 %11)
  %13 = load i64*, i64** %5, align 8
  store i64 %12, i64* %13, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32* @relay_alloc_page_array(i32 %19)
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %22 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %24 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %111

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %66, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @alloc_page(i32 %34)
  %36 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %37 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %43 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %89

55:                                               ; preds = %33
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %64 = ptrtoint %struct.rchan_buf* %63 to i64
  %65 = call i32 @set_page_private(i32 %62, i64 %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %29

69:                                               ; preds = %29
  %70 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %71 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @VM_MAP, align 4
  %75 = load i32, i32* @PAGE_KERNEL, align 4
  %76 = call i8* @vmap(i32* %72, i32 %73, i32 %74, i32 %75)
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %89

80:                                               ; preds = %69
  %81 = load i8*, i8** %6, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memset(i8* %81, i32 0, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %87 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %3, align 8
  br label %111

89:                                               ; preds = %79, %54
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %96 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__free_page(i32 %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %90

106:                                              ; preds = %90
  %107 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %108 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @relay_free_page_array(i32* %109)
  store i8* null, i8** %3, align 8
  br label %111

111:                                              ; preds = %106, %80, %27
  %112 = load i8*, i8** %3, align 8
  ret i8* %112
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32* @relay_alloc_page_array(i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_page_private(i32, i64) #1

declare dso_local i8* @vmap(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @relay_free_page_array(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
