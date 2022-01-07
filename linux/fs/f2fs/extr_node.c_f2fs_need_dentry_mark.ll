; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_need_dentry_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_need_dentry_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.nat_entry = type { i32 }

@IS_CHECKPOINTED = common dso_local global i32 0, align 4
@HAS_FSYNCED_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_need_dentry_mark(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_nm_info*, align 8
  %6 = alloca %struct.nat_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %8)
  store %struct.f2fs_nm_info* %9, %struct.f2fs_nm_info** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %11 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %13, i32 %14)
  store %struct.nat_entry* %15, %struct.nat_entry** %6, align 8
  %16 = load %struct.nat_entry*, %struct.nat_entry** %6, align 8
  %17 = icmp ne %struct.nat_entry* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.nat_entry*, %struct.nat_entry** %6, align 8
  %20 = load i32, i32* @IS_CHECKPOINTED, align 4
  %21 = call i32 @get_nat_flag(%struct.nat_entry* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.nat_entry*, %struct.nat_entry** %6, align 8
  %25 = load i32, i32* @HAS_FSYNCED_INODE, align 4
  %26 = call i32 @get_nat_flag(%struct.nat_entry* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %23, %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %32 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i32) #1

declare dso_local i32 @get_nat_flag(%struct.nat_entry*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
