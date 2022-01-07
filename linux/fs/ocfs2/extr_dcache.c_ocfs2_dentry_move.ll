; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_move.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32* }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dentry_move(%struct.dentry* %0, %struct.dentry* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp eq %struct.inode* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super* %23, i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %30, %struct.inode* %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %42

42:                                               ; preds = %39, %22
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call i32 @d_move(%struct.dentry* %44, %struct.dentry* %45)
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ocfs2_dentry_lock_put(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
