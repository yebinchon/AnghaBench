; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_rmdir_op.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_rmdir_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.aa_ns = type { i32, i32, i32 }
%struct.aa_label = type { i32 }

@AA_MAY_LOAD_POLICY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ns_rmdir_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_rmdir_op(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %10, %struct.aa_label** %8, align 8
  %11 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %12 = load i32, i32* @AA_MAY_LOAD_POLICY, align 4
  %13 = call i32 @aa_may_manage_policy(%struct.aa_label* %11, i32* null, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %15 = call i32 @end_current_label_crit_section(%struct.aa_label* %14)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.aa_ns* @aa_get_ns(i32 %23)
  store %struct.aa_ns* %24, %struct.aa_ns** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @inode_unlock(%struct.inode* %25)
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  %30 = call i32 @inode_unlock(%struct.inode* %29)
  %31 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %32 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %31, i32 0, i32 0
  %33 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %34 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mutex_lock_nested(i32* %32, i32 %35)
  %37 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %38 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %37, i32 0, i32 1
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__aa_findn_ns(i32* %38, i32 %42, i32 %46)
  %48 = call %struct.aa_ns* @aa_get_ns(i32 %47)
  store %struct.aa_ns* %48, %struct.aa_ns** %6, align 8
  %49 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %50 = icmp ne %struct.aa_ns* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %20
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %65

54:                                               ; preds = %20
  %55 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %56 = call %struct.dentry* @ns_dir(%struct.aa_ns* %55)
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = icmp ne %struct.dentry* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @AA_BUG(i32 %59)
  %61 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %62 = call i32 @__aa_remove_ns(%struct.aa_ns* %61)
  %63 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %64 = call i32 @aa_put_ns(%struct.aa_ns* %63)
  br label %65

65:                                               ; preds = %54, %51
  %66 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %67 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load i32, i32* @I_MUTEX_PARENT, align 4
  %71 = call i32 @inode_lock_nested(%struct.inode* %69, i32 %70)
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load %struct.inode*, %struct.inode** %73, align 8
  %75 = call i32 @inode_lock(%struct.inode* %74)
  %76 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %77 = call i32 @aa_put_ns(%struct.aa_ns* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %65, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i32 @aa_may_manage_policy(%struct.aa_label*, i32*, i32) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

declare dso_local %struct.aa_ns* @aa_get_ns(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @__aa_findn_ns(i32*, i32, i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.dentry* @ns_dir(%struct.aa_ns*) #1

declare dso_local i32 @__aa_remove_ns(%struct.aa_ns*) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
