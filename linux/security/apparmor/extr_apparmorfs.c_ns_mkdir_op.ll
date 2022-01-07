; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_mkdir_op.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_mkdir_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aa_ns = type { i32, i32 }
%struct.aa_label = type { i32 }

@AA_MAY_LOAD_POLICY = common dso_local global i32 0, align 4
@aafs_ops = common dso_local global i32 0, align 4
@aafs_mnt = common dso_local global i32 0, align 4
@aafs_count = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ns_mkdir_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_mkdir_op(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_ns*, align 8
  %9 = alloca %struct.aa_ns*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %12, %struct.aa_label** %10, align 8
  %13 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %14 = load i32, i32* @AA_MAY_LOAD_POLICY, align 4
  %15 = call i32 @aa_may_manage_policy(%struct.aa_label* %13, i32* null, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %17 = call i32 @end_current_label_crit_section(%struct.aa_label* %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.aa_ns* @aa_get_ns(i32 %25)
  store %struct.aa_ns* %26, %struct.aa_ns** %9, align 8
  %27 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %28 = call i32 @ns_subns_dir(%struct.aa_ns* %27)
  %29 = call %struct.inode* @d_inode(i32 %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = icmp ne %struct.inode* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @inode_unlock(%struct.inode* %34)
  %36 = call i32 @simple_pin_fs(i32* @aafs_ops, i32* @aafs_mnt, i32* @aafs_count)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %38 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %37, i32 0, i32 0
  %39 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %40 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mutex_lock_nested(i32* %38, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load i32, i32* @I_MUTEX_PARENT, align 4
  %45 = call i32 @inode_lock_nested(%struct.inode* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %22
  br label %83

49:                                               ; preds = %22
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @S_IFDIR, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @__aafs_setup_d_inode(%struct.inode* %50, %struct.dentry* %51, i32 %54, i32* null, i32* null, i32* null, i32* null)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %77

59:                                               ; preds = %49
  %60 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @READ_ONCE(i32 %64)
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = call %struct.aa_ns* @__aa_find_or_create_ns(%struct.aa_ns* %60, i32 %65, %struct.dentry* %66)
  store %struct.aa_ns* %67, %struct.aa_ns** %8, align 8
  %68 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %69 = call i64 @IS_ERR(%struct.aa_ns* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %73 = call i32 @PTR_ERR(%struct.aa_ns* %72)
  store i32 %73, i32* %11, align 4
  store %struct.aa_ns* null, %struct.aa_ns** %8, align 8
  br label %74

74:                                               ; preds = %71, %59
  %75 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %76 = call i32 @aa_put_ns(%struct.aa_ns* %75)
  br label %77

77:                                               ; preds = %74, %58
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @simple_release_fs(i32* @aafs_mnt, i32* @aafs_count)
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %85 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %88 = call i32 @aa_put_ns(%struct.aa_ns* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i32 @aa_may_manage_policy(%struct.aa_label*, i32*, i32) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

declare dso_local %struct.aa_ns* @aa_get_ns(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @ns_subns_dir(%struct.aa_ns*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @simple_pin_fs(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @__aafs_setup_d_inode(%struct.inode*, %struct.dentry*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.aa_ns* @__aa_find_or_create_ns(%struct.aa_ns*, i32, %struct.dentry*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @IS_ERR(%struct.aa_ns*) #1

declare dso_local i32 @PTR_ERR(%struct.aa_ns*) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
