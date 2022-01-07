; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_rb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_rb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i8*, i8** }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_ORDER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer* @rb_alloc(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 24, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @order_base_2(i64 %18)
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = load i64, i64* @MAX_ORDER, align 8
  %22 = add nsw i64 %20, %21
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %106

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ring_buffer* @kzalloc(i64 %26, i32 %27)
  store %struct.ring_buffer* %28, %struct.ring_buffer** %10, align 8
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %30 = icmp ne %struct.ring_buffer* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %106

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @perf_mmap_alloc_page(i32 %33)
  %35 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %36 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %38 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %103

42:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @perf_mmap_alloc_page(i32 %48)
  %50 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %51 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %49, i8** %55, align 8
  %56 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %57 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %47
  br label %78

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %43

69:                                               ; preds = %43
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %72 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ring_buffer_init(%struct.ring_buffer* %73, i64 %74, i32 %75)
  %77 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  store %struct.ring_buffer* %77, %struct.ring_buffer** %5, align 8
  br label %107

78:                                               ; preds = %64
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %86 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = call i32 @free_page(i64 %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %99 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = call i32 @free_page(i64 %101)
  br label %103

103:                                              ; preds = %97, %41
  %104 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %105 = call i32 @kfree(%struct.ring_buffer* %104)
  br label %106

106:                                              ; preds = %103, %31, %24
  store %struct.ring_buffer* null, %struct.ring_buffer** %5, align 8
  br label %107

107:                                              ; preds = %106, %69
  %108 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  ret %struct.ring_buffer* %108
}

declare dso_local i64 @order_base_2(i64) #1

declare dso_local %struct.ring_buffer* @kzalloc(i64, i32) #1

declare dso_local i8* @perf_mmap_alloc_page(i32) #1

declare dso_local i32 @ring_buffer_init(%struct.ring_buffer*, i64, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
