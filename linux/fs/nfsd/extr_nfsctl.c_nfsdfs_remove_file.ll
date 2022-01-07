; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsdfs_remove_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsdfs_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.dentry*)* @nfsdfs_remove_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsdfs_remove_file(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = call i32 @d_inode(%struct.dentry* %6)
  %8 = call i32 @clear_ncl(i32 %7)
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call i32 @dget(%struct.dentry* %9)
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call i32 @simple_unlink(%struct.inode* %11, %struct.dentry* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @d_delete(%struct.dentry* %14)
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @dput(%struct.dentry* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  ret void
}

declare dso_local i32 @clear_ncl(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
