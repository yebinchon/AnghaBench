; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NFS: mknod(%s/%lu), %pd\0A\00", align 1
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @VFS, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = call i32 @dfprintk(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, %struct.dentry* %21)
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ATTR_MODE, align 4
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call i32 @trace_nfs_mknod_enter(%struct.inode* %27, %struct.dentry* %28)
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)** %32, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %33(%struct.inode* %34, %struct.dentry* %35, %struct.iattr* %10, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @trace_nfs_mknod_exit(%struct.inode* %38, %struct.dentry* %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %46

45:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

46:                                               ; preds = %44
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = call i32 @d_drop(%struct.dentry* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, %struct.dentry*) #1

declare dso_local i32 @trace_nfs_mknod_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @trace_nfs_mknod_exit(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
