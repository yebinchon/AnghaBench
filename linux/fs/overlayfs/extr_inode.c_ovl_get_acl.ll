; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

@CONFIG_FS_POSIX_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @ovl_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.inode* @ovl_inode_real(%struct.inode* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load i32, i32* @CONFIG_FS_POSIX_ACL, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @IS_POSIXACL(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %30

19:                                               ; preds = %14
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cred* @ovl_override_creds(i32 %22)
  store %struct.cred* %23, %struct.cred** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.posix_acl* @get_acl(%struct.inode* %24, i32 %25)
  store %struct.posix_acl* %26, %struct.posix_acl** %8, align 8
  %27 = load %struct.cred*, %struct.cred** %7, align 8
  %28 = call i32 @revert_creds(%struct.cred* %27)
  %29 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %29, %struct.posix_acl** %3, align 8
  br label %30

30:                                               ; preds = %19, %18
  %31 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %31
}

declare dso_local %struct.inode* @ovl_inode_real(%struct.inode*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
