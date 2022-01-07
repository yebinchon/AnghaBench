; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_inode_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_inode_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_40__*, %struct.super_block* }
%struct.TYPE_40__ = type { i32* }
%struct.super_block = type { i32, i32 }
%struct.TYPE_45__ = type { i32, i64, i32, i32, %struct.inode* }
%struct.buffer_head = type { i8* }
%struct.TYPE_46__ = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_44__, %struct.TYPE_38__, %struct.TYPE_39__, i64, i32*, i64 }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_39__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32, i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_43__, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_42__, %struct.TYPE_41__ }
%struct.TYPE_42__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_41__ = type { i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_35__*, i64 }
%struct.TYPE_36__ = type { i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@AT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Unsupported mft record size %i (max 64kiB).\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to allocate buffer for $MFT record 0.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Device read failed.\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"MST fixup failed. $MFT is corrupt.\00", align 1
@ntfs_mst_aops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AT_ATTRIBUTE_LIST = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Failed to lookup attribute list attribute. You should run chkdsk.\00", align 1
@ntfs_read_inode_mount.es = internal global i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"  Not allowed.  $MFT is corrupt.  You should run chkdsk.\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Attribute list attribute found in $MFT.\00", align 1
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Attribute list attribute is compressed.%s\00", align 1
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"Non-resident attribute list attribute is encrypted/sparse.%s\00", align 1
@.str.10 = private unnamed_addr constant [242 x i8] c"Resident attribute list attribute in $MFT system file is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Not enough memory to allocate buffer for attribute list.\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"Attribute list has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Mapping pairs decompression failed with error code %i.\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Failed to load attribute list attribute with error code %i.\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Corrupt attribute list attribute.\00", align 1
@.str.16 = private unnamed_addr constant [142 x i8] c"BUG: The first $DATA extent of $MFT is not in the base mft record. Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.17 = private unnamed_addr constant [88 x i8] c"$MFT must be non-resident but a resident extent was found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.18 = private unnamed_addr constant [136 x i8] c"$MFT must be uncompressed, non-sparse, and unencrypted but a compressed/sparse/encrypted extent was found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"ntfs_mapping_pairs_decompress() failed with error code %ld.  $MFT is corrupt.\00", align 1
@.str.20 = private unnamed_addr constant [97 x i8] c"First extent of $DATA attribute has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"$MFT is too big! Aborting.\00", align 1
@.str.22 = private unnamed_addr constant [169 x i8] c"ntfs_read_inode() of $MFT failed. BUG or corrupt $MFT. Run chkdsk and if no errors are found, please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ntfs_empty_inode_ops = common dso_local global i32 0, align 4
@ntfs_empty_file_ops = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [55 x i8] c"$MFT has corrupt attribute list attribute. Run chkdsk.\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"Failed to lookup $MFT/$DATA attribute extent. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"$MFT/$DATA attribute not found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.26 = private unnamed_addr constant [92 x i8] c"Failed to load the complete runlist for $MFT/$DATA. Driver bug or corrupt $MFT. Run chkdsk.\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"highest_vcn = 0x%llx, last_vcn - 1 = 0x%llx\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@mft_ni_runlist_lock_key = common dso_local global i32 0, align 4
@mft_ni_mrec_lock_key = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [94 x i8] c"Couldn't find first extent of $DATA attribute in attribute list. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Failed. Marking inode as bad.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_read_inode_mount(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 9
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = call %struct.TYPE_45__* @NTFS_SB(%struct.super_block* %25)
  store %struct.TYPE_45__* %26, %struct.TYPE_45__** %9, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %12, align 8
  %27 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @ntfs_init_big_inode(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.TYPE_46__* @NTFS_I(%struct.inode* %30)
  store %struct.TYPE_46__* %31, %struct.TYPE_46__** %11, align 8
  %32 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %33 = call i32 @NInoSetNonResident(%struct.TYPE_46__* %32)
  %34 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %35 = call i32 @NInoSetMstProtected(%struct.TYPE_46__* %34)
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %37 = call i32 @NInoSetSparseDisabled(%struct.TYPE_46__* %36)
  %38 = load i64, i64* @AT_DATA, align 8
  %39 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %39, i32 0, i32 11
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %41, i32 0, i32 10
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %60, i32 0, i32 4
  store %struct.inode* %59, %struct.inode** %61, align 8
  %62 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 65536
  br i1 %65, label %66, label %72

66:                                               ; preds = %1
  %67 = load %struct.super_block*, %struct.super_block** %8, align 8
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %734

72:                                               ; preds = %1
  %73 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.super_block*, %struct.super_block** %8, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i32, i32* %15, align 4
  %87 = call i8* @ntfs_malloc_nofs(i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %88, %struct.TYPE_34__** %12, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %90 = icmp ne %struct.TYPE_34__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %734

94:                                               ; preds = %85
  %95 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %97, %100
  %102 = load %struct.super_block*, %struct.super_block** %8, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %101, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.super_block*, %struct.super_block** %8, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %108, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %94
  store i32 1, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %94
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %151, %116
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %117
  %122 = load %struct.super_block*, %struct.super_block** %8, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  %125 = call %struct.buffer_head* @sb_bread(%struct.super_block* %122, i32 %123)
  store %struct.buffer_head* %125, %struct.buffer_head** %10, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %127 = icmp ne %struct.buffer_head* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load %struct.super_block*, %struct.super_block** %8, align 8
  %130 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %734

131:                                              ; preds = %121
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %133 = bitcast %struct.TYPE_34__* %132 to i8*
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.super_block*, %struct.super_block** %8, align 8
  %136 = getelementptr inbounds %struct.super_block, %struct.super_block* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %134, %137
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %133, i64 %139
  %141 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.super_block*, %struct.super_block** %8, align 8
  %145 = getelementptr inbounds %struct.super_block, %struct.super_block* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = call i32 @memcpy(i8* %140, i8* %143, i64 %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  br label %151

151:                                              ; preds = %131
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %117

154:                                              ; preds = %117
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %156 = bitcast %struct.TYPE_34__* %155 to i32*
  %157 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @post_read_mst_fixup(i32* %156, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.super_block*, %struct.super_block** %8, align 8
  %164 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %734

165:                                              ; preds = %154
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.inode*, %struct.inode** %3, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 8
  %174 = load %struct.inode*, %struct.inode** %3, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 8
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %177, align 8
  %178 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %180 = call %struct.TYPE_33__* @ntfs_attr_get_search_ctx(%struct.TYPE_46__* %178, %struct.TYPE_34__* %179)
  store %struct.TYPE_33__* %180, %struct.TYPE_33__** %14, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %182 = icmp ne %struct.TYPE_33__* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %165
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %17, align 4
  br label %734

186:                                              ; preds = %165
  %187 = load i64, i64* @AT_ATTRIBUTE_LIST, align 8
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %189 = call i32 @ntfs_attr_lookup(i64 %187, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_33__* %188)
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %186
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @ENOENT, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load %struct.super_block*, %struct.super_block** %8, align 8
  %202 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %201, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  br label %731

203:                                              ; preds = %192
  br label %505

204:                                              ; preds = %186
  %205 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %206 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %207 = call i32 @NInoSetAttrList(%struct.TYPE_46__* %206)
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %209, align 8
  store %struct.TYPE_35__* %210, %struct.TYPE_35__** %13, align 8
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %204
  %218 = load %struct.super_block*, %struct.super_block** %8, align 8
  %219 = load i8*, i8** @ntfs_read_inode_mount.es, align 8
  %220 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %219)
  br label %731

221:                                              ; preds = %204
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %228, %221
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load %struct.super_block*, %struct.super_block** %8, align 8
  %242 = load i8*, i8** @ntfs_read_inode_mount.es, align 8
  %243 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %241, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i8* %242)
  br label %731

244:                                              ; preds = %235
  %245 = load %struct.super_block*, %struct.super_block** %8, align 8
  %246 = call i32 @ntfs_warning(%struct.super_block* %245, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.10, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %228
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %249 = call i64 @ntfs_attr_size(%struct.TYPE_35__* %248)
  %250 = trunc i64 %249 to i32
  %251 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @ntfs_malloc_nofs(i32 %255)
  %257 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %247
  %264 = load %struct.super_block*, %struct.super_block** %8, align 8
  %265 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %264, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  br label %731

266:                                              ; preds = %247
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %334

271:                                              ; preds = %266
  %272 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %273 = call i32 @NInoSetAttrListNonResident(%struct.TYPE_46__* %272)
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load %struct.super_block*, %struct.super_block** %8, align 8
  %282 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %281, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0))
  br label %731

283:                                              ; preds = %271
  %284 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %286 = call i8* @ntfs_mapping_pairs_decompress(%struct.TYPE_45__* %284, %struct.TYPE_35__* %285, i32* null)
  %287 = bitcast i8* %286 to i32*
  %288 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 7
  %290 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %289, i32 0, i32 0
  store i32* %287, i32** %290, align 8
  %291 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call i64 @IS_ERR(i32* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %283
  %298 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @PTR_ERR(i32* %301)
  store i32 %302, i32* %17, align 4
  %303 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 0
  store i32* null, i32** %305, align 8
  %306 = load %struct.super_block*, %struct.super_block** %8, align 8
  %307 = load i32, i32* %17, align 4
  %308 = sub nsw i32 0, %307
  %309 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %306, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 %308)
  br label %731

310:                                              ; preds = %283
  %311 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %312, i32 0, i32 7
  %314 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @sle64_to_cpu(i64 %324)
  %326 = call i32 @load_attribute_list(%struct.TYPE_45__* %311, %struct.TYPE_38__* %313, i8* %316, i32 %319, i32 %325)
  store i32 %326, i32* %17, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %310
  %329 = load %struct.super_block*, %struct.super_block** %8, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sub nsw i32 0, %330
  %332 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %329, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i32 %331)
  br label %731

333:                                              ; preds = %310
  br label %386

334:                                              ; preds = %266
  %335 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %336 = bitcast %struct.TYPE_35__* %335 to i8*
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @le16_to_cpu(i32 %341)
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %336, i64 %343
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i64 @le32_to_cpu(i64 %349)
  %351 = getelementptr inbounds i8, i8* %344, i64 %350
  %352 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %353 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %355, i64 %359
  %361 = icmp ugt i8* %351, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %334
  %363 = load %struct.super_block*, %struct.super_block** %8, align 8
  %364 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %363, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %731

365:                                              ; preds = %334
  %366 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %366, i32 0, i32 2
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %370 = bitcast %struct.TYPE_35__* %369 to i8*
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @le16_to_cpu(i32 %375)
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %370, i64 %377
  %379 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = call i64 @le32_to_cpu(i64 %383)
  %385 = call i32 @memcpy(i8* %368, i8* %378, i64 %384)
  br label %386

386:                                              ; preds = %365, %333
  %387 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %387, i32 0, i32 2
  %389 = load i8*, i8** %388, align 8
  %390 = bitcast i8* %389 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %390, %struct.TYPE_36__** %18, align 8
  %391 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %392 = bitcast %struct.TYPE_36__* %391 to i8*
  %393 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %392, i64 %396
  store i8* %397, i8** %20, align 8
  br label %398

398:                                              ; preds = %502, %386
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %400 = bitcast %struct.TYPE_36__* %399 to i8*
  %401 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %401, i32 0, i32 2
  %403 = load i8*, i8** %402, align 8
  %404 = icmp ult i8* %400, %403
  br i1 %404, label %410, label %405

405:                                              ; preds = %398
  %406 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %407 = bitcast %struct.TYPE_36__* %406 to i8*
  %408 = load i8*, i8** %20, align 8
  %409 = icmp ugt i8* %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %405, %398
  br label %728

411:                                              ; preds = %405
  %412 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %413 = bitcast %struct.TYPE_36__* %412 to i8*
  %414 = load i8*, i8** %20, align 8
  %415 = icmp eq i8* %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %411
  br label %728

417:                                              ; preds = %411
  %418 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %419 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  br label %728

423:                                              ; preds = %417
  %424 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %425 = bitcast %struct.TYPE_36__* %424 to i8*
  %426 = getelementptr inbounds i8, i8* %425, i64 6
  %427 = load i8*, i8** %20, align 8
  %428 = icmp ugt i8* %426, %427
  br i1 %428, label %440, label %429

429:                                              ; preds = %423
  %430 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %431 = bitcast %struct.TYPE_36__* %430 to i8*
  %432 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @le16_to_cpu(i32 %434)
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %431, i64 %436
  %438 = load i8*, i8** %20, align 8
  %439 = icmp ugt i8* %437, %438
  br i1 %439, label %440, label %441

440:                                              ; preds = %429, %423
  br label %728

441:                                              ; preds = %429
  %442 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %443 = bitcast %struct.TYPE_36__* %442 to i8*
  %444 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %445 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @le16_to_cpu(i32 %446)
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %443, i64 %448
  %450 = bitcast i8* %449 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %450, %struct.TYPE_36__** %19, align 8
  %451 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %452 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = call i64 @le32_to_cpu(i64 %453)
  %455 = load i64, i64* @AT_DATA, align 8
  %456 = call i64 @le32_to_cpu(i64 %455)
  %457 = icmp sgt i64 %454, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %441
  br label %728

459:                                              ; preds = %441
  %460 = load i64, i64* @AT_DATA, align 8
  %461 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %460, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  br label %502

466:                                              ; preds = %459
  %467 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %468 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %466
  br label %728

472:                                              ; preds = %466
  %473 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %474 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  br label %728

478:                                              ; preds = %472
  %479 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %480 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = call i64 @MREF_LE(i32 %481)
  %483 = load %struct.inode*, %struct.inode** %3, align 8
  %484 = getelementptr inbounds %struct.inode, %struct.inode* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %482, %485
  br i1 %486, label %487, label %490

487:                                              ; preds = %478
  %488 = load %struct.super_block*, %struct.super_block** %8, align 8
  %489 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %488, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.16, i64 0, i64 0))
  br label %731

