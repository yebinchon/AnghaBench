; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___allocate_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___allocate_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_summary = type { i32 }
%struct.node_info = type { i32 }

@FI_NO_ALLOC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*, i32)* @__allocate_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__allocate_data_block(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnode_of_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.f2fs_summary, align 4
  %8 = alloca %struct.node_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %13 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.f2fs_sb_info* @F2FS_I_SB(i32 %14)
  store %struct.f2fs_sb_info* %15, %struct.f2fs_sb_info** %6, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %17 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FI_NO_ALLOC, align 4
  %20 = call i32 @is_inode_flag_set(i32 %18, i32 %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %29 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %27, i32 %30, %struct.node_info* %8)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %26
  %37 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %38 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %41 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %44 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @datablock_addr(i32 %39, i32 %42, i32 %45)
  %47 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %48 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %50 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NULL_ADDR, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %66

55:                                               ; preds = %36
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %57 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %58 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @inc_valid_block_count(%struct.f2fs_sb_info* %56, i32 %59, i32* %10)
  store i32 %60, i32* %11, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %102

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %68 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %71 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_summary(%struct.f2fs_summary* %7, i32 %69, i32 %72, i32 %74)
  %76 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %77 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %82 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @f2fs_allocate_data_block(%struct.f2fs_sb_info* %79, i32* null, i32 %80, i32* %82, %struct.f2fs_summary* %7, i32 %83, i32* null, i32 0)
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @GET_SEGNO(%struct.f2fs_sb_info* %85, i32 %86)
  %88 = load i64, i64* @NULL_SEGNO, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %66
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %92 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @invalidate_mapping_pages(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %66
  %97 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %98 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %99 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data* %97, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %63, %34, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_inode_flag_set(i32, i32) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @datablock_addr(i32, i32, i32) #1

declare dso_local i32 @inc_valid_block_count(%struct.f2fs_sb_info*, i32, i32*) #1

declare dso_local i32 @set_summary(%struct.f2fs_summary*, i32, i32, i32) #1

declare dso_local i32 @f2fs_allocate_data_block(%struct.f2fs_sb_info*, i32*, i32, i32*, %struct.f2fs_summary*, i32, i32*, i32) #1

declare dso_local i64 @GET_SEGNO(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
