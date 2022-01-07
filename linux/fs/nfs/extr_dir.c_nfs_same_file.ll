; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_same_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_same_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_entry*)* @nfs_same_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_same_file(%struct.dentry* %0, %struct.nfs_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs_entry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call i64 @d_really_is_negative(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i64 @is_bad_inode(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @NFS_STALE(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12
  store i32 0, i32* %3, align 4
  br label %53

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.nfs_inode* @NFS_I(%struct.inode* %24)
  store %struct.nfs_inode* %25, %struct.nfs_inode** %7, align 8
  %26 = load %struct.nfs_entry*, %struct.nfs_entry** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %32 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

36:                                               ; preds = %23
  %37 = load %struct.nfs_entry*, %struct.nfs_entry** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.nfs_entry*, %struct.nfs_entry** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %48 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %47, i32 0, i32 1
  %49 = call i64 @nfs_compare_fh(%struct.TYPE_4__* %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %43, %36
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %35, %22, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_compare_fh(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
