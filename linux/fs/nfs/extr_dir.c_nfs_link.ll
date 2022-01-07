; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.inode*, i32*)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NFS: link(%pd2 -> %pd2)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load i32, i32* @VFS, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i32 @dfprintk(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12, %struct.dentry* %13)
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i32 @trace_nfs_link_enter(%struct.inode* %15, %struct.inode* %16, %struct.dentry* %17)
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 @d_drop(%struct.dentry* %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.inode*, %struct.inode*, i32*)*, i32 (%struct.inode*, %struct.inode*, i32*)** %23, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = call i32 %24(%struct.inode* %25, %struct.inode* %26, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @ihold(%struct.inode* %33)
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i32 @d_add(%struct.dentry* %35, %struct.inode* %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @trace_nfs_link_exit(%struct.inode* %39, %struct.inode* %40, %struct.dentry* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @trace_nfs_link_enter(%struct.inode*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @trace_nfs_link_exit(%struct.inode*, %struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
