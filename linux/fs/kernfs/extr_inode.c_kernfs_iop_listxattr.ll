; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_iop_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_iop_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.kernfs_iattrs = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernfs_iop_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_iattrs*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %10)
  store %struct.kernfs_node* %11, %struct.kernfs_node** %8, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %13 = call %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* %12)
  store %struct.kernfs_iattrs* %13, %struct.kernfs_iattrs** %9, align 8
  %14 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %9, align 8
  %15 = icmp ne %struct.kernfs_iattrs* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %9, align 8
  %23 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %22, i32 0, i32 0
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @simple_xattr_list(i32 %21, i32* %23, i8* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node*) #1

declare dso_local i32 @simple_xattr_list(i32, i32*, i8*, i64) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
