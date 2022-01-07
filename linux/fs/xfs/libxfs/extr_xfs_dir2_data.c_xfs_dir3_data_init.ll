; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir3_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir3_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__* (%struct.xfs_dir3_blk_hdr*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir3_blk_hdr*)* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.xfs_dir3_blk_hdr = type { i8*, i32, i8*, i8* }
%struct.xfs_dir2_data_free = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.xfs_buf = type { i32, %struct.xfs_dir3_blk_hdr*, i32* }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@xfs_dir3_data_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_DATA_BUF = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FD_COUNT = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir3_data_init(%struct.TYPE_19__* %0, i32 %1, %struct.xfs_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_dir3_blk_hdr*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.xfs_dir2_data_free*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.xfs_dir3_blk_hdr*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %7, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %15, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_21__* %32, i32 %33)
  %35 = load i32, i32* @XFS_DATA_FORK, align 4
  %36 = call i32 @xfs_da_get_buf(i32* %28, %struct.TYPE_17__* %29, i32 %34, i32 -1, %struct.xfs_buf** %8, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %175

41:                                               ; preds = %3
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 2
  store i32* @xfs_dir3_data_buf_ops, i32** %43, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %46 = load i32, i32* @XFS_BLFT_DIR_DATA_BUF, align 4
  %47 = call i32 @xfs_trans_buf_set_type(i32* %44, %struct.xfs_buf* %45, i32 %46)
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %49 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %48, i32 0, i32 1
  %50 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %49, align 8
  store %struct.xfs_dir3_blk_hdr* %50, %struct.xfs_dir3_blk_hdr** %9, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_20__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %41
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %56, i32 0, i32 1
  %58 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %57, align 8
  store %struct.xfs_dir3_blk_hdr* %58, %struct.xfs_dir3_blk_hdr** %18, align 8
  %59 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %18, align 8
  %60 = call i32 @memset(%struct.xfs_dir3_blk_hdr* %59, i32 0, i32 32)
  %61 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %18, align 8
  %64 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %66 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @cpu_to_be64(i32 %67)
  %69 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %18, align 8
  %70 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_be64(i32 %73)
  %75 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %18, align 8
  %76 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %18, align 8
  %78 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = call i32 @uuid_copy(i32* %78, i32* %81)
  br label %88

83:                                               ; preds = %41
  %84 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %87 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %55
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir3_blk_hdr*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir3_blk_hdr*)** %92, align 8
  %94 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %95 = call %struct.xfs_dir2_data_free* %93(%struct.xfs_dir3_blk_hdr* %94)
  store %struct.xfs_dir2_data_free* %95, %struct.xfs_dir2_data_free** %12, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @cpu_to_be16(i32 %100)
  %102 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %12, align 8
  %103 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %102, i64 0
  %104 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  store i32 1, i32* %14, align 4
  br label %105

105:                                              ; preds = %120, %88
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @XFS_DIR2_DATA_FD_COUNT, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %12, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %110, i64 %112
  %114 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %113, i32 0, i32 0
  store i8* null, i8** %114, align 8
  %115 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %12, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %115, i64 %117
  %119 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %118, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_18__* (%struct.xfs_dir3_blk_hdr*)*, %struct.TYPE_18__* (%struct.xfs_dir3_blk_hdr*)** %127, align 8
  %129 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %130 = call %struct.TYPE_18__* %128(%struct.xfs_dir3_blk_hdr* %129)
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %11, align 8
  %131 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %132 = call i8* @cpu_to_be16(i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %139, %144
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %12, align 8
  %149 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %148, i64 0
  %150 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i8* @cpu_to_be16(i32 %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %156 = bitcast %struct.TYPE_18__* %155 to i8*
  %157 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %158 = bitcast %struct.xfs_dir3_blk_hdr* %157 to i8*
  %159 = ptrtoint i8* %156 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_18__* %164)
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %168 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_19__* %166, %struct.xfs_buf* %167)
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %170 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %172 = call i32 @xfs_dir2_data_log_unused(%struct.TYPE_19__* %169, %struct.xfs_buf* %170, %struct.TYPE_18__* %171)
  %173 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %174 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* %173, %struct.xfs_buf** %174, align 8
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %123, %39
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @xfs_da_get_buf(i32*, %struct.TYPE_17__*, i32, i32, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.xfs_buf*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.xfs_dir3_blk_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_19__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_data_log_unused(%struct.TYPE_19__*, %struct.xfs_buf*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
