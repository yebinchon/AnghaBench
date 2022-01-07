; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_min_pause.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_min_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@DIRTY_POLL_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bdi_writeback*, i64, i64, i64, i32*)* @wb_min_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wb_min_pause(%struct.bdi_writeback* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.bdi_writeback*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %17 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ilog2(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %21 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ilog2(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 100
  %26 = call i64 @max(i32 1, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 10, %34
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %33, %36
  %38 = sdiv i64 %37, 1024
  %39 = load i64, i64* %13, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %30, %5
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sdiv i64 %43, 2
  %45 = add nsw i64 1, %44
  %46 = trunc i64 %45 to i32
  %47 = call i64 @min(i64 %42, i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %13, align 8
  %50 = mul i64 %48, %49
  %51 = load i32, i32* @HZ, align 4
  %52 = call i64 @roundup_pow_of_two(i32 %51)
  %53 = udiv i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @DIRTY_POLL_THRESH, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %41
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = mul i64 %60, %61
  %63 = load i32, i32* @HZ, align 4
  %64 = call i64 @roundup_pow_of_two(i32 %63)
  %65 = udiv i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @DIRTY_POLL_THRESH, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load i32, i32* @DIRTY_POLL_THRESH, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* @HZ, align 4
  %73 = load i32, i32* @DIRTY_POLL_THRESH, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = udiv i64 %75, %76
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %70, %58
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i32, i32* @HZ, align 4
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  %86 = udiv i64 %83, %85
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %13, align 8
  %94 = mul i64 %92, %93
  %95 = load i32, i32* @HZ, align 4
  %96 = call i64 @roundup_pow_of_two(i32 %95)
  %97 = udiv i64 %94, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %90, %79
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @DIRTY_POLL_THRESH, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i64, i64* %13, align 8
  %107 = sdiv i64 %106, 2
  %108 = add nsw i64 1, %107
  br label %111

109:                                              ; preds = %99
  %110 = load i64, i64* %13, align 8
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi i64 [ %108, %105 ], [ %110, %109 ]
  ret i64 %112
}

declare dso_local i64 @ilog2(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
