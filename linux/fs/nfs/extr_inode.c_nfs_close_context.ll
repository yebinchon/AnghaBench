; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_close_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_close_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, i32 }
%struct.nfs_inode = type { i32, i32 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nfs_server = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.inode*, i32)* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_MOUNT_NOCTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_close_context(%struct.nfs_open_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FMODE_WRITE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %71

19:                                               ; preds = %15
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.inode* @d_inode(i32 %22)
  store %struct.inode* %23, %struct.inode** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %26, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = call i64 %27(%struct.inode* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %71

33:                                               ; preds = %19
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call %struct.nfs_inode* @NFS_I(%struct.inode* %34)
  store %struct.nfs_inode* %35, %struct.nfs_inode** %5, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %71

43:                                               ; preds = %33
  %44 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %71

51:                                               ; preds = %43
  %52 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %52, i32 0, i32 1
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %71

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %58)
  store %struct.nfs_server* %59, %struct.nfs_server** %7, align 8
  %60 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %61 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NFS_MOUNT_NOCTO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @nfs_revalidate_inode(%struct.nfs_server* %68, %struct.inode* %69)
  br label %71

71:                                               ; preds = %67, %66, %56, %50, %42, %32, %18, %14
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
