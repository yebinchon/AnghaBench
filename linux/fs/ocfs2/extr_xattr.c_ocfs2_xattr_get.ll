; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64)* @ocfs2_xattr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_lock_holder, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %16, %struct.buffer_head** %14, i32 0, %struct.ocfs2_lock_holder* %15)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %46

24:                                               ; preds = %5
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %29, %struct.buffer_head* %30, i32 %31, i8* %32, i8* %33, i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @up_read(i32* %38)
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %40, i32 0, %struct.ocfs2_lock_holder* %15, i32 %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %44 = call i32 @brelse(%struct.buffer_head* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %24, %20
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, %struct.buffer_head**, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode*, %struct.buffer_head*, i32, i8*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
