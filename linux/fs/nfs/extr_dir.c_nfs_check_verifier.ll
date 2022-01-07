; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_check_verifier.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_check_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NFS_MOUNT_LOOKUP_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @nfs_check_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_check_verifier(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.dentry*, %struct.dentry** %6, align 8
  %9 = call i64 @IS_ROOT(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %54

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFS_MOUNT_LOOKUP_CACHE_NONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %54

21:                                               ; preds = %12
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nfs_verify_change_attribute(%struct.inode* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %54

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i64 @nfs_mapping_need_revalidate_inode(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %54

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i64 @__nfs_revalidate_inode(%struct.TYPE_3__* %39, %struct.inode* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nfs_verify_change_attribute(%struct.inode* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %43, %36, %28, %20, %11
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_verify_change_attribute(%struct.inode*, i32) #1

declare dso_local i64 @nfs_mapping_need_revalidate_inode(%struct.inode*) #1

declare dso_local i64 @__nfs_revalidate_inode(%struct.TYPE_3__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