490:                                              ; preds = %478
  %491 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %492 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = call i64 @MSEQNO_LE(i32 %493)
  %495 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %496 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = sext i32 %497 to i64
  %499 = icmp ne i64 %494, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %490
  br label %728

501:                                              ; preds = %490
  br label %504

502:                                              ; preds = %465
  %503 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  store %struct.TYPE_36__* %503, %struct.TYPE_36__** %18, align 8
  br label %398

504:                                              ; preds = %501
  br label %505

505:                                              ; preds = %504, %203
  %506 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %507 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_33__* %506)
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %13, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %508

508:                                              ; preds = %683, %505
  %509 = load i64, i64* @AT_DATA, align 8
  %510 = load i32, i32* %4, align 4
  %511 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %512 = call i32 @ntfs_attr_lookup(i64 %509, i32* null, i32 0, i32 0, i32 %510, i32* null, i32 0, %struct.TYPE_33__* %511)
  store i32 %512, i32* %17, align 4
  %513 = icmp ne i32 %512, 0
  %514 = xor i1 %513, true
  br i1 %514, label %515, label %684

515:                                              ; preds = %508
  %516 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %517 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %516, i32 0, i32 0
  %518 = load %struct.TYPE_35__*, %struct.TYPE_35__** %517, align 8
  store %struct.TYPE_35__* %518, %struct.TYPE_35__** %13, align 8
  %519 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %520 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %519, i32 0, i32 2
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %515
  %524 = load %struct.super_block*, %struct.super_block** %8, align 8
  %525 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %524, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.17, i64 0, i64 0))
  br label %731

