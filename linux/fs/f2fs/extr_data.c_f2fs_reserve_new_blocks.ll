; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_reserve_new_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_reserve_new_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32, i32, i32, i32 }
%struct.f2fs_sb_info = type { i32 }

@FI_NO_ALLOC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@NEW_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_reserve_new_blocks(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnode_of_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %10 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(i32 %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

16:                                               ; preds = %2
  %17 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %18 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FI_NO_ALLOC, align 4
  %21 = call i32 @is_inode_flag_set(i32 %19, i32 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %16
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %30 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @inc_valid_block_count(%struct.f2fs_sb_info* %28, i32 %31, i32* %5)
  store i32 %32, i32* %7, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %27
  %38 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %39 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %42 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %45 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @trace_f2fs_reserve_new_blocks(i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %50 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NODE, align 4
  %53 = call i32 @f2fs_wait_on_page_writeback(i32 %51, i32 %52, i32 1, i32 1)
  br label %54

54:                                               ; preds = %80, %37
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %59 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %62 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %65 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @datablock_addr(i32 %60, i32 %63, i32 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @NULL_ADDR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load i32, i32* @NEW_ADDR, align 4
  %73 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %74 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %76 = call i32 @__set_data_blkaddr(%struct.dnode_of_data* %75)
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %71, %57
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %82 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %87 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @set_page_dirty(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %93 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %85
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %35, %24, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_inode_flag_set(i32, i32) #1

declare dso_local i32 @inc_valid_block_count(%struct.f2fs_sb_info*, i32, i32*) #1

declare dso_local i32 @trace_f2fs_reserve_new_blocks(i32, i32, i32, i32) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(i32, i32, i32, i32) #1

declare dso_local i64 @datablock_addr(i32, i32, i32) #1

declare dso_local i32 @__set_data_blkaddr(%struct.dnode_of_data*) #1

declare dso_local i64 @set_page_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
