; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_dir.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i64, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*, i64*)* @sel_make_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @sel_make_dir(%struct.dentry* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.dentry* @d_alloc_name(%struct.dentry* %10, i8* %11)
  store %struct.dentry* %12, %struct.dentry** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dentry* @ERR_PTR(i32 %17)
  store %struct.dentry* %18, %struct.dentry** %4, align 8
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IXUGO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.inode* @sel_make_inode(i32 %22, i32 %27)
  store %struct.inode* %28, %struct.inode** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = call i32 @dput(%struct.dentry* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %4, align 8
  br label %56

37:                                               ; preds = %19
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %41, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @inc_nlink(%struct.inode* %47)
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @d_add(%struct.dentry* %49, %struct.inode* %50)
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = call %struct.inode* @d_inode(%struct.dentry* %52)
  %54 = call i32 @inc_nlink(%struct.inode* %53)
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %55, %struct.dentry** %4, align 8
  br label %56

56:                                               ; preds = %37, %31, %15
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %57
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @sel_make_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