526:                                              ; preds = %515
  %527 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %528 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %547, label %533

533:                                              ; preds = %526
  %534 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %547, label %540

540:                                              ; preds = %533
  %541 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %542 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %540, %533, %526
  %548 = load %struct.super_block*, %struct.super_block** %8, align 8
  %549 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %548, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.18, i64 0, i64 0))
  br label %731

550:                                              ; preds = %540
  %551 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %552 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %553 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %554 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %553, i32 0, i32 6
  %555 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %554, i32 0, i32 1
  %556 = load i32*, i32** %555, align 8
  %557 = call i8* @ntfs_mapping_pairs_decompress(%struct.TYPE_45__* %551, %struct.TYPE_35__* %552, i32* %556)
  %558 = bitcast i8* %557 to i32*
  store i32* %558, i32** %21, align 8
  %559 = load i32*, i32** %21, align 8
  %560 = call i64 @IS_ERR(i32* %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %550
  %563 = load %struct.super_block*, %struct.super_block** %8, align 8
  %564 = load i32*, i32** %21, align 8
  %565 = call i32 @PTR_ERR(i32* %564)
  %566 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %563, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %565)
  br label %731

567:                                              ; preds = %550
  %568 = load i32*, i32** %21, align 8
  %569 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %570 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %569, i32 0, i32 6
  %571 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %570, i32 0, i32 1
  store i32* %568, i32** %571, align 8
  %572 = load i32, i32* %4, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %659, label %574

