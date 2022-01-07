; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_try_to_fix_pino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_try_to_fix_pino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @try_to_fix_pino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_fix_pino(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_inode_info*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %5)
  store %struct.f2fs_inode_info* %6, %struct.f2fs_inode_info** %3, align 8
  %7 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i64 @file_wrong_pino(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i64 @get_parent_ino(%struct.inode* %19, i32* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @f2fs_i_pino_write(%struct.inode* %23, i32 %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @file_got_pino(%struct.inode* %26)
  br label %28

28:                                               ; preds = %22, %18, %13, %1
  %29 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %3, align 8
  %30 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  ret void
}

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @file_wrong_pino(%struct.inode*) #1

declare dso_local i64 @get_parent_ino(%struct.inode*, i32*) #1

declare dso_local i32 @f2fs_i_pino_write(%struct.inode*, i32) #1

declare dso_local i32 @file_got_pino(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
