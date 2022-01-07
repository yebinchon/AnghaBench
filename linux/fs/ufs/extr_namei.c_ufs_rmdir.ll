; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.dentry = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ufs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load i32, i32* @ENOTEMPTY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i64 @ufs_empty_dir(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @ufs_unlink(%struct.inode* %15, %struct.dentry* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @inode_dec_link_count(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @inode_dec_link_count(%struct.inode* %25)
  br label %27

27:                                               ; preds = %20, %14
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @ufs_empty_dir(%struct.inode*) #1

declare dso_local i32 @ufs_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
