; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_index_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_index_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_38__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_40__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, %struct.TYPE_39__, %struct.TYPE_37__, i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_28__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_35__, i32, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_34__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_33__, i64, i64, i64 }
%struct.TYPE_33__ = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AT_INDEX_ROOT = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is missing.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", align 1
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Found compressed/encrypted/sparse index root attribute.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Index is corrupt.\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Index type is not 0 (type is 0x%x).\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Index collation rule is 0x%x.\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Index block size (%u) is not a power of two.\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [66 x i8] c"Index block size (%u) > PAGE_SIZE (%ld) is not supported.  Sorry.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", align 1
@LARGE_INDEX = common dso_local global i32 0, align 4
@AT_INDEX_ALLOCATION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", align 1
@AT_BITMAP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", align 1
@ntfs_mst_aops = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [80 x i8] c"Failed with error code %i while reading index inode (mft_no 0x%lx, name_len %i.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*)* @ntfs_read_locked_index_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_index_inode(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_40__* @NTFS_SB(i32 %21)
  store %struct.TYPE_40__* %22, %struct.TYPE_40__** %7, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @ntfs_init_big_inode(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %29)
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %31)
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @set_nlink(%struct.inode* %43, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 6
  store i32 %65, i32* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @S_IFMT, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %79 = call %struct.inode* @map_mft_record(%struct.TYPE_28__* %78)
  store %struct.inode* %79, %struct.inode** %12, align 8
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = call i64 @IS_ERR(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %2
  %84 = load %struct.inode*, %struct.inode** %12, align 8
  %85 = call i32 @PTR_ERR(%struct.inode* %84)
  store i32 %85, i32* %18, align 4
  br label %663

86:                                               ; preds = %2
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %88 = load %struct.inode*, %struct.inode** %12, align 8
  %89 = call %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__* %87, %struct.inode* %88)
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %14, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %91 = icmp ne %struct.TYPE_29__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %18, align 4
  br label %644

95:                                               ; preds = %86
  %96 = load i32, i32* @AT_INDEX_ROOT, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CASE_SENSITIVE, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %105 = call i32 @ntfs_attr_lookup(i32 %96, i32 %99, i32 %102, i32 %103, i32 0, i32* null, i32 0, %struct.TYPE_29__* %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %95
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @ntfs_error(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %109
  br label %644

120:                                              ; preds = %95
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %122, align 8
  store %struct.TYPE_31__* %123, %struct.TYPE_31__** %13, align 8
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @ntfs_error(i32 %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %644

134:                                              ; preds = %120
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @le16_to_cpu(i32 %142)
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @le16_to_cpu(i32 %148)
  %150 = icmp sge i64 %143, %149
  br label %151

151:                                              ; preds = %139, %134
  %152 = phi i1 [ false, %134 ], [ %150, %139 ]
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @ntfs_error(i32 %159, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %644

161:                                              ; preds = %151
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %166 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %164, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %161
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @ntfs_error(i32 %175, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %644

177:                                              ; preds = %161
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %179 = bitcast %struct.TYPE_31__* %178 to i32*
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @le16_to_cpu(i32 %184)
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  %187 = bitcast i32* %186 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %187, %struct.TYPE_30__** %15, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %189 = bitcast %struct.TYPE_30__* %188 to i32*
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @le32_to_cpu(i64 %194)
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %189, i64 %196
  store i32* %197, i32** %16, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i32*
  %203 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = icmp ugt i32* %198, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %177
  %210 = load %struct.inode*, %struct.inode** %5, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i32, i8*, ...) @ntfs_error(i32 %212, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %644

214:                                              ; preds = %177
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = bitcast %struct.TYPE_33__* %216 to i32*
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @le32_to_cpu(i64 %221)
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  store i32* %224, i32** %17, align 8
  %225 = load i32*, i32** %17, align 8
  %226 = load i32*, i32** %16, align 8
  %227 = icmp ugt i32* %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %214
  %229 = load %struct.inode*, %struct.inode** %5, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @ntfs_error(i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %644

233:                                              ; preds = %214
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @le32_to_cpu(i64 %244)
  %246 = call i32 (i32, i8*, ...) @ntfs_error(i32 %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %245)
  br label %644

247:                                              ; preds = %233
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 4
  store i64 %250, i64* %254, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @le32_to_cpu(i64 %257)
  %259 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %258)
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @le32_to_cpu(i64 %262)
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @is_power_of_2(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %247
  %276 = load %struct.inode*, %struct.inode** %5, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i32, i8*, ...) @ntfs_error(i32 %278, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %283)
  br label %644

285:                                              ; preds = %247
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = load i64, i64* @PAGE_SIZE, align 8
  %293 = icmp sgt i64 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %285
  %295 = load %struct.inode*, %struct.inode** %5, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i64, i64* @PAGE_SIZE, align 8
  %304 = call i32 (i32, i8*, ...) @ntfs_error(i32 %297, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %302, i64 %303)
  %305 = load i32, i32* @EOPNOTSUPP, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %18, align 4
  br label %644

307:                                              ; preds = %285
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %316, label %329

316:                                              ; preds = %307
  %317 = load %struct.inode*, %struct.inode** %5, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %326 = call i32 (i32, i8*, ...) @ntfs_error(i32 %319, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i32 %324, i64 %325)
  %327 = load i32, i32* @EOPNOTSUPP, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %18, align 4
  br label %644

329:                                              ; preds = %307
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = call i32 @ffs(i64 %335)
  %337 = sub nsw i32 %336, 1
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %340, i32 0, i32 1
  store i32 %337, i32* %341, align 4
  %342 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = icmp sle i64 %344, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %329
  %353 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %358, i32 0, i32 2
  store i64 %355, i64* %359, align 8
  %360 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %365, i32 0, i32 3
  store i32 %362, i32* %366, align 8
  br label %382

367:                                              ; preds = %329
  %368 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 2
  store i64 %370, i64* %374, align 8
  %375 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %380, i32 0, i32 3
  store i32 %377, i32* %381, align 8
  br label %382

382:                                              ; preds = %367, %352
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @LARGE_INDEX, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %401, label %390

390:                                              ; preds = %382
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 1
  store i32 0, i32* %392, align 4
  %393 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %393, i32 0, i32 0
  store i32 0, i32* %394, align 8
  %395 = load %struct.inode*, %struct.inode** %5, align 8
  %396 = getelementptr inbounds %struct.inode, %struct.inode* %395, i32 0, i32 1
  store i32 0, i32* %396, align 4
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %398 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %397)
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %400 = call i32 @unmap_mft_record(%struct.TYPE_28__* %399)
  store %struct.inode* null, %struct.inode** %12, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %14, align 8
  br label %621

401:                                              ; preds = %382
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %403 = call i32 @NInoSetIndexAllocPresent(%struct.TYPE_28__* %402)
  %404 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %405 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__* %404)
  %406 = load i32, i32* @AT_INDEX_ALLOCATION, align 4
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 6
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @CASE_SENSITIVE, align 4
  %414 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %415 = call i32 @ntfs_attr_lookup(i32 %406, i32 %409, i32 %412, i32 %413, i32 0, i32* null, i32 0, %struct.TYPE_29__* %414)
  store i32 %415, i32* %18, align 4
  %416 = load i32, i32* %18, align 4
  %417 = call i64 @unlikely(i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %435

419:                                              ; preds = %401
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* @ENOENT, align 4
  %422 = sub nsw i32 0, %421
  %423 = icmp eq i32 %420, %422
  br i1 %423, label %424, label %429

424:                                              ; preds = %419
  %425 = load %struct.inode*, %struct.inode** %5, align 8
  %426 = getelementptr inbounds %struct.inode, %struct.inode* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = call i32 (i32, i8*, ...) @ntfs_error(i32 %427, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0))
  br label %434

429:                                              ; preds = %419
  %430 = load %struct.inode*, %struct.inode** %5, align 8
  %431 = getelementptr inbounds %struct.inode, %struct.inode* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = call i32 (i32, i8*, ...) @ntfs_error(i32 %432, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  br label %434

434:                                              ; preds = %429, %424
  br label %644

435:                                              ; preds = %401
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_31__*, %struct.TYPE_31__** %437, align 8
  store %struct.TYPE_31__* %438, %struct.TYPE_31__** %13, align 8
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %448, label %443

443:                                              ; preds = %435
  %444 = load %struct.inode*, %struct.inode** %5, align 8
  %445 = getelementptr inbounds %struct.inode, %struct.inode* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = call i32 (i32, i8*, ...) @ntfs_error(i32 %446, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %644

448:                                              ; preds = %435
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %450 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %449, i32 0, i32 4
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %465

453:                                              ; preds = %448
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 8
  %457 = call i64 @le16_to_cpu(i32 %456)
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 8
  %463 = call i64 @le16_to_cpu(i32 %462)
  %464 = icmp sge i64 %457, %463
  br label %465

465:                                              ; preds = %453, %448
  %466 = phi i1 [ false, %448 ], [ %464, %453 ]
  %467 = zext i1 %466 to i32
  %468 = call i64 @unlikely(i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %475

470:                                              ; preds = %465
  %471 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = call i32 (i32, i8*, ...) @ntfs_error(i32 %473, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0))
  br label %644

475:                                              ; preds = %465
  %476 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %477 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %475
  %483 = load %struct.inode*, %struct.inode** %5, align 8
  %484 = getelementptr inbounds %struct.inode, %struct.inode* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = call i32 (i32, i8*, ...) @ntfs_error(i32 %485, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  br label %644

487:                                              ; preds = %475
  %488 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %487
  %495 = load %struct.inode*, %struct.inode** %5, align 8
  %496 = getelementptr inbounds %struct.inode, %struct.inode* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 8
  %498 = call i32 (i32, i8*, ...) @ntfs_error(i32 %497, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %644

499:                                              ; preds = %487
  %500 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %501 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %504 = and i32 %502, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %511

506:                                              ; preds = %499
  %507 = load %struct.inode*, %struct.inode** %5, align 8
  %508 = getelementptr inbounds %struct.inode, %struct.inode* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 8
  %510 = call i32 (i32, i8*, ...) @ntfs_error(i32 %509, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  br label %644

511:                                              ; preds = %499
  %512 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %511
  %519 = load %struct.inode*, %struct.inode** %5, align 8
  %520 = getelementptr inbounds %struct.inode, %struct.inode* %519, i32 0, i32 4
  %521 = load i32, i32* %520, align 8
  %522 = call i32 (i32, i8*, ...) @ntfs_error(i32 %521, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0))
  br label %644

523:                                              ; preds = %511
  %524 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %525 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = call i8* @sle64_to_cpu(i32 %528)
  %530 = ptrtoint i8* %529 to i32
  %531 = load %struct.inode*, %struct.inode** %5, align 8
  %532 = getelementptr inbounds %struct.inode, %struct.inode* %531, i32 0, i32 1
  store i32 %530, i32* %532, align 4
  %533 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %534 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = call i8* @sle64_to_cpu(i32 %537)
  %539 = ptrtoint i8* %538 to i32
  %540 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %540, i32 0, i32 0
  store i32 %539, i32* %541, align 8
  %542 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %543 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = call i8* @sle64_to_cpu(i32 %546)
  %548 = ptrtoint i8* %547 to i32
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 1
  store i32 %548, i32* %550, align 4
  %551 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %552 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %551)
  %553 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %554 = call i32 @unmap_mft_record(%struct.TYPE_28__* %553)
  store %struct.inode* null, %struct.inode** %12, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %14, align 8
  %555 = load %struct.inode*, %struct.inode** %4, align 8
  %556 = load i32, i32* @AT_BITMAP, align 4
  %557 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %557, i32 0, i32 6
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %561 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 4
  %563 = call %struct.inode* @ntfs_attr_iget(%struct.inode* %555, i32 %556, i32 %559, i32 %562)
  store %struct.inode* %563, %struct.inode** %11, align 8
  %564 = load %struct.inode*, %struct.inode** %11, align 8
  %565 = call i64 @IS_ERR(%struct.inode* %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %574

567:                                              ; preds = %523
  %568 = load %struct.inode*, %struct.inode** %5, align 8
  %569 = getelementptr inbounds %struct.inode, %struct.inode* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 8
  %571 = call i32 (i32, i8*, ...) @ntfs_error(i32 %570, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %572 = load %struct.inode*, %struct.inode** %11, align 8
  %573 = call i32 @PTR_ERR(%struct.inode* %572)
  store i32 %573, i32* %18, align 4
  br label %644

574:                                              ; preds = %523
  %575 = load %struct.inode*, %struct.inode** %11, align 8
  %576 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %575)
  store %struct.TYPE_28__* %576, %struct.TYPE_28__** %10, align 8
  %577 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %578 = call i64 @NInoCompressed(%struct.TYPE_28__* %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %588, label %580

580:                                              ; preds = %574
  %581 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %582 = call i64 @NInoEncrypted(%struct.TYPE_28__* %581)
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %588, label %584

584:                                              ; preds = %580
  %585 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %586 = call i64 @NInoSparse(%struct.TYPE_28__* %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %593

588:                                              ; preds = %584, %580, %574
  %589 = load %struct.inode*, %struct.inode** %5, align 8
  %590 = getelementptr inbounds %struct.inode, %struct.inode* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = call i32 (i32, i8*, ...) @ntfs_error(i32 %591, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i64 0, i64 0))
  br label %641

593:                                              ; preds = %584
  %594 = load %struct.inode*, %struct.inode** %11, align 8
  %595 = call i32 @i_size_read(%struct.inode* %594)
  store i32 %595, i32* %6, align 4
  %596 = load i32, i32* %6, align 4
  %597 = shl i32 %596, 3
  %598 = load %struct.inode*, %struct.inode** %5, align 8
  %599 = getelementptr inbounds %struct.inode, %struct.inode* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %602 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = ashr i32 %600, %605
  %607 = icmp slt i32 %597, %606
  br i1 %607, label %608, label %618

608:                                              ; preds = %593
  %609 = load %struct.inode*, %struct.inode** %5, align 8
  %610 = getelementptr inbounds %struct.inode, %struct.inode* %609, i32 0, i32 4
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* %6, align 4
  %613 = shl i32 %612, 3
  %614 = load %struct.inode*, %struct.inode** %5, align 8
  %615 = getelementptr inbounds %struct.inode, %struct.inode* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = call i32 (i32, i8*, ...) @ntfs_error(i32 %611, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i64 0, i64 0), i32 %613, i32 %616)
  br label %641

618:                                              ; preds = %593
  %619 = load %struct.inode*, %struct.inode** %11, align 8
  %620 = call i32 @iput(%struct.inode* %619)
  br label %621

621:                                              ; preds = %618, %390
  %622 = load %struct.inode*, %struct.inode** %5, align 8
  %623 = getelementptr inbounds %struct.inode, %struct.inode* %622, i32 0, i32 5
  %624 = load %struct.TYPE_38__*, %struct.TYPE_38__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %624, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %625, align 8
  %626 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %627 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = ashr i32 %628, 9
  %630 = load %struct.inode*, %struct.inode** %5, align 8
  %631 = getelementptr inbounds %struct.inode, %struct.inode* %630, i32 0, i32 2
  store i32 %629, i32* %631, align 8
  %632 = load %struct.inode*, %struct.inode** %4, align 8
  %633 = call i32 @igrab(%struct.inode* %632)
  %634 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %635 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %636 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %635, i32 0, i32 4
  %637 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %636, i32 0, i32 0
  store %struct.TYPE_28__* %634, %struct.TYPE_28__** %637, align 8
  %638 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %639 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %638, i32 0, i32 2
  store i32 -1, i32* %639, align 8
  %640 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %691

641:                                              ; preds = %608, %588
  %642 = load %struct.inode*, %struct.inode** %11, align 8
  %643 = call i32 @iput(%struct.inode* %642)
  br label %644

644:                                              ; preds = %641, %567, %518, %506, %494, %482, %470, %443, %434, %316, %294, %275, %238, %228, %209, %172, %156, %129, %119, %92
  %645 = load i32, i32* %18, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %650, label %647

647:                                              ; preds = %644
  %648 = load i32, i32* @EIO, align 4
  %649 = sub nsw i32 0, %648
  store i32 %649, i32* %18, align 4
  br label %650

650:                                              ; preds = %647, %644
  %651 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %652 = icmp ne %struct.TYPE_29__* %651, null
  br i1 %652, label %653, label %656

653:                                              ; preds = %650
  %654 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %655 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %654)
  br label %656

656:                                              ; preds = %653, %650
  %657 = load %struct.inode*, %struct.inode** %12, align 8
  %658 = icmp ne %struct.inode* %657, null
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %661 = call i32 @unmap_mft_record(%struct.TYPE_28__* %660)
  br label %662

662:                                              ; preds = %659, %656
  br label %663

663:                                              ; preds = %662, %83
  %664 = load %struct.inode*, %struct.inode** %5, align 8
  %665 = getelementptr inbounds %struct.inode, %struct.inode* %664, i32 0, i32 4
  %666 = load i32, i32* %665, align 8
  %667 = load i32, i32* %18, align 4
  %668 = load %struct.inode*, %struct.inode** %5, align 8
  %669 = getelementptr inbounds %struct.inode, %struct.inode* %668, i32 0, i32 3
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %672 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 4
  %674 = call i32 (i32, i8*, ...) @ntfs_error(i32 %666, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.24, i64 0, i64 0), i32 %667, i32 %670, i32 %673)
  %675 = load %struct.inode*, %struct.inode** %5, align 8
  %676 = call i32 @make_bad_inode(%struct.inode* %675)
  %677 = load i32, i32* %18, align 4
  %678 = load i32, i32* @EOPNOTSUPP, align 4
  %679 = sub nsw i32 0, %678
  %680 = icmp ne i32 %677, %679
  br i1 %680, label %681, label %689

681:                                              ; preds = %663
  %682 = load i32, i32* %18, align 4
  %683 = load i32, i32* @ENOMEM, align 4
  %684 = sub nsw i32 0, %683
  %685 = icmp ne i32 %682, %684
  br i1 %685, label %686, label %689

686:                                              ; preds = %681
  %687 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %688 = call i32 @NVolSetErrors(%struct.TYPE_40__* %687)
  br label %689

689:                                              ; preds = %686, %681, %663
  %690 = load i32, i32* %18, align 4
  store i32 %690, i32* %3, align 4
  br label %691

691:                                              ; preds = %689, %621
  %692 = load i32, i32* %3, align 4
  ret i32 %692
}

declare dso_local %struct.TYPE_40__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_28__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_28__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__*, %struct.inode*) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_28__*) #1

declare dso_local i32 @NInoSetIndexAllocPresent(%struct.TYPE_28__*) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__*) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local %struct.inode* @ntfs_attr_iget(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_28__*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_28__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_28__*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
