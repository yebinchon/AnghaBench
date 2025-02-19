; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_inode_chksum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_inode_chksum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32 }
%struct.TYPE_2__ = type { %struct.f2fs_inode }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_inode_chksum_set(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_inode*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call %struct.TYPE_2__* @F2FS_NODE(%struct.page* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.f2fs_inode* %8, %struct.f2fs_inode** %5, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @f2fs_enable_inode_chksum(%struct.f2fs_sb_info* %9, %struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @f2fs_inode_chksum(%struct.f2fs_sb_info* %15, %struct.page* %16)
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %20 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.TYPE_2__* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @f2fs_enable_inode_chksum(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @f2fs_inode_chksum(%struct.f2fs_sb_info*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
