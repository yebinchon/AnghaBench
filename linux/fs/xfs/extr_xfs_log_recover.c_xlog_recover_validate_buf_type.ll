; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_recover_validate_buf_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_recover_validate_buf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i64, %struct.xfs_buf_log_item*, i32*, %struct.xfs_da_blkinfo* }
%struct.xfs_buf_log_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_da_blkinfo = type { i32 }

@xfs_bnobt_buf_ops = common dso_local global i32 0, align 4
@xfs_cntbt_buf_ops = common dso_local global i32 0, align 4
@xfs_inobt_buf_ops = common dso_local global i32 0, align 4
@xfs_finobt_buf_ops = common dso_local global i32 0, align 4
@xfs_bmbt_buf_ops = common dso_local global i32 0, align 4
@xfs_rmapbt_buf_ops = common dso_local global i32 0, align 4
@xfs_refcountbt_buf_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bad btree block magic!\00", align 1
@XFS_AGF_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad AGF block magic!\00", align 1
@xfs_agf_buf_ops = common dso_local global i32 0, align 4
@XFS_AGFL_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Bad AGFL block magic!\00", align 1
@xfs_agfl_buf_ops = common dso_local global i32 0, align 4
@XFS_AGI_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Bad AGI block magic!\00", align 1
@xfs_agi_buf_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Trying to recover dquots without QUOTA support built in!\00", align 1
@XFS_DINODE_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Bad INODE block magic!\00", align 1
@xfs_inode_buf_ops = common dso_local global i32 0, align 4
@XFS_SYMLINK_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Bad symlink block magic!\00", align 1
@xfs_symlink_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Bad dir block magic!\00", align 1
@xfs_dir3_block_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Bad dir data magic!\00", align 1
@xfs_dir3_data_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_FREE_MAGIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Bad dir3 free magic!\00", align 1
@xfs_dir3_free_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Bad dir leaf1 magic!\00", align 1
@xfs_dir3_leaf1_buf_ops = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Bad dir leafn magic!\00", align 1
@xfs_dir3_leafn_buf_ops = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAGIC = common dso_local global i32 0, align 4
@XFS_DA3_NODE_MAGIC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"Bad da node magic!\00", align 1
@xfs_da3_node_buf_ops = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR3_LEAF_MAGIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Bad attr leaf magic!\00", align 1
@xfs_attr3_leaf_buf_ops = common dso_local global i32 0, align 4
@XFS_ATTR3_RMT_MAGIC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"Bad attr remote magic!\00", align 1
@xfs_attr3_rmt_buf_ops = common dso_local global i32 0, align 4
@XFS_SB_MAGIC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"Bad SB block magic!\00", align 1
@xfs_sb_buf_ops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"Unknown buffer type %d!\00", align 1
@NULLCOMMITLSN = common dso_local global i64 0, align 8
@xlog_recover_iodone = common dso_local global i64 0, align 8
@XFS_DQUOT_MAGIC = common dso_local global i32 0, align 4
@xfs_dquot_buf_ops = common dso_local global i32 0, align 4
@xfs_rtbuf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, i32*, i64)* @xlog_recover_validate_buf_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_recover_validate_buf_type(%struct.xfs_mount* %0, %struct.xfs_buf* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_da_blkinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 3
  %17 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %16, align 8
  store %struct.xfs_da_blkinfo* %17, %struct.xfs_da_blkinfo** %9, align 8
  store i8* null, i8** %13, align 8
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = call i32 @xfs_sb_version_hascrc(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %262

23:                                               ; preds = %4
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %24, i32 0, i32 3
  %26 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %25, align 8
  %27 = bitcast %struct.xfs_da_blkinfo* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 3
  %32 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %31, align 8
  %33 = bitcast %struct.xfs_da_blkinfo* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %9, align 8
  %37 = getelementptr inbounds %struct.xfs_da_blkinfo, %struct.xfs_da_blkinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @xfs_blft_from_flags(i32* %40)
  switch i32 %41, label %211 [
    i32 150, label %42
    i32 154, label %67
    i32 155, label %75
    i32 153, label %83
    i32 136, label %91
    i32 141, label %91
    i32 142, label %91
    i32 148, label %95
    i32 137, label %103
    i32 147, label %111
    i32 146, label %123
    i32 145, label %135
    i32 144, label %147
    i32 143, label %159
    i32 149, label %171
    i32 152, label %183
    i32 151, label %195
    i32 138, label %203
  ]

42:                                               ; preds = %23
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %65 [
    i32 159, label %44
    i32 158, label %44
    i32 157, label %47
    i32 156, label %47
    i32 131, label %50
    i32 130, label %50
    i32 133, label %53
    i32 132, label %53
    i32 135, label %56
    i32 134, label %56
    i32 128, label %59
    i32 129, label %62
  ]

44:                                               ; preds = %42, %42
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 2
  store i32* @xfs_bnobt_buf_ops, i32** %46, align 8
  br label %66

47:                                               ; preds = %42, %42
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %49 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %48, i32 0, i32 2
  store i32* @xfs_cntbt_buf_ops, i32** %49, align 8
  br label %66

50:                                               ; preds = %42, %42
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %52 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %51, i32 0, i32 2
  store i32* @xfs_inobt_buf_ops, i32** %52, align 8
  br label %66

53:                                               ; preds = %42, %42
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %55 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %54, i32 0, i32 2
  store i32* @xfs_finobt_buf_ops, i32** %55, align 8
  br label %66

56:                                               ; preds = %42, %42
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %57, i32 0, i32 2
  store i32* @xfs_bmbt_buf_ops, i32** %58, align 8
  br label %66

59:                                               ; preds = %42
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %61 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %60, i32 0, i32 2
  store i32* @xfs_rmapbt_buf_ops, i32** %61, align 8
  br label %66

62:                                               ; preds = %42
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %64 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %63, i32 0, i32 2
  store i32* @xfs_refcountbt_buf_ops, i32** %64, align 8
  br label %66

65:                                               ; preds = %42
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %66

66:                                               ; preds = %65, %62, %59, %56, %53, %50, %47, %44
  br label %216

67:                                               ; preds = %23
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @XFS_AGF_MAGIC, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %216

72:                                               ; preds = %67
  %73 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %74 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %73, i32 0, i32 2
  store i32* @xfs_agf_buf_ops, i32** %74, align 8
  br label %216

75:                                               ; preds = %23
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @XFS_AGFL_MAGIC, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %216

80:                                               ; preds = %75
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %82 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %81, i32 0, i32 2
  store i32* @xfs_agfl_buf_ops, i32** %82, align 8
  br label %216

83:                                               ; preds = %23
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @XFS_AGI_MAGIC, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %216

88:                                               ; preds = %83
  %89 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %90 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %89, i32 0, i32 2
  store i32* @xfs_agi_buf_ops, i32** %90, align 8
  br label %216

91:                                               ; preds = %23, %23, %23
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %93 = call i32 @xfs_alert(%struct.xfs_mount* %92, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @ASSERT(i32 0)
  br label %216

95:                                               ; preds = %23
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @XFS_DINODE_MAGIC, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %216

100:                                              ; preds = %95
  %101 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %102 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %101, i32 0, i32 2
  store i32* @xfs_inode_buf_ops, i32** %102, align 8
  br label %216

103:                                              ; preds = %23
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @XFS_SYMLINK_MAGIC, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %216

108:                                              ; preds = %103
  %109 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %110 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %109, i32 0, i32 2
  store i32* @xfs_symlink_buf_ops, i32** %110, align 8
  br label %216

111:                                              ; preds = %23
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %216

120:                                              ; preds = %115, %111
  %121 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %122 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %121, i32 0, i32 2
  store i32* @xfs_dir3_block_buf_ops, i32** %122, align 8
  br label %216

123:                                              ; preds = %23
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %216

132:                                              ; preds = %127, %123
  %133 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %134 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %133, i32 0, i32 2
  store i32* @xfs_dir3_data_buf_ops, i32** %134, align 8
  br label %216

135:                                              ; preds = %23
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @XFS_DIR2_FREE_MAGIC, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @XFS_DIR3_FREE_MAGIC, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %216

144:                                              ; preds = %139, %135
  %145 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %146 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %145, i32 0, i32 2
  store i32* @xfs_dir3_free_buf_ops, i32** %146, align 8
  br label %216

147:                                              ; preds = %23
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @XFS_DIR3_LEAF1_MAGIC, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %216

156:                                              ; preds = %151, %147
  %157 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %158 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %157, i32 0, i32 2
  store i32* @xfs_dir3_leaf1_buf_ops, i32** %158, align 8
  br label %216

159:                                              ; preds = %23
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @XFS_DIR3_LEAFN_MAGIC, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %216

168:                                              ; preds = %163, %159
  %169 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %170 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %169, i32 0, i32 2
  store i32* @xfs_dir3_leafn_buf_ops, i32** %170, align 8
  br label %216

171:                                              ; preds = %23
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @XFS_DA_NODE_MAGIC, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @XFS_DA3_NODE_MAGIC, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %216

180:                                              ; preds = %175, %171
  %181 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %182 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %181, i32 0, i32 2
  store i32* @xfs_da3_node_buf_ops, i32** %182, align 8
  br label %216

183:                                              ; preds = %23
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @XFS_ATTR3_LEAF_MAGIC, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %216

192:                                              ; preds = %187, %183
  %193 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %194 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %193, i32 0, i32 2
  store i32* @xfs_attr3_leaf_buf_ops, i32** %194, align 8
  br label %216

195:                                              ; preds = %23
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @XFS_ATTR3_RMT_MAGIC, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %216

200:                                              ; preds = %195
  %201 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %202 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %201, i32 0, i32 2
  store i32* @xfs_attr3_rmt_buf_ops, i32** %202, align 8
  br label %216

203:                                              ; preds = %23
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @XFS_SB_MAGIC, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %216

208:                                              ; preds = %203
  %209 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %210 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %209, i32 0, i32 2
  store i32* @xfs_sb_buf_ops, i32** %210, align 8
  br label %216

211:                                              ; preds = %23
  %212 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = call i32 @xfs_blft_from_flags(i32* %213)
  %215 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %211, %208, %207, %200, %199, %192, %191, %180, %179, %168, %167, %156, %155, %144, %143, %132, %131, %120, %119, %108, %107, %100, %99, %91, %88, %87, %80, %79, %72, %71, %66
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* @NULLCOMMITLSN, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %262

221:                                              ; preds = %216
  %222 = load i8*, i8** %13, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %225, i8* %226)
  %228 = call i32 @ASSERT(i32 0)
  br label %229

229:                                              ; preds = %224, %221
  %230 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %231 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %262

234:                                              ; preds = %229
  %235 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %236 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %241 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @xlog_recover_iodone, align 8
  %244 = icmp eq i64 %242, %243
  br label %245

245:                                              ; preds = %239, %234
  %246 = phi i1 [ true, %234 ], [ %244, %239 ]
  %247 = zext i1 %246 to i32
  %248 = call i32 @ASSERT(i32 %247)
  %249 = load i64, i64* @xlog_recover_iodone, align 8
  %250 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %251 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  %252 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %253 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %254 = call i32 @xfs_buf_item_init(%struct.xfs_buf* %252, %struct.xfs_mount* %253)
  %255 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %256 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %255, i32 0, i32 1
  %257 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %256, align 8
  store %struct.xfs_buf_log_item* %257, %struct.xfs_buf_log_item** %14, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %14, align 8
  %260 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  store i64 %258, i64* %261, align 8
  br label %262

262:                                              ; preds = %22, %220, %245, %229
  ret void
}

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_blft_from_flags(i32*) #1

declare dso_local i32 @xfs_alert(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, ...) #1

declare dso_local i32 @xfs_buf_item_init(%struct.xfs_buf*, %struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
