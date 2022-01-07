; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_put_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_put_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { i32 }

@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_put_slot(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 2
  %8 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %7, align 8
  store %struct.ocfs2_slot_info* %8, %struct.ocfs2_slot_info** %5, align 8
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %10 = icmp ne %struct.ocfs2_slot_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %17 = call i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info* %16)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info* %21, i32 %24)
  %26 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %33 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ocfs2_update_disk_slot(%struct.ocfs2_super* %32, %struct.ocfs2_slot_info* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %12
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %12
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %43 = call i32 @ocfs2_free_slot_info(%struct.ocfs2_super* %42)
  br label %44

44:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info*) #1

declare dso_local i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_update_disk_slot(%struct.ocfs2_super*, %struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_free_slot_info(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
