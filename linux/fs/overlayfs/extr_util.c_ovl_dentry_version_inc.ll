; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_version_inc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_version_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, i32)* @ovl_dentry_version_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_dentry_version_inc(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call %struct.inode* @d_inode(%struct.dentry* %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call i32 @inode_is_locked(%struct.inode* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = call i32 @ovl_path_type(%struct.dentry* %14)
  %16 = call i64 @OVL_TYPE_MERGE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %2
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @OVL_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i64 @OVL_TYPE_MERGE(i32) #1

declare dso_local i32 @ovl_path_type(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @OVL_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
