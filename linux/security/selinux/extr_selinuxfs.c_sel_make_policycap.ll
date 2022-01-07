; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_policycap.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_policycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_fs_info = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32* }

@POLICYDB_CAPABILITY_MAX = common dso_local global i32 0, align 4
@selinux_policycap_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@sel_policycap_ops = common dso_local global i32 0, align 4
@SEL_POLICYCAP_INO_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_fs_info*)* @sel_make_policycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_policycap(%struct.selinux_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.selinux_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.selinux_fs_info* %0, %struct.selinux_fs_info** %3, align 8
  store %struct.dentry* null, %struct.dentry** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %7 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sel_remove_entries(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @POLICYDB_CAPABILITY_MAX, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** @selinux_policycap_names, align 8
  %18 = call i32 @ARRAY_SIZE(i8** %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %22 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8**, i8*** @selinux_policycap_names, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct.dentry* @d_alloc_name(i32 %23, i8* %28)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %32 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.dentry* @d_alloc_name(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %34, %struct.dentry** %5, align 8
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = icmp eq %struct.dentry* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %35
  %42 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %3, align 8
  %43 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @S_IFREG, align 4
  %46 = or i32 %45, 292
  %47 = call %struct.inode* @sel_make_inode(i32 %44, i32 %46)
  store %struct.inode* %47, %struct.inode** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = icmp eq %struct.inode* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = call i32 @dput(%struct.dentry* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i32* @sel_policycap_ops, i32** %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SEL_POLICYCAP_INO_OFFSET, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @d_add(%struct.dentry* %63, %struct.inode* %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %11

69:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %50, %38
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @sel_remove_entries(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.dentry* @d_alloc_name(i32, i8*) #1

declare dso_local %struct.inode* @sel_make_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
