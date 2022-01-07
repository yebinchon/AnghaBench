; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_client_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_client_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_client_rmdir(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @inode_lock(%struct.inode* %12)
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call i32 @nfsdfs_remove_files(%struct.dentry* %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @clear_ncl(%struct.inode* %16)
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = call i32 @dget(%struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.dentry*, %struct.dentry** %2, align 8
  %22 = call i32 @simple_rmdir(%struct.inode* %20, %struct.dentry* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.dentry*, %struct.dentry** %2, align 8
  %26 = call i32 @d_delete(%struct.dentry* %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @inode_unlock(%struct.inode* %27)
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @nfsdfs_remove_files(%struct.dentry*) #1

declare dso_local i32 @clear_ncl(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
