; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_26__*, i32*, %struct.TYPE_31__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_28__*, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_33__*, %struct.xfs_dir3_icfree_hdr*)*, i8** (%struct.TYPE_33__*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.TYPE_33__*)* }
%struct.TYPE_33__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.xfs_dir3_icfree_hdr = type { i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.xfs_buf = type { i32*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i32 }

@XFS_DIR2_FREE_SPACE = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i32 0, align 4
@xfs_dir3_leafn_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_LEAFN_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_to_node(%struct.TYPE_34__* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.xfs_dir3_icfree_hdr, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %21 = call i32 @trace_xfs_dir2_leaf_to_node(%struct.TYPE_34__* %20)
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %6, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %18, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %29 = load i32, i32* @XFS_DIR2_FREE_SPACE, align 4
  %30 = call i32 @xfs_dir2_grow_inode(%struct.TYPE_34__* %28, i32 %29, i64* %9)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %187

34:                                               ; preds = %2
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %39 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %40 = call i64 @xfs_dir2_byte_to_db(%struct.TYPE_26__* %38, i32 %39)
  %41 = icmp eq i64 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @xfs_dir3_free_get_buf(%struct.TYPE_34__* %44, i64 %45, %struct.xfs_buf** %8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %187

51:                                               ; preds = %34
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %53 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %52, i32 0, i32 1
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %53, align 8
  store %struct.TYPE_33__* %54, %struct.TYPE_33__** %10, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 2
  %59 = load i32 (%struct.xfs_dir3_icfree_hdr*, %struct.TYPE_33__*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.TYPE_33__*)** %58, align 8
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %61 = call i32 %59(%struct.xfs_dir3_icfree_hdr* %19, %struct.TYPE_33__* %60)
  %62 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %63, align 8
  store %struct.TYPE_33__* %64, %struct.TYPE_33__** %13, align 8
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %69 = call %struct.TYPE_32__* @xfs_dir2_leaf_tail_p(%struct.TYPE_26__* %67, %struct.TYPE_33__* %68)
  store %struct.TYPE_32__* %69, %struct.TYPE_32__** %14, align 8
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %78, %83
  %85 = icmp sgt i32 %73, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %51
  %87 = load i32, i32* @EFSCORRUPTED, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %187

89:                                               ; preds = %51
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %91 = call i8** @xfs_dir2_leaf_bests_p(%struct.TYPE_32__* %90)
  store i8** %91, i8*** %11, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 1
  %96 = load i8** (%struct.TYPE_33__*)*, i8** (%struct.TYPE_33__*)** %95, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %98 = call i8** %96(%struct.TYPE_33__* %97)
  store i8** %98, i8*** %17, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %119, %89
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be32_to_cpu(i32 %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %99
  %107 = load i8**, i8*** %11, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @be16_to_cpu(i8* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* @NULLDATAOFF, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i32, i32* %16, align 4
  %117 = call i8* @cpu_to_be16(i32 %116)
  %118 = load i8**, i8*** %17, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = load i8**, i8*** %11, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %123, i8*** %11, align 8
  %124 = load i8**, i8*** %17, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %17, align 8
  br label %99

126:                                              ; preds = %99
  %127 = load i32, i32* %15, align 4
  %128 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %19, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be32_to_cpu(i32 %131)
  %133 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %19, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_33__*, %struct.xfs_dir3_icfree_hdr*)*, i32 (%struct.TYPE_33__*, %struct.xfs_dir3_icfree_hdr*)** %137, align 8
  %139 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %140 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %139, i32 0, i32 1
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %140, align 8
  %142 = call i32 %138(%struct.TYPE_33__* %141, %struct.xfs_dir3_icfree_hdr* %19)
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %144 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %145 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %19, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @xfs_dir2_free_log_bests(%struct.TYPE_34__* %143, %struct.xfs_buf* %144, i32 0, i32 %147)
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %150 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %151 = call i32 @xfs_dir2_free_log_header(%struct.TYPE_34__* %149, %struct.xfs_buf* %150)
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %158 = call i8* @cpu_to_be16(i32 %157)
  %159 = icmp eq i8* %156, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %126
  %161 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %162 = call i8* @cpu_to_be16(i32 %161)
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  store i8* %162, i8** %166, align 8
  br label %174

167:                                              ; preds = %126
  %168 = load i32, i32* @XFS_DIR3_LEAFN_MAGIC, align 4
  %169 = call i8* @cpu_to_be16(i32 %168)
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  store i8* %169, i8** %173, align 8
  br label %174

174:                                              ; preds = %167, %160
  %175 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %176 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %175, i32 0, i32 0
  store i32* @xfs_dir3_leafn_buf_ops, i32** %176, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %179 = load i32, i32* @XFS_BLFT_DIR_LEAFN_BUF, align 4
  %180 = call i32 @xfs_trans_buf_set_type(i32* %177, %struct.xfs_buf* %178, i32 %179)
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %182 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %183 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_34__* %181, %struct.xfs_buf* %182)
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %185 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %186 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_31__* %184, %struct.xfs_buf* %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %174, %86, %49, %32
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @trace_xfs_dir2_leaf_to_node(%struct.TYPE_34__*) #1

declare dso_local i32 @xfs_dir2_grow_inode(%struct.TYPE_34__*, i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_dir2_byte_to_db(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_dir3_free_get_buf(%struct.TYPE_34__*, i64, %struct.xfs_buf**) #1

declare dso_local %struct.TYPE_32__* @xfs_dir2_leaf_tail_p(%struct.TYPE_26__*, %struct.TYPE_33__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8** @xfs_dir2_leaf_bests_p(%struct.TYPE_32__*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_free_log_bests(%struct.TYPE_34__*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_free_log_header(%struct.TYPE_34__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_34__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_31__*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
