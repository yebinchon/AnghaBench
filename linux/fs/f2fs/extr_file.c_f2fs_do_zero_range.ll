; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_zero_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_zero_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*, i64, i64)* @f2fs_do_zero_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_do_zero_range(%struct.dnode_of_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dnode_of_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %14 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.f2fs_sb_info* @F2FS_I_SB(i32 %15)
  store %struct.f2fs_sb_info* %16, %struct.f2fs_sb_info** %8, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %19 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %27 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %30 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %33 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @datablock_addr(i32 %28, i32 %31, i32 %34)
  %36 = load i64, i64* @NULL_ADDR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %46 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %52 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @f2fs_reserve_new_blocks(%struct.dnode_of_data* %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %123

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %63 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %108, %60
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %65
  %70 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %71 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %74 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %77 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @datablock_addr(i32 %72, i32 %75, i32 %78)
  %80 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %81 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %83 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NULL_ADDR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %115

90:                                               ; preds = %69
  %91 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %92 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NEW_ADDR, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %98 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %99 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %97, i64 %100)
  %102 = load i64, i64* @NEW_ADDR, align 8
  %103 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %104 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %106 = call i32 @f2fs_set_data_blkaddr(%struct.dnode_of_data* %105)
  br label %107

107:                                              ; preds = %96, %90
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %9, align 8
  %111 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %112 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %65

115:                                              ; preds = %87, %65
  %116 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %6, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data* %116, i64 %117, i32 0, i64 %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %115, %58
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(i32) #1

declare dso_local i64 @datablock_addr(i32, i32, i32) #1

declare dso_local i32 @f2fs_reserve_new_blocks(%struct.dnode_of_data*, i64) #1

declare dso_local i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @f2fs_set_data_blkaddr(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
