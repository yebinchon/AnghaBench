; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_refresh_inode_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_refresh_inode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*)* @nfs_refresh_inode_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_refresh_inode_locked(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @trace_nfs_refresh_inode_enter(%struct.inode* %6)
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %10 = call i64 @nfs_inode_attrs_need_update(%struct.inode* %8, %struct.nfs_fattr* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %15 = call i32 @nfs_update_inode(%struct.inode* %13, %struct.nfs_fattr* %14)
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %19 = call i32 @nfs_check_inode_attributes(%struct.inode* %17, %struct.nfs_fattr* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @trace_nfs_refresh_inode_exit(%struct.inode* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @trace_nfs_refresh_inode_enter(%struct.inode*) #1

declare dso_local i64 @nfs_inode_attrs_need_update(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_update_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_check_inode_attributes(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @trace_nfs_refresh_inode_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
