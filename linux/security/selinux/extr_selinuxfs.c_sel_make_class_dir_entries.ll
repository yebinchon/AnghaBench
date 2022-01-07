; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_class_dir_entries.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_class_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { %struct.selinux_fs_info* }
%struct.selinux_fs_info = type { i32 }
%struct.inode = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@sel_class_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"perms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*)* @sel_make_class_dir_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_class_dir_entries(i8* %0, i32 %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.selinux_fs_info*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %17, align 8
  store %struct.selinux_fs_info* %18, %struct.selinux_fs_info** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call %struct.dentry* @d_alloc_name(%struct.dentry* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %20, %struct.dentry** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %3
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  %30 = load i32, i32* @S_IFREG, align 4
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.inode* @sel_make_inode(%struct.super_block* %29, i32 %32)
  store %struct.inode* %33, %struct.inode** %11, align 8
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = call i32 @dput(%struct.dentry* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %26
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store i32* @sel_class_ops, i32** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sel_class_to_ino(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dentry*, %struct.dentry** %10, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @d_add(%struct.dentry* %48, %struct.inode* %49)
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %9, align 8
  %53 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %52, i32 0, i32 0
  %54 = call %struct.dentry* @sel_make_dir(%struct.dentry* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  store %struct.dentry* %54, %struct.dentry** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = call i64 @IS_ERR(%struct.dentry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.dentry* %59)
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %41
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = call i32 @sel_make_perm_files(i8* %62, i32 %63, %struct.dentry* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %58, %36, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @sel_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @sel_class_to_ino(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.dentry* @sel_make_dir(%struct.dentry*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @sel_make_perm_files(i8*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
