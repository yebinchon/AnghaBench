; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_security_and_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_security_and_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_security_and_acl(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = call i32 @ocfs2_init_security_get(%struct.inode* %9, %struct.inode* %10, %struct.qstr* %11, i32* null)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mlog_errno(i32 %16)
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @ocfs2_inode_lock(%struct.inode* %19, %struct.buffer_head** %8, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = call i32 @ocfs2_init_acl(i32* null, %struct.inode* %27, %struct.inode* %28, i32* null, %struct.buffer_head* %29, i32* null, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @ocfs2_inode_unlock(%struct.inode* %37, i32 0)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = call i32 @brelse(%struct.buffer_head* %39)
  br label %41

41:                                               ; preds = %36, %23, %15
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.qstr*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_init_acl(i32*, %struct.inode*, %struct.inode*, i32*, %struct.buffer_head*, i32*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
