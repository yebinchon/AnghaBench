; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_da_args = type { i64, i32, i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_add(%struct.xfs_buf* %0, %struct.xfs_da_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %5, align 8
  %13 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %14 = call i32 @trace_xfs_attr_leaf_add(%struct.xfs_da_args* %13)
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %16, align 8
  store %struct.xfs_attr_leafblock* %17, %struct.xfs_attr_leafblock** %6, align 8
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %22 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %20, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_attr_leafblock* %21)
  %23 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp sle i64 %30, %33
  br label %35

35:                                               ; preds = %27, %2
  %36 = phi i1 [ false, %2 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %40 = call i32 @xfs_attr_leaf_newentsize(%struct.xfs_da_args* %39, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %47 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %46)
  %48 = sext i32 %47 to i64
  %49 = add i64 %45, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %123, %35
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %123

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %123

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %11, align 4
  %83 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %81
  %99 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %110 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @xfs_attr3_leaf_add_work(%struct.xfs_buf* %109, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_da_args* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %158

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %113, %80, %61
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %12, align 4
  br label %53

126:                                              ; preds = %53
  %127 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @ENOSPC, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %176

137:                                              ; preds = %130, %126
  %138 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %139 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %140 = call i32 @xfs_attr3_leaf_compact(%struct.xfs_da_args* %138, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_buf* %139)
  %141 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, 4
  %150 = icmp ult i64 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %137
  %152 = load i32, i32* @ENOSPC, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %11, align 4
  br label %158

154:                                              ; preds = %137
  %155 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %156 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %157 = call i32 @xfs_attr3_leaf_add_work(%struct.xfs_buf* %155, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_da_args* %156, i32 0)
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %154, %151, %108
  %159 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %160 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %163 = call i32 @xfs_attr3_leaf_hdr_to_disk(i32 %161, %struct.xfs_attr_leafblock* %162, %struct.xfs_attr3_icleaf_hdr* %7)
  %164 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %165 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %168 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %169 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %170 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %169, i32 0, i32 0
  %171 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %172 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %171)
  %173 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %168, i32* %170, i32 %172)
  %174 = call i32 @xfs_trans_log_buf(i32 %166, %struct.xfs_buf* %167, i32 %173)
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %158, %134
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @trace_xfs_attr_leaf_add(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(i32, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr_leaf_newentsize(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @xfs_attr3_leaf_add_work(%struct.xfs_buf*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_da_args*, i32) #1

declare dso_local i32 @xfs_attr3_leaf_compact(%struct.xfs_da_args*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_to_disk(i32, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