574:                                              ; preds = %567
  %575 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %576 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %574
  %582 = load %struct.super_block*, %struct.super_block** %8, align 8
  %583 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %582, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.20, i64 0, i64 0))
  br label %731

584:                                              ; preds = %574
  %585 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %586 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %587, i32 0, i32 2
  %589 = load i64, i64* %588, align 8
  %590 = call i32 @sle64_to_cpu(i64 %589)
  %591 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %592 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %591, i32 0, i32 3
  %593 = load i32, i32* %592, align 4
  %594 = ashr i32 %590, %593
  store i32 %594, i32* %5, align 4
  %595 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %596 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %597, i32 0, i32 4
  %599 = load i64, i64* %598, align 8
  %600 = call i32 @sle64_to_cpu(i64 %599)
  %601 = load %struct.inode*, %struct.inode** %3, align 8
  %602 = getelementptr inbounds %struct.inode, %struct.inode* %601, i32 0, i32 2
  store i32 %600, i32* %602, align 8
  %603 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %604 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %605, i32 0, i32 3
  %607 = load i64, i64* %606, align 8
  %608 = call i32 @sle64_to_cpu(i64 %607)
  %609 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %610 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %609, i32 0, i32 3
  store i32 %608, i32* %610, align 8
  %611 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %612 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %613, i32 0, i32 2
  %615 = load i64, i64* %614, align 8
  %616 = call i32 @sle64_to_cpu(i64 %615)
  %617 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %618 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %617, i32 0, i32 4
  store i32 %616, i32* %618, align 4
  %619 = load %struct.inode*, %struct.inode** %3, align 8
  %620 = getelementptr inbounds %struct.inode, %struct.inode* %619, i32 0, i32 2
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %623 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %622, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = trunc i64 %624 to i32
  %626 = ashr i32 %621, %625
  %627 = sext i32 %626 to i64
  %628 = icmp uge i64 %627, 4294967296
  br i1 %628, label %629, label %632

