; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_da_args = type { i64, i32, i32, i32, i32, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)* }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i8*, i8* }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*, %struct.xfs_da_args*, i32)* @xfs_dir2_leafn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_leafn_add(%struct.xfs_buf* %0, %struct.xfs_da_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_da_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.xfs_dir2_leaf*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %5, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 5
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %9, align 8
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 0
  %23 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %22, align 8
  store %struct.xfs_dir2_leaf* %23, %struct.xfs_dir2_leaf** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @trace_xfs_dir2_leafn_add(%struct.xfs_da_args* %24, i32 %25)
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)** %30, align 8
  %32 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %33 = call i32 %31(%struct.xfs_dir3_icleaf_hdr* %8, %struct.xfs_dir2_leaf* %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %37, align 8
  %39 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %40 = call %struct.xfs_dir2_leaf_entry* %38(%struct.xfs_dir2_leaf* %39)
  store %struct.xfs_dir2_leaf_entry* %40, %struct.xfs_dir2_leaf_entry** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EFSCORRUPTED, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %177

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %50 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %53(i32 %56)
  %58 = icmp eq i32 %48, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %177

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 1
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %13, align 4
  br label %72

71:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %72
  %76 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %76, i64 %79
  %81 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @be32_to_cpu(i8* %82)
  %84 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %85 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %83, %86
  br label %88

88:                                               ; preds = %75, %72
  %89 = phi i1 [ true, %72 ], [ %87, %75 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %88
  %97 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %97, i64 %99
  %101 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @be32_to_cpu(i8* %102)
  %104 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %105 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br label %108

108:                                              ; preds = %96, %88
  %109 = phi i1 [ true, %88 ], [ %107, %96 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @ASSERT(i32 %110)
  %112 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %113 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %177

119:                                              ; preds = %108
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %124 = call i32 @xfs_dir3_leaf_compact_x1(%struct.xfs_dir3_icleaf_hdr* %8, %struct.xfs_dir2_leaf_entry* %123, i32* %7, i32* %17, i32* %14, i32* %16, i32* %15)
  br label %133

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %8, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %122
  %134 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call %struct.xfs_dir2_leaf_entry* @xfs_dir3_leaf_find_entry(%struct.xfs_dir3_icleaf_hdr* %8, %struct.xfs_dir2_leaf_entry* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32* %16, i32* %15)
  store %struct.xfs_dir2_leaf_entry* %139, %struct.xfs_dir2_leaf_entry** %11, align 8
  %140 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %141 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @cpu_to_be32(i64 %142)
  %144 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %145 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %147 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %150 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %153 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @xfs_dir2_db_off_to_dataptr(i32 %148, i32 %151, i32 %154)
  %156 = call i8* @cpu_to_be32(i64 %155)
  %157 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %158 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %160 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)** %162, align 8
  %164 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %165 = call i32 %163(%struct.xfs_dir2_leaf* %164, %struct.xfs_dir3_icleaf_hdr* %8)
  %166 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %167 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %168 = call i32 @xfs_dir3_leaf_log_header(%struct.xfs_da_args* %166, %struct.xfs_buf* %167)
  %169 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %170 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @xfs_dir3_leaf_log_ents(%struct.xfs_da_args* %169, %struct.xfs_buf* %170, i32 %171, i32 %172)
  %174 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %175 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %176 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %174, %struct.xfs_buf* %175)
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %133, %118, %63, %43
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @trace_xfs_dir2_leafn_add(%struct.xfs_da_args*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir3_leaf_compact_x1(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.xfs_dir2_leaf_entry* @xfs_dir3_leaf_find_entry(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @xfs_dir2_db_off_to_dataptr(i32, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.xfs_inode*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
