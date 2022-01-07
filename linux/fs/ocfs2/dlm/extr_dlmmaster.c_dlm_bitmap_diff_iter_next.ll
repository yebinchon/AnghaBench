; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_bitmap_diff_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_bitmap_diff_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_bitmap_diff_iter = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NODE_DOWN = common dso_local global i32 0, align 4
@NODE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_bitmap_diff_iter*, i32*)* @dlm_bitmap_diff_iter_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_bitmap_diff_iter_next(%struct.dlm_bitmap_diff_iter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_bitmap_diff_iter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_bitmap_diff_iter* %0, %struct.dlm_bitmap_diff_iter** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @O2NM_MAX_NODES, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O2NM_MAX_NODES, align 4
  %20 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @find_next_bit(i32 %18, i32 %19, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @O2NM_MAX_NODES, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @O2NM_MAX_NODES, align 4
  %30 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @NODE_DOWN, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @NODE_UP, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %50 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %28, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
