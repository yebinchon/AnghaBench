; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_follow_remote_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_follow_remote_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.vfsmount*, i8*)* @nfs_follow_remote_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs_follow_remote_path(%struct.vfsmount* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = call i64 @IS_ERR(%struct.vfsmount* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %13 = call %struct.dentry* @ERR_CAST(%struct.vfsmount* %12)
  store %struct.dentry* %13, %struct.dentry** %3, align 8
  br label %29

14:                                               ; preds = %2
  %15 = call i32 (...) @nfs_referral_loop_protect()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %20 = call i32 @mntput(%struct.vfsmount* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.dentry* @ERR_PTR(i32 %21)
  store %struct.dentry* %22, %struct.dentry** %3, align 8
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.dentry* @mount_subtree(%struct.vfsmount* %24, i8* %25)
  store %struct.dentry* %26, %struct.dentry** %6, align 8
  %27 = call i32 (...) @nfs_referral_loop_unprotect()
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %28, %struct.dentry** %3, align 8
  br label %29

29:                                               ; preds = %23, %18, %11
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %30
}

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.vfsmount*) #1

declare dso_local i32 @nfs_referral_loop_protect(...) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @mount_subtree(%struct.vfsmount*, i8*) #1

declare dso_local i32 @nfs_referral_loop_unprotect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
