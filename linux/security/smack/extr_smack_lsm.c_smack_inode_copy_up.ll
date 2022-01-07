; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_copy_up.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_copy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }
%struct.task_smack = type { %struct.smack_known* }
%struct.smack_known = type { i32 }
%struct.inode_smack = type { %struct.smack_known* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cred**)* @smack_inode_copy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_copy_up(%struct.dentry* %0, %struct.cred** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.cred**, align 8
  %6 = alloca %struct.task_smack*, align 8
  %7 = alloca %struct.smack_known*, align 8
  %8 = alloca %struct.inode_smack*, align 8
  %9 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.cred** %1, %struct.cred*** %5, align 8
  %10 = load %struct.cred**, %struct.cred*** %5, align 8
  %11 = load %struct.cred*, %struct.cred** %10, align 8
  store %struct.cred* %11, %struct.cred** %9, align 8
  %12 = load %struct.cred*, %struct.cred** %9, align 8
  %13 = icmp eq %struct.cred* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %15, %struct.cred** %9, align 8
  %16 = load %struct.cred*, %struct.cred** %9, align 8
  %17 = icmp eq %struct.cred* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.cred*, %struct.cred** %9, align 8
  %24 = call %struct.task_smack* @smack_cred(%struct.cred* %23)
  store %struct.task_smack* %24, %struct.task_smack** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @d_inode(i32 %27)
  %29 = call %struct.inode_smack* @smack_inode(i32 %28)
  store %struct.inode_smack* %29, %struct.inode_smack** %8, align 8
  %30 = load %struct.inode_smack*, %struct.inode_smack** %8, align 8
  %31 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %30, i32 0, i32 0
  %32 = load %struct.smack_known*, %struct.smack_known** %31, align 8
  store %struct.smack_known* %32, %struct.smack_known** %7, align 8
  %33 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %34 = load %struct.task_smack*, %struct.task_smack** %6, align 8
  %35 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %34, i32 0, i32 0
  store %struct.smack_known* %33, %struct.smack_known** %35, align 8
  %36 = load %struct.cred*, %struct.cred** %9, align 8
  %37 = load %struct.cred**, %struct.cred*** %5, align 8
  store %struct.cred* %36, %struct.cred** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.task_smack* @smack_cred(%struct.cred*) #1

declare dso_local %struct.inode_smack* @smack_inode(i32) #1

declare dso_local i32 @d_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
