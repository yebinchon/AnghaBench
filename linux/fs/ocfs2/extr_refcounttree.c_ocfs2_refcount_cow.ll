; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_refcount_cow(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %51, %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @ocfs2_get_clusters(%struct.inode* %19, i64 %20, i64* %12, i64* %13, i32* %14)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %58

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ocfs2_refcount_cow_hunk(%struct.inode* %39, %struct.buffer_head* %40, i64 %41, i64 %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %58

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %15

58:                                               ; preds = %47, %24, %15
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_cow_hunk(%struct.inode*, %struct.buffer_head*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
