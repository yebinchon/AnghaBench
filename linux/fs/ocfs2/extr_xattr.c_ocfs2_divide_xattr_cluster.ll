; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_divide_xattr_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_divide_xattr_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32, i32, i32*)* @ocfs2_divide_xattr_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_divide_xattr_cluster(%struct.inode* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 2, %19
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @OCFS2_SB(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %21, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ocfs2_extend_trans(i32* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %47

40:                                               ; preds = %5
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ocfs2_divide_xattr_bucket(%struct.inode* %41, i32* %42, i32 %43, i32 %44, i32* %45, i32 1)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_divide_xattr_bucket(%struct.inode*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