629:                                              ; preds = %584
  %630 = load %struct.super_block*, %struct.super_block** %8, align 8
  %631 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %630, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %731

632:                                              ; preds = %584
  %633 = load %struct.inode*, %struct.inode** %3, align 8
  %634 = call i32 @ntfs_read_locked_inode(%struct.inode* %633)
  %635 = load %struct.inode*, %struct.inode** %3, align 8
  %636 = call i64 @is_bad_inode(%struct.inode* %635)
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %645

638:                                              ; preds = %632
  %639 = load %struct.super_block*, %struct.super_block** %8, align 8
  %640 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %639, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.22, i64 0, i64 0))
  %641 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %642 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_33__* %641)
  %643 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %644 = call i32 @ntfs_free(%struct.TYPE_34__* %643)
  store i32 -1, i32* %2, align 4
  br label %741

645:                                              ; preds = %632
  %646 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %647 = load %struct.inode*, %struct.inode** %3, align 8
  %648 = getelementptr inbounds %struct.inode, %struct.inode* %647, i32 0, i32 7
  store i32 %646, i32* %648, align 8
  %649 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %650 = load %struct.inode*, %struct.inode** %3, align 8
  %651 = getelementptr inbounds %struct.inode, %struct.inode* %650, i32 0, i32 6
  store i32 %649, i32* %651, align 4
  %652 = load i32, i32* @S_IFREG, align 4
  %653 = load %struct.inode*, %struct.inode** %3, align 8
  %654 = getelementptr inbounds %struct.inode, %struct.inode* %653, i32 0, i32 5
  store i32 %652, i32* %654, align 8
  %655 = load %struct.inode*, %struct.inode** %3, align 8
  %656 = getelementptr inbounds %struct.inode, %struct.inode* %655, i32 0, i32 4
  store i32* @ntfs_empty_inode_ops, i32** %656, align 8
  %657 = load %struct.inode*, %struct.inode** %3, align 8
  %658 = getelementptr inbounds %struct.inode, %struct.inode* %657, i32 0, i32 3
  store i32* @ntfs_empty_file_ops, i32** %658, align 8
  br label %659

659:                                              ; preds = %645, %567
  %660 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %661 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %662, i32 0, i32 1
  %664 = load i64, i64* %663, align 8
  %665 = call i32 @sle64_to_cpu(i64 %664)
  store i32 %665, i32* %6, align 4
  %666 = load i32, i32* %6, align 4
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %4, align 4
  %668 = load i32, i32* %4, align 4
  %669 = icmp sle i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %659
  br label %684

671:                                              ; preds = %659
  %672 = load i32, i32* %4, align 4
  %673 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %674 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %674, i32 0, i32 0
  %676 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %675, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = call i32 @sle64_to_cpu(i64 %677)
  %679 = icmp slt i32 %672, %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %671
  %681 = load %struct.super_block*, %struct.super_block** %8, align 8
  %682 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %681, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0))
  br label %731

683:                                              ; preds = %671
  br label %508

684:                                              ; preds = %670, %508
  %685 = load i32, i32* %17, align 4
  %686 = load i32, i32* @ENOENT, align 4
  %687 = sub nsw i32 0, %686
  %688 = icmp ne i32 %685, %687
  br i1 %688, label %689, label %692

