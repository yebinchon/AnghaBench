; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_dentry_create_files_as.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_dentry_create_files_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }
%struct.cred = type opaque
%struct.task_smack = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode_smack = type { i32, %struct.TYPE_2__* }

@SMK_INODE_TRANSMUTE = common dso_local global i32 0, align 4
@MAY_TRANSMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, %struct.qstr*, %struct.cred*, %struct.cred*)* @smack_dentry_create_files_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_dentry_create_files_as(%struct.dentry* %0, i32 %1, %struct.qstr* %2, %struct.cred* %3, %struct.cred* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.task_smack*, align 8
  %12 = alloca %struct.task_smack*, align 8
  %13 = alloca %struct.inode_smack*, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.cred* %3, %struct.cred** %9, align 8
  store %struct.cred* %4, %struct.cred** %10, align 8
  %15 = load %struct.cred*, %struct.cred** %9, align 8
  %16 = call %struct.task_smack* @smack_cred(%struct.cred* %15)
  store %struct.task_smack* %16, %struct.task_smack** %11, align 8
  %17 = load %struct.cred*, %struct.cred** %10, align 8
  %18 = call %struct.task_smack* @smack_cred(%struct.cred* %17)
  store %struct.task_smack* %18, %struct.task_smack** %12, align 8
  %19 = load %struct.task_smack*, %struct.task_smack** %11, align 8
  %20 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.task_smack*, %struct.task_smack** %12, align 8
  %23 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %22, i32 0, i32 0
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @d_inode(i32 %26)
  %28 = call %struct.inode_smack* @smack_inode(i32 %27)
  store %struct.inode_smack* %28, %struct.inode_smack** %13, align 8
  %29 = load %struct.inode_smack*, %struct.inode_smack** %13, align 8
  %30 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SMK_INODE_TRANSMUTE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %5
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.task_smack*, %struct.task_smack** %11, align 8
  %38 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode_smack*, %struct.inode_smack** %13, align 8
  %43 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.task_smack*, %struct.task_smack** %11, align 8
  %48 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @smk_access_entry(i32 %41, i32 %46, i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load i32, i32* %14, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %35
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @MAY_TRANSMUTE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.inode_smack*, %struct.inode_smack** %13, align 8
  %62 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.task_smack*, %struct.task_smack** %12, align 8
  %65 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %64, i32 0, i32 0
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  br label %66

66:                                               ; preds = %60, %55, %35
  br label %67

67:                                               ; preds = %66, %5
  ret i32 0
}

declare dso_local %struct.task_smack* @smack_cred(%struct.cred*) #1

declare dso_local %struct.inode_smack* @smack_inode(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smk_access_entry(i32, i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
