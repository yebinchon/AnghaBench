; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_safe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_safe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.dentry*)* }

@EBUSY = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NFS: safe_remove(%pd2)\0A\00", align 1
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @nfs_safe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_safe_remove(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 1
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @VFS, align 4
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = call i32 @dfprintk(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %2, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = load %struct.dentry*, %struct.dentry** %2, align 8
  %27 = call i32 @trace_nfs_remove_enter(%struct.inode* %25, %struct.dentry* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %33, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  %37 = call i32 %34(%struct.inode* %35, %struct.dentry* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @nfs_drop_nlink(%struct.inode* %41)
  br label %43

43:                                               ; preds = %40, %30
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %47, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load %struct.dentry*, %struct.dentry** %2, align 8
  %51 = call i32 %48(%struct.inode* %49, %struct.dentry* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.dentry*, %struct.dentry** %2, align 8
  %59 = call i32 @nfs_dentry_handle_enoent(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = load %struct.dentry*, %struct.dentry** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @trace_nfs_remove_exit(%struct.inode* %61, %struct.dentry* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.dentry*) #1

declare dso_local i32 @trace_nfs_remove_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_drop_nlink(%struct.inode*) #1

declare dso_local i32 @nfs_dentry_handle_enoent(%struct.dentry*) #1

declare dso_local i32 @trace_nfs_remove_exit(%struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
