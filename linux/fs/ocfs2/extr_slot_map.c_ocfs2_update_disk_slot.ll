; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_slot_info = type { i32, i64 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_slot_info*, i32)* @ocfs2_update_disk_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_update_disk_slot(%struct.ocfs2_super* %0, %struct.ocfs2_slot_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_slot_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_slot_info* %1, %struct.ocfs2_slot_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ocfs2_update_disk_slot_extended(%struct.ocfs2_slot_info* %17, i32 %18, %struct.buffer_head** %8)
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ocfs2_update_disk_slot_old(%struct.ocfs2_slot_info* %21, i32 %22, %struct.buffer_head** %8)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @INODE_CACHE(i32 %32)
  %34 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %28, %struct.buffer_head* %29, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_update_disk_slot_extended(%struct.ocfs2_slot_info*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_update_disk_slot_old(%struct.ocfs2_slot_info*, i32, %struct.buffer_head**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
