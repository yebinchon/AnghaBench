; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_metadata_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_metadata_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { %struct.udf_part_map* }
%struct.udf_part_map = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i32, %struct.inode*, %struct.inode*, %struct.inode*, i32, i32 }
%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Metadata file location: block = %u part = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Mirror metadata file location: block = %u part = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Both metadata and mirror metadata inode efe can not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Bitmap file location: block = %u part = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"bitmap inode efe not found but it's ok since the disc is mounted read-only\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"bitmap inode efe not found and attempted read-write mount\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"udf_load_metadata_files Ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @udf_load_metadata_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_metadata_files(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udf_sb_info*, align 8
  %9 = alloca %struct.udf_part_map*, align 8
  %10 = alloca %struct.udf_meta_data*, align 8
  %11 = alloca %struct.kernel_lb_addr, align 4
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %13)
  store %struct.udf_sb_info* %14, %struct.udf_sb_info** %8, align 8
  %15 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %16 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %15, i32 0, i32 0
  %17 = load %struct.udf_part_map*, %struct.udf_part_map** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %17, i64 %19
  store %struct.udf_part_map* %20, %struct.udf_part_map** %9, align 8
  %21 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %22 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.udf_meta_data* %23, %struct.udf_meta_data** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %26 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %28 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %31 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %36 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %39 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block* %34, i32 %37, i32 %40)
  store %struct.inode* %41, %struct.inode** %12, align 8
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = call i64 @IS_ERR(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %3
  %46 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %47 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %50 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %55 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %58 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block* %53, i32 %56, i32 %59)
  store %struct.inode* %60, %struct.inode** %12, align 8
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i64 @IS_ERR(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = call i32 @udf_err(%struct.super_block* %65, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.inode*, %struct.inode** %12, align 8
  %68 = call i32 @PTR_ERR(%struct.inode* %67)
  store i32 %68, i32* %4, align 4
  br label %121

69:                                               ; preds = %45
  %70 = load %struct.inode*, %struct.inode** %12, align 8
  %71 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %72 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %71, i32 0, i32 4
  store %struct.inode* %70, %struct.inode** %72, align 8
  br label %77

73:                                               ; preds = %3
  %74 = load %struct.inode*, %struct.inode** %12, align 8
  %75 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %76 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %75, i32 0, i32 3
  store %struct.inode* %74, %struct.inode** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %79 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %119

82:                                               ; preds = %77
  %83 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %84 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %88 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = call %struct.inode* @udf_iget_special(%struct.super_block* %96, %struct.kernel_lb_addr* %11)
  store %struct.inode* %97, %struct.inode** %12, align 8
  %98 = load %struct.inode*, %struct.inode** %12, align 8
  %99 = call i64 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %82
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = call i64 @sb_rdonly(%struct.super_block* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.super_block*, %struct.super_block** %5, align 8
  %107 = call i32 @udf_warn(%struct.super_block* %106, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %113

108:                                              ; preds = %101
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = call i32 @udf_err(%struct.super_block* %109, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = call i32 @PTR_ERR(%struct.inode* %111)
  store i32 %112, i32* %4, align 4
  br label %121

113:                                              ; preds = %105
  br label %118

114:                                              ; preds = %82
  %115 = load %struct.inode*, %struct.inode** %12, align 8
  %116 = load %struct.udf_meta_data*, %struct.udf_meta_data** %10, align 8
  %117 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %116, i32 0, i32 2
  store %struct.inode* %115, %struct.inode** %117, align 8
  br label %118

118:                                              ; preds = %114, %113
  br label %119

119:                                              ; preds = %118, %77
  %120 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %108, %64
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

declare dso_local %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @udf_iget_special(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