689:                                              ; preds = %684
  %690 = load %struct.super_block*, %struct.super_block** %8, align 8
  %691 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %690, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0))
  br label %731

692:                                              ; preds = %684
  %693 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %694 = icmp ne %struct.TYPE_35__* %693, null
  br i1 %694, label %698, label %695

695:                                              ; preds = %692
  %696 = load %struct.super_block*, %struct.super_block** %8, align 8
  %697 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %696, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i64 0, i64 0))
  br label %731

698:                                              ; preds = %692
  %699 = load i32, i32* %6, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %715

701:                                              ; preds = %698
  %702 = load i32, i32* %6, align 4
  %703 = load i32, i32* %5, align 4
  %704 = sub nsw i32 %703, 1
  %705 = icmp ne i32 %702, %704
  br i1 %705, label %706, label %715

706:                                              ; preds = %701
  %707 = load %struct.super_block*, %struct.super_block** %8, align 8
  %708 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %707, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.26, i64 0, i64 0))
  %709 = load i32, i32* %6, align 4
  %710 = sext i32 %709 to i64
  %711 = load i32, i32* %5, align 4
  %712 = sext i32 %711 to i64
  %713 = sub i64 %712, 1
  %714 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0), i64 %710, i64 %713)
  br label %731

715:                                              ; preds = %701, %698
  %716 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %717 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_33__* %716)
  %718 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %719 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %720 = call i32 @ntfs_free(%struct.TYPE_34__* %719)
  %721 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %722 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %721, i32 0, i32 6
  %723 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %722, i32 0, i32 0
  %724 = call i32 @lockdep_set_class(i32* %723, i32* @mft_ni_runlist_lock_key)
  %725 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %726 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %725, i32 0, i32 5
  %727 = call i32 @lockdep_set_class(i32* %726, i32* @mft_ni_mrec_lock_key)
  store i32 0, i32* %2, align 4
  br label %741

728:                                              ; preds = %500, %477, %471, %458, %440, %422, %416, %410
  %729 = load %struct.super_block*, %struct.super_block** %8, align 8
  %730 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %729, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.29, i64 0, i64 0))
  br label %731

731:                                              ; preds = %728, %706, %695, %689, %680, %629, %581, %562, %547, %523, %487, %362, %328, %297, %280, %263, %240, %217, %200
  %732 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %733 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_33__* %732)
  br label %734

734:                                              ; preds = %731, %183, %162, %128, %91, %66
  %735 = load %struct.super_block*, %struct.super_block** %8, align 8
  %736 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %737 = load %struct.inode*, %struct.inode** %3, align 8
  %738 = call i32 @make_bad_inode(%struct.inode* %737)
  %739 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %740 = call i32 @ntfs_free(%struct.TYPE_34__* %739)
  store i32 -1, i32* %2, align 4
  br label %741

741:                                              ; preds = %734, %715, %638
  %742 = load i32, i32* %2, align 4
  ret i32 %742
}

declare dso_local %struct.TYPE_45__* @NTFS_SB(%struct.super_block*) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_46__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @NInoSetNonResident(%struct.TYPE_46__*) #1

declare dso_local i32 @NInoSetMstProtected(%struct.TYPE_46__*) #1

declare dso_local i32 @NInoSetSparseDisabled(%struct.TYPE_46__*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i8* @ntfs_malloc_nofs(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @post_read_mst_fixup(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_33__* @ntfs_attr_get_search_ctx(%struct.TYPE_46__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ntfs_attr_lookup(i64, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_33__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NInoSetAttrList(%struct.TYPE_46__*) #1

declare dso_local i32 @ntfs_warning(%struct.super_block*, i8*) #1

declare dso_local i64 @ntfs_attr_size(%struct.TYPE_35__*) #1

declare dso_local i32 @NInoSetAttrListNonResident(%struct.TYPE_46__*) #1

declare dso_local i8* @ntfs_mapping_pairs_decompress(%struct.TYPE_45__*, %struct.TYPE_35__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @load_attribute_list(%struct.TYPE_45__*, %struct.TYPE_38__*, i8*, i32, i32) #1

declare dso_local i32 @sle64_to_cpu(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @MREF_LE(i32) #1

declare dso_local i64 @MSEQNO_LE(i32) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_33__*) #1

declare dso_local i32 @ntfs_read_locked_inode(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_33__*) #1

declare dso_local i32 @ntfs_free(%struct.TYPE_34__*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
