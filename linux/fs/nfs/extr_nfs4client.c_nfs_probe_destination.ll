; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs_probe_destination.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs_probe_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*)* @nfs_probe_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_probe_destination(%struct.nfs_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  %7 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inode* @d_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %13, %struct.nfs_fattr** %5, align 8
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %15 = icmp eq %struct.nfs_fattr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @NFS_FH(%struct.inode* %21)
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %24 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %20, i32 %22, %struct.nfs_fattr* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %26 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, i32, %struct.nfs_fattr*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
