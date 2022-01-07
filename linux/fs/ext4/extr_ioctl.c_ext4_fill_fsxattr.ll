; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_fill_fsxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_fill_fsxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fsxattr = type { i32 }
%struct.ext4_inode_info = type { i32, i32 }

@EXT4_FL_USER_VISIBLE = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fsxattr*)* @ext4_fill_fsxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_fill_fsxattr(%struct.inode* %0, %struct.fsxattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fsxattr*, align 8
  %5 = alloca %struct.ext4_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fsxattr* %1, %struct.fsxattr** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %6)
  store %struct.ext4_inode_info* %7, %struct.ext4_inode_info** %5, align 8
  %8 = load %struct.fsxattr*, %struct.fsxattr** %4, align 8
  %9 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EXT4_FL_USER_VISIBLE, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @ext4_iflags_to_xflags(i32 %13)
  %15 = call i32 @simple_fill_fsxattr(%struct.fsxattr* %8, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ext4_has_feature_project(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %23 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @from_kprojid(i32* @init_user_ns, i32 %24)
  %26 = load %struct.fsxattr*, %struct.fsxattr** %4, align 8
  %27 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %2
  ret void
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @simple_fill_fsxattr(%struct.fsxattr*, i32) #1

declare dso_local i32 @ext4_iflags_to_xflags(i32) #1

declare dso_local i64 @ext4_has_feature_project(i32) #1

declare dso_local i32 @from_kprojid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
