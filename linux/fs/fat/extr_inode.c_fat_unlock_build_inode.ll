; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_unlock_build_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_unlock_build_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FAT_NFS_NOSTALE_RO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdos_sb_info*)* @fat_unlock_build_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_unlock_build_inode(%struct.msdos_sb_info* %0) #0 {
  %2 = alloca %struct.msdos_sb_info*, align 8
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %2, align 8
  %3 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %2, align 8
  %4 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FAT_NFS_NOSTALE_RO, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %2, align 8
  %11 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_unlock(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
