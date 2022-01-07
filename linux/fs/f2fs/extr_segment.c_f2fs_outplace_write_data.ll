; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_outplace_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_outplace_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, i32, i32 }
%struct.f2fs_io_info = type { i32, i32, i32, %struct.f2fs_sb_info* }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_summary = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@F2FS_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_outplace_write_data(%struct.dnode_of_data* %0, %struct.f2fs_io_info* %1) #0 {
  %3 = alloca %struct.dnode_of_data*, align 8
  %4 = alloca %struct.f2fs_io_info*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.f2fs_summary, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %3, align 8
  store %struct.f2fs_io_info* %1, %struct.f2fs_io_info** %4, align 8
  %7 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %8 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %7, i32 0, i32 3
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  store %struct.f2fs_sb_info* %9, %struct.f2fs_sb_info** %5, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %12 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NULL_ADDR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %10, i32 %16)
  %18 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %19 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %22 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @set_summary(%struct.f2fs_summary* %6, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %29 = call i32 @do_write_page(%struct.f2fs_summary* %6, %struct.f2fs_io_info* %28)
  %30 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %31 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %32 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data* %30, i32 %33)
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %36 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %4, align 8
  %37 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @F2FS_BLKSIZE, align 4
  %40 = call i32 @f2fs_update_iostat(%struct.f2fs_sb_info* %35, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_summary(%struct.f2fs_summary*, i32, i32, i32) #1

declare dso_local i32 @do_write_page(%struct.f2fs_summary*, %struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_update_iostat(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
