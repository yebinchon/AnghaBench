; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_add_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_add_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.fuse_conn = type { i64, %struct.dentry**, i32, i32 }
%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i32, %struct.fuse_conn*, %struct.file_operations*, %struct.inode_operations*, i32, i32, i32, i32, i32, i32 }

@FUSE_CTL_NUM_DENTRIES = common dso_local global i64 0, align 8
@fuse_control_sb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.fuse_conn*, i8*, i32, i32, %struct.inode_operations*, %struct.file_operations*)* @fuse_ctl_add_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %0, %struct.fuse_conn* %1, i8* %2, i32 %3, i32 %4, %struct.inode_operations* %5, %struct.file_operations* %6) #0 {
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode_operations*, align 8
  %15 = alloca %struct.file_operations*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.fuse_conn* %1, %struct.fuse_conn** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.inode_operations* %5, %struct.inode_operations** %14, align 8
  store %struct.file_operations* %6, %struct.file_operations** %15, align 8
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FUSE_CTL_NUM_DENTRIES, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.dentry*, %struct.dentry** %9, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call %struct.dentry* @d_alloc_name(%struct.dentry* %25, i8* %26)
  store %struct.dentry* %27, %struct.dentry** %16, align 8
  %28 = load %struct.dentry*, %struct.dentry** %16, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %93

31:                                               ; preds = %7
  %32 = load i32, i32* @fuse_control_sb, align 4
  %33 = call %struct.inode* @new_inode(i32 %32)
  store %struct.inode* %33, %struct.inode** %17, align 8
  %34 = load %struct.inode*, %struct.inode** %17, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.dentry*, %struct.dentry** %16, align 8
  %38 = call i32 @dput(%struct.dentry* %37)
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %93

39:                                               ; preds = %31
  %40 = call i32 (...) @get_next_ino()
  %41 = load %struct.inode*, %struct.inode** %17, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.inode*, %struct.inode** %17, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %17, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %17, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %17, align 8
  %57 = call i32 @current_time(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %17, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.inode*, %struct.inode** %17, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 5
  store i32 %57, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %17, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 6
  store i32 %57, i32* %63, align 8
  %64 = load %struct.inode_operations*, %struct.inode_operations** %14, align 8
  %65 = icmp ne %struct.inode_operations* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %39
  %67 = load %struct.inode_operations*, %struct.inode_operations** %14, align 8
  %68 = load %struct.inode*, %struct.inode** %17, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  store %struct.inode_operations* %67, %struct.inode_operations** %69, align 8
  br label %70

70:                                               ; preds = %66, %39
  %71 = load %struct.file_operations*, %struct.file_operations** %15, align 8
  %72 = load %struct.inode*, %struct.inode** %17, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  store %struct.file_operations* %71, %struct.file_operations** %73, align 8
  %74 = load %struct.inode*, %struct.inode** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @set_nlink(%struct.inode* %74, i32 %75)
  %77 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %78 = load %struct.inode*, %struct.inode** %17, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store %struct.fuse_conn* %77, %struct.fuse_conn** %79, align 8
  %80 = load %struct.dentry*, %struct.dentry** %16, align 8
  %81 = load %struct.inode*, %struct.inode** %17, align 8
  %82 = call i32 @d_add(%struct.dentry* %80, %struct.inode* %81)
  %83 = load %struct.dentry*, %struct.dentry** %16, align 8
  %84 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %85 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %84, i32 0, i32 1
  %86 = load %struct.dentry**, %struct.dentry*** %85, align 8
  %87 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %88 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds %struct.dentry*, %struct.dentry** %86, i64 %89
  store %struct.dentry* %83, %struct.dentry** %91, align 8
  %92 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %92, %struct.dentry** %8, align 8
  br label %93

93:                                               ; preds = %70, %36, %30
  %94 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
