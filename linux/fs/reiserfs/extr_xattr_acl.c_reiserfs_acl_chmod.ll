; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c_reiserfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c_reiserfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }

@STAT_DATA_V1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = call i64 @IS_PRIVATE(%struct.inode* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @get_inode_sd_version(%struct.inode* %9)
  %11 = load i64, i64* @STAT_DATA_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reiserfs_posixacl(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %8
  store i32 0, i32* %2, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @posix_acl_chmod(%struct.inode* %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %19, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i64 @get_inode_sd_version(%struct.inode*) #1

declare dso_local i32 @reiserfs_posixacl(i32) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
