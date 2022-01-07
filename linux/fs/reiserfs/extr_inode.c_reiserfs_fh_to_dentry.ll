; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"reiserfs-13077\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"nfsd/reiserfs, fhtype=%d, len=%d - odd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
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
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 6
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %13
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @reiserfs_warning(%struct.super_block* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %57

30:                                               ; preds = %26
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load %struct.fid*, %struct.fid** %7, align 8
  %33 = getelementptr inbounds %struct.fid, %struct.fid* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fid*, %struct.fid** %7, align 8
  %38 = getelementptr inbounds %struct.fid, %struct.fid* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = icmp sge i32 %45, 5
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %30
  %48 = load %struct.fid*, %struct.fid** %7, align 8
  %49 = getelementptr inbounds %struct.fid, %struct.fid* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %52, %47 ], [ 0, %53 ]
  %56 = call %struct.dentry* @reiserfs_get_dentry(%struct.super_block* %31, i32 %36, i32 %41, i32 %55)
  store %struct.dentry* %56, %struct.dentry** %5, align 8
  br label %57

57:                                               ; preds = %54, %29
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %58
}

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local %struct.dentry* @reiserfs_get_dentry(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
