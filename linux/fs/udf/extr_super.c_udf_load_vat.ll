; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_vat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_vat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.udf_sb_info = type { i32, %struct.TYPE_11__*, %struct.udf_part_map* }
%struct.TYPE_11__ = type { i32 }
%struct.udf_part_map = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.udf_inode_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.virtualAllocationTable20 = type { i32 }

@.str = private unnamed_addr constant [112 x i8] c"Failed to read VAT inode from the last recorded block (%lu), retrying with the last block of the device (%lu).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UDF_VIRTUAL_MAP15 = common dso_local global i64 0, align 8
@UDF_VIRTUAL_MAP20 = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @udf_load_vat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_vat(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udf_sb_info*, align 8
  %9 = alloca %struct.udf_part_map*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.udf_inode_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.virtualAllocationTable20*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %15)
  store %struct.udf_sb_info* %16, %struct.udf_sb_info** %8, align 8
  %17 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %18 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %17, i32 0, i32 2
  %19 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %19, i64 %21
  store %struct.udf_part_map* %22, %struct.udf_part_map** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @i_size_read(i32 %27)
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %37 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @udf_find_vat_block(%struct.super_block* %33, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %41 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %3
  %45 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %46 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %53 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 1
  %59 = call i32 @pr_notice(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @udf_find_vat_block(%struct.super_block* %60, i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %51, %44, %3
  %67 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %68 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %165

74:                                               ; preds = %66
  %75 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %76 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UDF_VIRTUAL_MAP15, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %82 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %86 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 36
  %91 = ashr i32 %90, 2
  %92 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %93 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  br label %164

96:                                               ; preds = %74
  %97 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %98 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UDF_VIRTUAL_MAP20, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %163

102:                                              ; preds = %96
  %103 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %104 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = call %struct.udf_inode_info* @UDF_I(%struct.TYPE_11__* %105)
  store %struct.udf_inode_info* %106, %struct.udf_inode_info** %11, align 8
  %107 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %108 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %102
  %113 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %114 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call i32 @udf_block_map(%struct.TYPE_11__* %115, i32 0)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.super_block*, %struct.super_block** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call %struct.buffer_head* @sb_bread(%struct.super_block* %117, i32 %118)
  store %struct.buffer_head* %119, %struct.buffer_head** %10, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %121 = icmp ne %struct.buffer_head* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %112
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %165

125:                                              ; preds = %112
  %126 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.virtualAllocationTable20*
  store %struct.virtualAllocationTable20* %129, %struct.virtualAllocationTable20** %13, align 8
  br label %136

130:                                              ; preds = %102
  %131 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %132 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.virtualAllocationTable20*
  store %struct.virtualAllocationTable20* %135, %struct.virtualAllocationTable20** %13, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.virtualAllocationTable20*, %struct.virtualAllocationTable20** %13, align 8
  %138 = getelementptr inbounds %struct.virtualAllocationTable20, %struct.virtualAllocationTable20* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le16_to_cpu(i32 %139)
  %141 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %142 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 8
  %145 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %146 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %151 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %149, %154
  %156 = ashr i32 %155, 2
  %157 = load %struct.udf_part_map*, %struct.udf_part_map** %9, align 8
  %158 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 4
  %161 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %162 = call i32 @brelse(%struct.buffer_head* %161)
  br label %163

163:                                              ; preds = %136, %96
  br label %164

164:                                              ; preds = %163, %80
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %122, %71
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @udf_find_vat_block(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i64, i64) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.TYPE_11__*) #1

declare dso_local i32 @udf_block_map(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
