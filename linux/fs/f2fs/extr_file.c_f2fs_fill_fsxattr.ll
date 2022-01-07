; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_fill_fsxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_fill_fsxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fsxattr = type { i32 }
%struct.f2fs_inode_info = type { i32, i32 }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fsxattr*)* @f2fs_fill_fsxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_fill_fsxattr(%struct.inode* %0, %struct.fsxattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fsxattr*, align 8
  %5 = alloca %struct.f2fs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fsxattr* %1, %struct.fsxattr** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %6)
  store %struct.f2fs_inode_info* %7, %struct.f2fs_inode_info** %5, align 8
  %8 = load %struct.fsxattr*, %struct.fsxattr** %4, align 8
  %9 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @f2fs_iflags_to_xflags(i32 %11)
  %13 = call i32 @simple_fill_fsxattr(%struct.fsxattr* %8, i32 %12)
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @F2FS_I_SB(%struct.inode* %14)
  %16 = call i64 @f2fs_sb_has_project_quota(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @from_kprojid(i32* @init_user_ns, i32 %21)
  %23 = load %struct.fsxattr*, %struct.fsxattr** %4, align 8
  %24 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @simple_fill_fsxattr(%struct.fsxattr*, i32) #1

declare dso_local i32 @f2fs_iflags_to_xflags(i32) #1

declare dso_local i64 @f2fs_sb_has_project_quota(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @from_kprojid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
