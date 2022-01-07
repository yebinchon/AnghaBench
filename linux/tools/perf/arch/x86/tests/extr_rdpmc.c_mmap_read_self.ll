; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_rdpmc.c_mmap_read_self.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_rdpmc.c_mmap_read_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_mmap_page = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @mmap_read_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_read_self(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event_mmap_page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.perf_event_mmap_page*
  store %struct.perf_event_mmap_page* %17, %struct.perf_event_mmap_page** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %60, %1
  %19 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = call i32 (...) @barrier()
  %23 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = call i64 (...) @rdtsc()
  store i64 %33, i64* %9, align 8
  %34 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %32, %18
  %44 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %45 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i64 @rdpmc(i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %52, %43
  %59 = call i32 (...) @barrier()
  br label %60

60:                                               ; preds = %58
  %61 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %62 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %18, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = ashr i64 %71, %72
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = shl i64 1, %75
  %77 = sub nsw i64 %76, 1
  %78 = and i64 %74, %77
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %6, align 8
  %82 = mul nsw i64 %80, %81
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %6, align 8
  %86 = mul nsw i64 %84, %85
  %87 = load i64, i64* %7, align 8
  %88 = ashr i64 %86, %87
  %89 = add nsw i64 %83, %88
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %70
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %95, %70
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %12, align 8
  %102 = sdiv i64 %100, %101
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %12, align 8
  %105 = srem i64 %103, %104
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %11, align 8
  %108 = mul nsw i64 %106, %107
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %11, align 8
  %111 = mul nsw i64 %109, %110
  %112 = load i64, i64* %12, align 8
  %113 = sdiv i64 %111, %112
  %114 = add nsw i64 %108, %113
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %99, %66
  %116 = load i64, i64* %8, align 8
  ret i64 %116
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i64 @rdpmc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
