; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_neg_need_reval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_neg_need_reval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@NFS_MOUNT_LOOKUP_CACHE_NONEG = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @nfs_neg_need_reval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_neg_need_reval(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LOOKUP_CREATE, align 4
  %10 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_2__* @NFS_SERVER(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFS_MOUNT_LOOKUP_CACHE_NONEG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LOOKUP_RCU, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @nfs_check_verifier(%struct.inode* %25, %struct.dentry* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %23, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_2__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_check_verifier(%struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
