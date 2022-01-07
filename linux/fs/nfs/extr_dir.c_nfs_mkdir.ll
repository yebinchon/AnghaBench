; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NFS: mkdir(%s/%lu), %pd\0A\00", align 1
@ATTR_MODE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iattr, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @VFS, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 @dfprintk(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, %struct.dentry* %19)
  %21 = load i32, i32* @ATTR_MODE, align 4
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call i32 @trace_nfs_mkdir_enter(%struct.inode* %27, %struct.dentry* %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)** %32, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = call i32 %33(%struct.inode* %34, %struct.dentry* %35, %struct.iattr* %8)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @trace_nfs_mkdir_exit(%struct.inode* %37, %struct.dentry* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %45

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

45:                                               ; preds = %43
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call i32 @d_drop(%struct.dentry* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, %struct.dentry*) #1

declare dso_local i32 @trace_nfs_mkdir_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @trace_nfs_mkdir_exit(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
