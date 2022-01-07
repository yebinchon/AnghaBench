; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_meta25.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_meta25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { %struct.udf_part_map* }
%struct.udf_part_map = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, %struct.inode*, i32, i32, i64 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"READING from METADATA\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"error reading from METADATA, trying to read from MIRROR\0A\00", align 1
@MF_MIRROR_FE_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_pblock_meta25(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_sb_info*, align 8
  %11 = alloca %struct.udf_part_map*, align 8
  %12 = alloca %struct.udf_meta_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %15)
  store %struct.udf_sb_info* %16, %struct.udf_sb_info** %10, align 8
  %17 = call i32 @udf_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %19 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %18, i32 0, i32 0
  %20 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %20, i64 %21
  store %struct.udf_part_map* %22, %struct.udf_part_map** %11, align 8
  %23 = load %struct.udf_part_map*, %struct.udf_part_map** %11, align 8
  %24 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.udf_meta_data* %25, %struct.udf_meta_data** %12, align 8
  %26 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %27 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = inttoptr i64 %28 to %struct.inode*
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %34 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %33, i32 0, i32 1
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi %struct.inode* [ %31, %30 ], [ %35, %32 ]
  store %struct.inode* %37, %struct.inode** %14, align 8
  %38 = load %struct.inode*, %struct.inode** %14, align 8
  %39 = icmp ne %struct.inode* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %103

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %14, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @udf_try_read_meta(%struct.inode* %42, i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %101

49:                                               ; preds = %41
  %50 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %51 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %49
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = call i32 @udf_warn(%struct.super_block* %55, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %58 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MF_MIRROR_FE_LOADED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %54
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %66 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %69 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block* %64, i32 %67, i32 %70)
  %72 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %73 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %72, i32 0, i32 1
  store %struct.inode* %71, %struct.inode** %73, align 8
  %74 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %75 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %74, i32 0, i32 1
  %76 = load %struct.inode*, %struct.inode** %75, align 8
  %77 = call i64 @IS_ERR(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %81 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %80, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %81, align 8
  br label %82

82:                                               ; preds = %79, %63
  %83 = load i32, i32* @MF_MIRROR_FE_LOADED, align 4
  %84 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %85 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %54
  %89 = load %struct.udf_meta_data*, %struct.udf_meta_data** %12, align 8
  %90 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %89, i32 0, i32 1
  %91 = load %struct.inode*, %struct.inode** %90, align 8
  store %struct.inode* %91, %struct.inode** %14, align 8
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = icmp ne %struct.inode* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %103

95:                                               ; preds = %88
  %96 = load %struct.inode*, %struct.inode** %14, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @udf_try_read_meta(%struct.inode* %96, i32 %97, i64 %98, i32 %99)
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %95, %49, %41
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %94, %40
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*) #1

declare dso_local i32 @udf_try_read_meta(%struct.inode*, i32, i64, i32) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

declare dso_local %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
