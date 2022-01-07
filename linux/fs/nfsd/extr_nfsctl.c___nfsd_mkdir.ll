; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___nfsd_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___nfsd_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.nfsdfs_client*, i32 }
%struct.dentry = type { i32 }
%struct.nfsdfs_client = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nfsdfs_client*)* @__nfsd_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfsd_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nfsdfs_client* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsdfs_client*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nfsdfs_client* %3, %struct.nfsdfs_client** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.inode* @nfsd_get_inode(i32 %13, i32 %14)
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %40

21:                                               ; preds = %4
  %22 = load %struct.nfsdfs_client*, %struct.nfsdfs_client** %9, align 8
  %23 = icmp ne %struct.nfsdfs_client* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.nfsdfs_client*, %struct.nfsdfs_client** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  store %struct.nfsdfs_client* %25, %struct.nfsdfs_client** %27, align 8
  %28 = load %struct.nfsdfs_client*, %struct.nfsdfs_client** %9, align 8
  %29 = getelementptr inbounds %struct.nfsdfs_client, %struct.nfsdfs_client* %28, i32 0, i32 0
  %30 = call i32 @kref_get(i32* %29)
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call i32 @d_add(%struct.dentry* %32, %struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @inc_nlink(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @fsnotify_mkdir(%struct.inode* %37, %struct.dentry* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %18
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.inode* @nfsd_get_inode(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
