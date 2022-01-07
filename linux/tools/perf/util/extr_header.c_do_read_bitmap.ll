; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i64**, i64*)* @do_read_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_bitmap(%struct.feat_fd* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.feat_fd*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.feat_fd* %0, %struct.feat_fd** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %14 = call i32 @do_read_u64(%struct.feat_fd* %13, i64* %9)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  %21 = call i64* @bitmap_alloc(i64 %20)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %19
  %28 = load i64*, i64** %8, align 8
  store i64* %28, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %49, %27
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @BITS_TO_U64(i64 %32)
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = call i32 @do_read_u64(%struct.feat_fd* %36, i64* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i64*, i64** %8, align 8
  %46 = call i32 @free(i64* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i64*, i64** %8, align 8
  %54 = load i64**, i64*** %6, align 8
  store i64* %53, i64** %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %44, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @do_read_u64(%struct.feat_fd*, i64*) #1

declare dso_local i64* @bitmap_alloc(i64) #1

declare dso_local i64 @BITS_TO_U64(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
