; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_detach_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_detach_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.nfs_server = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_delegation* (%struct.inode*)* @nfs_inode_detach_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_delegation* @nfs_inode_detach_delegation(%struct.inode* %0) #0 {
  %2 = alloca %struct.nfs_delegation*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %9)
  store %struct.nfs_server* %10, %struct.nfs_server** %5, align 8
  %11 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %12 = call %struct.nfs_delegation* @nfs_start_delegation_return(%struct.nfs_inode* %11)
  store %struct.nfs_delegation* %12, %struct.nfs_delegation** %6, align 8
  %13 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %14 = icmp eq %struct.nfs_delegation* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.nfs_delegation* null, %struct.nfs_delegation** %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %18 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %19 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %20 = call %struct.nfs_delegation* @nfs_detach_delegation(%struct.nfs_inode* %17, %struct.nfs_delegation* %18, %struct.nfs_server* %19)
  store %struct.nfs_delegation* %20, %struct.nfs_delegation** %2, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  ret %struct.nfs_delegation* %22
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs_delegation* @nfs_start_delegation_return(%struct.nfs_inode*) #1

declare dso_local %struct.nfs_delegation* @nfs_detach_delegation(%struct.nfs_inode*, %struct.nfs_delegation*, %struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
