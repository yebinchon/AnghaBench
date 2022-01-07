; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %65

19:                                               ; preds = %15
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 5
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.fid*, %struct.fid** %7, align 8
  %25 = getelementptr inbounds %struct.fid, %struct.fid* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.fid*, %struct.fid** %7, align 8
  %31 = getelementptr inbounds %struct.fid, %struct.fid* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %28, %23 ], [ %34, %29 ]
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.fid*, %struct.fid** %7, align 8
  %41 = getelementptr inbounds %struct.fid, %struct.fid* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.fid*, %struct.fid** %7, align 8
  %47 = getelementptr inbounds %struct.fid, %struct.fid* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i32 [ %44, %39 ], [ %50, %45 ]
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.fid*, %struct.fid** %7, align 8
  %57 = getelementptr inbounds %struct.fid, %struct.fid* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  %64 = call %struct.dentry* @reiserfs_get_dentry(%struct.super_block* %20, i32 %36, i32 %52, i32 %63)
  store %struct.dentry* %64, %struct.dentry** %5, align 8
  br label %65

65:                                               ; preds = %62, %18
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %66
}

declare dso_local %struct.dentry* @reiserfs_get_dentry(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
