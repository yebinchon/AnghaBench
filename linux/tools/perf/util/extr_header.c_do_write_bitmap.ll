; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_write_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_write_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i64*, i64)* @do_write_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_bitmap(%struct.feat_fd* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.feat_fd*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.feat_fd* %0, %struct.feat_fd** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %6, align 8
  store i64* %11, i64** %8, align 8
  %12 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %13 = call i32 @do_write(%struct.feat_fd* %12, i64* %7, i32 8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @BITS_TO_U64(i64 %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = call i32 @do_write(%struct.feat_fd* %26, i64* %30, i32 8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %34, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @do_write(%struct.feat_fd*, i64*, i32) #1

declare dso_local i64 @BITS_TO_U64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
