; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___prepare_cp_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___prepare_cp_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_checkpoint = type { i8*, i8*, i8*, i32 }
%struct.f2fs_nm_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @__prepare_cp_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__prepare_cp_block(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_checkpoint*, align 8
  %4 = alloca %struct.f2fs_nm_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %7 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %6)
  store %struct.f2fs_checkpoint* %7, %struct.f2fs_checkpoint** %3, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %9 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %8)
  store %struct.f2fs_nm_info* %9, %struct.f2fs_nm_info** %4, align 8
  %10 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %11 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %14 = call i32 @next_free_nid(%struct.f2fs_sb_info* %13, i32* %5)
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %16 = call i32 @valid_user_blocks(%struct.f2fs_sb_info* %15)
  %17 = call i32 @cpu_to_le64(i32 %16)
  %18 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %3, align 8
  %19 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %21 = call i32 @valid_node_count(%struct.f2fs_sb_info* %20)
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %3, align 8
  %24 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %26 = call i32 @valid_inode_count(%struct.f2fs_sb_info* %25)
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %3, align 8
  %29 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %3, align 8
  %33 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  ret void
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @next_free_nid(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @valid_user_blocks(%struct.f2fs_sb_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @valid_node_count(%struct.f2fs_sb_info*) #1

declare dso_local i32 @valid_inode_count(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
