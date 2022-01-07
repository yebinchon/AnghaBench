; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_54__*, i32*, i32*, i32, i8*, i8*, i8*, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_54__ = type { i32* }
%struct.TYPE_57__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32, %struct.TYPE_56__, i32*, i8*, i32, i64, %struct.TYPE_49__, i64 }
%struct.TYPE_56__ = type { %struct.TYPE_55__, %struct.TYPE_50__ }
%struct.TYPE_55__ = type { i32, i32, i32, i8* }
%struct.TYPE_50__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_49__ = type { %struct.inode* }
%struct.TYPE_47__ = type { i32, i32, %struct.TYPE_53__, i32, i32, i64 }
%struct.TYPE_53__ = type { %struct.TYPE_52__, %struct.TYPE_51__ }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_47__*, i64 }
%struct.TYPE_46__ = type { i64, i64, %struct.TYPE_48__, i32 }
%struct.TYPE_48__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@FILE_MFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MFT_RECORD_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Inode is not in use!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Inode is an extent inode!\00", align 1
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@MFT_RECORD_IS_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@AT_STANDARD_INFORMATION = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"$STANDARD_INFORMATION attribute is missing.\00", align 1
@AT_ATTRIBUTE_LIST = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to lookup attribute list attribute.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Attribute list found in inode 0x%lx.\00", align 1
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Attribute list attribute is compressed.\00", align 1
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"Non-resident attribute list attribute is encrypted/sparse.\00", align 1
@.str.8 = private unnamed_addr constant [237 x i8] c"Resident attribute list attribute in inode 0x%lx is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Not enough memory to allocate buffer for attribute list.\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Attribute list has non zero lowest_vcn.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Mapping pairs decompression failed.\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to load attribute list attribute.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Corrupt attribute list in inode.\00", align 1
@AT_INDEX_ROOT = common dso_local global i8* null, align 8
@I30 = common dso_local global i32* null, align 8
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is missing.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Found encrypted and compressed attribute.\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Directory index is corrupt.\00", align 1
@AT_FILE_NAME = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"Indexed attribute is not $FILE_NAME.\00", align 1
@COLLATION_FILE_NAME = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"Index collation rule is not COLLATION_FILE_NAME.\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Index block size (%u) is not a power of two.\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [66 x i8] c"Index block size (%u) > PAGE_SIZE (%ld) is not supported.  Sorry.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", align 1
@AT_INDEX_ALLOCATION = common dso_local global i8* null, align 8
@LARGE_INDEX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", align 1
@.str.28 = private unnamed_addr constant [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", align 1
@AT_BITMAP = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", align 1
@ntfs_dir_inode_ops = common dso_local global i32 0, align 4
@ntfs_dir_ops = common dso_local global i32 0, align 4
@ntfs_mst_aops = common dso_local global i32 0, align 4
@AT_DATA = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [34 x i8] c"Failed to lookup $DATA attribute.\00", align 1
@FILE_Secure = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"$DATA attribute is missing.\00", align 1
@.str.38 = private unnamed_addr constant [83 x i8] c"Found compressed data but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@ATTR_IS_COMPRESSED = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [50 x i8] c"Found unknown compression method or corrupt file.\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Found encrypted and compressed data.\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"First extent of $DATA attribute has non zero lowest_vcn.\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Resident data attribute is corrupt (size exceeds allocation).\00", align 1
@ntfs_file_inode_ops = common dso_local global i32 0, align 4
@ntfs_file_ops = common dso_local global i32 0, align 4
@ntfs_normal_aops = common dso_local global i32 0, align 4
@ntfs_compressed_aops = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [77 x i8] c"Failed with error code %i.  Marking corrupt inode 0x%lx as bad.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ntfs_read_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.TYPE_57__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_47__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_57__* @NTFS_SB(i32 %19)
  store %struct.TYPE_57__* %20, %struct.TYPE_57__** %4, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 5
  store i32 0, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FILE_MFT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @ntfs_init_big_inode(%struct.inode* %43)
  br label %45

45:                                               ; preds = %42, %1
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call %struct.TYPE_43__* @NTFS_I(%struct.inode* %46)
  store %struct.TYPE_43__* %47, %struct.TYPE_43__** %5, align 8
  %48 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %49 = call %struct.inode* @map_mft_record(%struct.TYPE_43__* %48)
  store %struct.inode* %49, %struct.inode** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call i64 @IS_ERR(%struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.inode* %54)
  store i32 %55, i32* %11, align 4
  br label %1407

56:                                               ; preds = %45
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call %struct.TYPE_44__* @ntfs_attr_get_search_ctx(%struct.TYPE_43__* %57, %struct.inode* %58)
  store %struct.TYPE_44__* %59, %struct.TYPE_44__** %10, align 8
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %61 = icmp ne %struct.TYPE_44__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %1388

65:                                               ; preds = %56
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MFT_RECORD_IN_USE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @ntfs_error(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %1388

77:                                               ; preds = %65
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 16
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @ntfs_error(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %1388

87:                                               ; preds = %77
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le16_to_cpu(i32 %90)
  %92 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %92, i32 0, i32 9
  store i64 %91, i64* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 15
  store i64 %91, i64* %95, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @le16_to_cpu(i32 %99)
  %101 = trunc i64 %100 to i32
  %102 = call i32 @set_nlink(%struct.inode* %96, i32 %101)
  %103 = load i32, i32* @S_IRWXUGO, align 4
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = call i64 @IS_RDONLY(%struct.inode* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %87
  %112 = load i32, i32* @S_IWUGO, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %111, %87
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MFT_RECORD_IS_DIRECTORY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %118
  %126 = load i32, i32* @S_IFDIR, align 4
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load %struct.inode*, %struct.inode** %3, align 8
  %145 = call i32 @set_nlink(%struct.inode* %144, i32 1)
  br label %146

146:                                              ; preds = %143, %125
  br label %161

147:                                              ; preds = %118
  %148 = load i32, i32* @S_IFREG, align 4
  %149 = load %struct.inode*, %struct.inode** %3, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.inode*, %struct.inode** %3, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %147, %146
  %162 = load i8*, i8** @AT_STANDARD_INFORMATION, align 8
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %164 = call i32 @ntfs_attr_lookup(i8* %162, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ENOENT, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.inode*, %struct.inode** %3, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32, i8*, ...) @ntfs_error(i32 %176, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %168
  br label %1388

179:                                              ; preds = %161
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_47__*, %struct.TYPE_47__** %181, align 8
  store %struct.TYPE_47__* %182, %struct.TYPE_47__** %8, align 8
  %183 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %184 = bitcast %struct.TYPE_47__* %183 to i32*
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @le16_to_cpu(i32 %189)
  %191 = getelementptr inbounds i32, i32* %184, i64 %190
  %192 = bitcast i32* %191 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %192, %struct.TYPE_45__** %9, align 8
  %193 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @ntfs2utc(i32 %195)
  %197 = load %struct.inode*, %struct.inode** %3, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 12
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @ntfs2utc(i32 %201)
  %203 = load %struct.inode*, %struct.inode** %3, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 11
  store i8* %202, i8** %204, align 8
  %205 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @ntfs2utc(i32 %207)
  %209 = load %struct.inode*, %struct.inode** %3, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 10
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %212 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %211)
  %213 = load i8*, i8** @AT_ATTRIBUTE_LIST, align 8
  %214 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %215 = call i32 @ntfs_attr_lookup(i8* %213, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %179
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @ENOENT, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp ne i32 %219, %221
  %223 = zext i1 %222 to i32
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %218
  %227 = load %struct.inode*, %struct.inode** %3, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, ...) @ntfs_error(i32 %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %1388

231:                                              ; preds = %218
  br label %436

232:                                              ; preds = %179
  %233 = load %struct.inode*, %struct.inode** %3, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @FILE_MFT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %437

239:                                              ; preds = %232
  %240 = load %struct.inode*, %struct.inode** %3, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %242)
  %244 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %245 = call i32 @NInoSetAttrList(%struct.TYPE_43__* %244)
  %246 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_47__*, %struct.TYPE_47__** %247, align 8
  store %struct.TYPE_47__* %248, %struct.TYPE_47__** %8, align 8
  %249 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %239
  %256 = load %struct.inode*, %struct.inode** %3, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32, i8*, ...) @ntfs_error(i32 %258, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %1388

260:                                              ; preds = %239
  %261 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %260
  %268 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %292

274:                                              ; preds = %267, %260
  %275 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.inode*, %struct.inode** %3, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i32, i8*, ...) @ntfs_error(i32 %282, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  br label %1388

284:                                              ; preds = %274
  %285 = load %struct.inode*, %struct.inode** %3, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 9
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.inode*, %struct.inode** %3, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @ntfs_warning(i32 %287, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.8, i64 0, i64 0), i64 %290)
  br label %292

292:                                              ; preds = %284, %267
  %293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %294 = call i64 @ntfs_attr_size(%struct.TYPE_47__* %293)
  %295 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %295, i32 0, i32 7
  store i64 %294, i64* %296, align 8
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %297, i32 0, i32 7
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @ntfs_malloc_nofs(i64 %299)
  %301 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %292
  %308 = load %struct.inode*, %struct.inode** %3, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (i32, i8*, ...) @ntfs_error(i32 %310, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %312 = load i32, i32* @ENOMEM, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %11, align 4
  br label %1388

314:                                              ; preds = %292
  %315 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %383

319:                                              ; preds = %314
  %320 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %321 = call i32 @NInoSetAttrListNonResident(%struct.TYPE_43__* %320)
  %322 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %319
  %329 = load %struct.inode*, %struct.inode** %3, align 8
  %330 = getelementptr inbounds %struct.inode, %struct.inode* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 8
  %332 = call i32 (i32, i8*, ...) @ntfs_error(i32 %331, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %1388

333:                                              ; preds = %319
  %334 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %335 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %336 = call %struct.inode* @ntfs_mapping_pairs_decompress(%struct.TYPE_57__* %334, %struct.TYPE_47__* %335, i32* null)
  %337 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %337, i32 0, i32 8
  %339 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %338, i32 0, i32 0
  store %struct.inode* %336, %struct.inode** %339, align 8
  %340 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %341, i32 0, i32 0
  %343 = load %struct.inode*, %struct.inode** %342, align 8
  %344 = call i64 @IS_ERR(%struct.inode* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %333
  %347 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %347, i32 0, i32 8
  %349 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %348, i32 0, i32 0
  %350 = load %struct.inode*, %struct.inode** %349, align 8
  %351 = call i32 @PTR_ERR(%struct.inode* %350)
  store i32 %351, i32* %11, align 4
  %352 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %353, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %354, align 8
  %355 = load %struct.inode*, %struct.inode** %3, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (i32, i8*, ...) @ntfs_error(i32 %357, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %1388

359:                                              ; preds = %333
  %360 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %361 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %361, i32 0, i32 8
  %363 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %366, i32 0, i32 7
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i8* @sle64_to_cpu(i32 %373)
  %375 = call i32 @load_attribute_list(%struct.TYPE_57__* %360, %struct.TYPE_49__* %362, i32 %365, i64 %368, i8* %374)
  store i32 %375, i32* %11, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %359
  %378 = load %struct.inode*, %struct.inode** %3, align 8
  %379 = getelementptr inbounds %struct.inode, %struct.inode* %378, i32 0, i32 9
  %380 = load i32, i32* %379, align 8
  %381 = call i32 (i32, i8*, ...) @ntfs_error(i32 %380, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %1388

382:                                              ; preds = %359
  br label %435

383:                                              ; preds = %314
  %384 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %385 = bitcast %struct.TYPE_47__* %384 to i32*
  %386 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i64 @le16_to_cpu(i32 %390)
  %392 = getelementptr inbounds i32, i32* %385, i64 %391
  %393 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = call i64 @le32_to_cpu(i32 %397)
  %399 = getelementptr inbounds i32, i32* %392, i64 %398
  %400 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = inttoptr i64 %402 to i32*
  %404 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %403, i64 %407
  %409 = icmp ugt i32* %399, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %383
  %411 = load %struct.inode*, %struct.inode** %3, align 8
  %412 = getelementptr inbounds %struct.inode, %struct.inode* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (i32, i8*, ...) @ntfs_error(i32 %413, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %1388

415:                                              ; preds = %383
  %416 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %420 = bitcast %struct.TYPE_47__* %419 to i32*
  %421 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i64 @le16_to_cpu(i32 %425)
  %427 = getelementptr inbounds i32, i32* %420, i64 %426
  %428 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = call i64 @le32_to_cpu(i32 %432)
  %434 = call i32 @memcpy(i32 %418, i32* %427, i64 %433)
  br label %435

435:                                              ; preds = %415, %382
  br label %436

436:                                              ; preds = %435, %231
  br label %437

437:                                              ; preds = %436, %238
  %438 = load %struct.inode*, %struct.inode** %3, align 8
  %439 = getelementptr inbounds %struct.inode, %struct.inode* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 8
  %441 = call i64 @S_ISDIR(i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %1008

443:                                              ; preds = %437
  %444 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %445 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %444)
  %446 = load i8*, i8** @AT_INDEX_ROOT, align 8
  %447 = load i32*, i32** @I30, align 8
  %448 = load i32, i32* @CASE_SENSITIVE, align 4
  %449 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %450 = call i32 @ntfs_attr_lookup(i8* %446, i32* %447, i32 4, i32 %448, i32 0, i32* null, i32 0, %struct.TYPE_44__* %449)
  store i32 %450, i32* %11, align 4
  %451 = load i32, i32* %11, align 4
  %452 = call i64 @unlikely(i32 %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %465

454:                                              ; preds = %443
  %455 = load i32, i32* %11, align 4
  %456 = load i32, i32* @ENOENT, align 4
  %457 = sub nsw i32 0, %456
  %458 = icmp eq i32 %455, %457
  br i1 %458, label %459, label %464

459:                                              ; preds = %454
  %460 = load %struct.inode*, %struct.inode** %3, align 8
  %461 = getelementptr inbounds %struct.inode, %struct.inode* %460, i32 0, i32 9
  %462 = load i32, i32* %461, align 8
  %463 = call i32 (i32, i8*, ...) @ntfs_error(i32 %462, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %464

464:                                              ; preds = %459, %454
  br label %1388

465:                                              ; preds = %443
  %466 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %467 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_47__*, %struct.TYPE_47__** %467, align 8
  store %struct.TYPE_47__* %468, %struct.TYPE_47__** %8, align 8
  %469 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call i64 @unlikely(i32 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %465
  %475 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 4
  %478 = call i32 (i32, i8*, ...) @ntfs_error(i32 %477, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %1388

479:                                              ; preds = %465
  %480 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %479
  %485 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 4
  %488 = call i64 @le16_to_cpu(i32 %487)
  %489 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = call i64 @le16_to_cpu(i32 %493)
  %495 = icmp sge i64 %488, %494
  br label %496

496:                                              ; preds = %484, %479
  %497 = phi i1 [ false, %479 ], [ %495, %484 ]
  %498 = zext i1 %497 to i32
  %499 = call i64 @unlikely(i32 %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %502, i32 0, i32 5
  %504 = load i32, i32* %503, align 4
  %505 = call i32 (i32, i8*, ...) @ntfs_error(i32 %504, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0))
  br label %1388

506:                                              ; preds = %496
  %507 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %506
  %514 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %515 = call i32 @NInoSetCompressed(%struct.TYPE_43__* %514)
  br label %516

516:                                              ; preds = %513, %506
  %517 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %518 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %538

523:                                              ; preds = %516
  %524 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %525 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %523
  %531 = load %struct.inode*, %struct.inode** %3, align 8
  %532 = getelementptr inbounds %struct.inode, %struct.inode* %531, i32 0, i32 9
  %533 = load i32, i32* %532, align 8
  %534 = call i32 (i32, i8*, ...) @ntfs_error(i32 %533, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %1388

535:                                              ; preds = %523
  %536 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %537 = call i32 @NInoSetEncrypted(%struct.TYPE_43__* %536)
  br label %538

538:                                              ; preds = %535, %516
  %539 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %540 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %538
  %546 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %547 = call i32 @NInoSetSparse(%struct.TYPE_43__* %546)
  br label %548

548:                                              ; preds = %545, %538
  %549 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %550 = bitcast %struct.TYPE_47__* %549 to i32*
  %551 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %552 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %551, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = call i64 @le16_to_cpu(i32 %555)
  %557 = getelementptr inbounds i32, i32* %550, i64 %556
  %558 = bitcast i32* %557 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %558, %struct.TYPE_46__** %14, align 8
  %559 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %560 = bitcast %struct.TYPE_46__* %559 to i32*
  %561 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %562 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %561, i32 0, i32 2
  %563 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = call i64 @le32_to_cpu(i32 %565)
  %567 = getelementptr inbounds i32, i32* %560, i64 %566
  store i32* %567, i32** %15, align 8
  %568 = load i32*, i32** %15, align 8
  %569 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %570 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %569, i32 0, i32 1
  %571 = load i64, i64* %570, align 8
  %572 = inttoptr i64 %571 to i32*
  %573 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %572, i64 %576
  %578 = icmp ugt i32* %568, %577
  br i1 %578, label %579, label %584

579:                                              ; preds = %548
  %580 = load %struct.inode*, %struct.inode** %3, align 8
  %581 = getelementptr inbounds %struct.inode, %struct.inode* %580, i32 0, i32 9
  %582 = load i32, i32* %581, align 8
  %583 = call i32 (i32, i8*, ...) @ntfs_error(i32 %582, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %1388

584:                                              ; preds = %548
  %585 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %586 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %585, i32 0, i32 2
  %587 = bitcast %struct.TYPE_48__* %586 to i32*
  %588 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %588, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = call i64 @le32_to_cpu(i32 %591)
  %593 = getelementptr inbounds i32, i32* %587, i64 %592
  store i32* %593, i32** %16, align 8
  %594 = load i32*, i32** %16, align 8
  %595 = load i32*, i32** %15, align 8
  %596 = icmp ugt i32* %594, %595
  br i1 %596, label %597, label %602

597:                                              ; preds = %584
  %598 = load %struct.inode*, %struct.inode** %3, align 8
  %599 = getelementptr inbounds %struct.inode, %struct.inode* %598, i32 0, i32 9
  %600 = load i32, i32* %599, align 8
  %601 = call i32 (i32, i8*, ...) @ntfs_error(i32 %600, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %1388

602:                                              ; preds = %584
  %603 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %604 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @AT_FILE_NAME, align 8
  %607 = icmp ne i64 %605, %606
  br i1 %607, label %608, label %613

608:                                              ; preds = %602
  %609 = load %struct.inode*, %struct.inode** %3, align 8
  %610 = getelementptr inbounds %struct.inode, %struct.inode* %609, i32 0, i32 9
  %611 = load i32, i32* %610, align 8
  %612 = call i32 (i32, i8*, ...) @ntfs_error(i32 %611, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  br label %1388

613:                                              ; preds = %602
  %614 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %615 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %614, i32 0, i32 1
  %616 = load i64, i64* %615, align 8
  %617 = load i64, i64* @COLLATION_FILE_NAME, align 8
  %618 = icmp ne i64 %616, %617
  br i1 %618, label %619, label %624

619:                                              ; preds = %613
  %620 = load %struct.inode*, %struct.inode** %3, align 8
  %621 = getelementptr inbounds %struct.inode, %struct.inode* %620, i32 0, i32 9
  %622 = load i32, i32* %621, align 8
  %623 = call i32 (i32, i8*, ...) @ntfs_error(i32 %622, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  br label %1388

624:                                              ; preds = %613
  %625 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %626 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %625, i32 0, i32 1
  %627 = load i64, i64* %626, align 8
  %628 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %629 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %628, i32 0, i32 3
  %630 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %630, i32 0, i32 0
  store i64 %627, i64* %631, align 8
  %632 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %633 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %632, i32 0, i32 3
  %634 = load i32, i32* %633, align 8
  %635 = call i64 @le32_to_cpu(i32 %634)
  %636 = trunc i64 %635 to i32
  %637 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %638 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %637, i32 0, i32 3
  %639 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %639, i32 0, i32 1
  store i32 %636, i32* %640, align 8
  %641 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %642 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %641, i32 0, i32 3
  %643 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 8
  %646 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %647 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 8
  %651 = sub nsw i32 %650, 1
  %652 = and i32 %645, %651
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %664

654:                                              ; preds = %624
  %655 = load %struct.inode*, %struct.inode** %3, align 8
  %656 = getelementptr inbounds %struct.inode, %struct.inode* %655, i32 0, i32 9
  %657 = load i32, i32* %656, align 8
  %658 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %659 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %658, i32 0, i32 3
  %660 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 8
  %663 = call i32 (i32, i8*, ...) @ntfs_error(i32 %657, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %662)
  br label %1388

664:                                              ; preds = %624
  %665 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %666 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %665, i32 0, i32 3
  %667 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 8
  %670 = sext i32 %669 to i64
  %671 = load i64, i64* @PAGE_SIZE, align 8
  %672 = icmp sgt i64 %670, %671
  br i1 %672, label %673, label %686

673:                                              ; preds = %664
  %674 = load %struct.inode*, %struct.inode** %3, align 8
  %675 = getelementptr inbounds %struct.inode, %struct.inode* %674, i32 0, i32 9
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %678 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %677, i32 0, i32 3
  %679 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %679, i32 0, i32 1
  %681 = load i32, i32* %680, align 8
  %682 = load i64, i64* @PAGE_SIZE, align 8
  %683 = call i32 (i32, i8*, ...) @ntfs_error(i32 %676, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i64 0, i64 0), i32 %681, i64 %682)
  %684 = load i32, i32* @EOPNOTSUPP, align 4
  %685 = sub nsw i32 0, %684
  store i32 %685, i32* %11, align 4
  br label %1388

686:                                              ; preds = %664
  %687 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %688 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %687, i32 0, i32 3
  %689 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 8
  %692 = sext i32 %691 to i64
  %693 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %694 = icmp slt i64 %692, %693
  br i1 %694, label %695, label %708

695:                                              ; preds = %686
  %696 = load %struct.inode*, %struct.inode** %3, align 8
  %697 = getelementptr inbounds %struct.inode, %struct.inode* %696, i32 0, i32 9
  %698 = load i32, i32* %697, align 8
  %699 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %700 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %699, i32 0, i32 3
  %701 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %701, i32 0, i32 1
  %703 = load i32, i32* %702, align 8
  %704 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %705 = call i32 (i32, i8*, ...) @ntfs_error(i32 %698, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 %703, i64 %704)
  %706 = load i32, i32* @EOPNOTSUPP, align 4
  %707 = sub nsw i32 0, %706
  store i32 %707, i32* %11, align 4
  br label %1388

708:                                              ; preds = %686
  %709 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %710 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %709, i32 0, i32 3
  %711 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 8
  %714 = call i8* @ffs(i32 %713)
  %715 = getelementptr i8, i8* %714, i64 -1
  %716 = ptrtoint i8* %715 to i32
  %717 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %718 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %717, i32 0, i32 3
  %719 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %719, i32 0, i32 2
  store i32 %716, i32* %720, align 4
  %721 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %722 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %725 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %724, i32 0, i32 3
  %726 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 8
  %729 = icmp sle i32 %723, %728
  br i1 %729, label %730, label %745

730:                                              ; preds = %708
  %731 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %732 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %735 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %734, i32 0, i32 3
  %736 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %735, i32 0, i32 1
  %737 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %736, i32 0, i32 3
  store i32 %733, i32* %737, align 8
  %738 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %739 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 4
  %741 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %742 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %743, i32 0, i32 4
  store i32 %740, i32* %744, align 4
  br label %760

745:                                              ; preds = %708
  %746 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %747 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %746, i32 0, i32 3
  %748 = load i32, i32* %747, align 4
  %749 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %750 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %749, i32 0, i32 3
  %751 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %750, i32 0, i32 1
  %752 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %751, i32 0, i32 3
  store i32 %748, i32* %752, align 8
  %753 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %754 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %753, i32 0, i32 4
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %757 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %756, i32 0, i32 3
  %758 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %758, i32 0, i32 4
  store i32 %755, i32* %759, align 4
  br label %760

760:                                              ; preds = %745, %730
  %761 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %762 = call i32 @NInoSetMstProtected(%struct.TYPE_43__* %761)
  %763 = load i8*, i8** @AT_INDEX_ALLOCATION, align 8
  %764 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %765 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %764, i32 0, i32 5
  store i8* %763, i8** %765, align 8
  %766 = load i32*, i32** @I30, align 8
  %767 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %768 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %767, i32 0, i32 4
  store i32* %766, i32** %768, align 8
  %769 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %770 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %769, i32 0, i32 0
  store i32 4, i32* %770, align 8
  %771 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %772 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %771, i32 0, i32 2
  %773 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  %775 = load i32, i32* @LARGE_INDEX, align 4
  %776 = and i32 %774, %775
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %789, label %778

778:                                              ; preds = %760
  %779 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %780 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %779, i32 0, i32 2
  store i32 0, i32* %780, align 8
  %781 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %782 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %781, i32 0, i32 1
  store i32 0, i32* %782, align 4
  %783 = load %struct.inode*, %struct.inode** %3, align 8
  %784 = getelementptr inbounds %struct.inode, %struct.inode* %783, i32 0, i32 3
  store i32 0, i32* %784, align 8
  %785 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %786 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %785)
  %787 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %788 = call i32 @unmap_mft_record(%struct.TYPE_43__* %787)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  br label %999

789:                                              ; preds = %760
  %790 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %791 = call i32 @NInoSetIndexAllocPresent(%struct.TYPE_43__* %790)
  %792 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %793 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %792)
  %794 = load i8*, i8** @AT_INDEX_ALLOCATION, align 8
  %795 = load i32*, i32** @I30, align 8
  %796 = load i32, i32* @CASE_SENSITIVE, align 4
  %797 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %798 = call i32 @ntfs_attr_lookup(i8* %794, i32* %795, i32 4, i32 %796, i32 0, i32* null, i32 0, %struct.TYPE_44__* %797)
  store i32 %798, i32* %11, align 4
  %799 = load i32, i32* %11, align 4
  %800 = call i64 @unlikely(i32 %799)
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %802, label %818

802:                                              ; preds = %789
  %803 = load i32, i32* %11, align 4
  %804 = load i32, i32* @ENOENT, align 4
  %805 = sub nsw i32 0, %804
  %806 = icmp eq i32 %803, %805
  br i1 %806, label %807, label %812

807:                                              ; preds = %802
  %808 = load %struct.inode*, %struct.inode** %3, align 8
  %809 = getelementptr inbounds %struct.inode, %struct.inode* %808, i32 0, i32 9
  %810 = load i32, i32* %809, align 8
  %811 = call i32 (i32, i8*, ...) @ntfs_error(i32 %810, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i64 0, i64 0))
  br label %817

812:                                              ; preds = %802
  %813 = load %struct.inode*, %struct.inode** %3, align 8
  %814 = getelementptr inbounds %struct.inode, %struct.inode* %813, i32 0, i32 9
  %815 = load i32, i32* %814, align 8
  %816 = call i32 (i32, i8*, ...) @ntfs_error(i32 %815, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0))
  br label %817

817:                                              ; preds = %812, %807
  br label %1388

818:                                              ; preds = %789
  %819 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %820 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %819, i32 0, i32 0
  %821 = load %struct.TYPE_47__*, %struct.TYPE_47__** %820, align 8
  store %struct.TYPE_47__* %821, %struct.TYPE_47__** %8, align 8
  %822 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %823 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %831, label %826

826:                                              ; preds = %818
  %827 = load %struct.inode*, %struct.inode** %3, align 8
  %828 = getelementptr inbounds %struct.inode, %struct.inode* %827, i32 0, i32 9
  %829 = load i32, i32* %828, align 8
  %830 = call i32 (i32, i8*, ...) @ntfs_error(i32 %829, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  br label %1388

831:                                              ; preds = %818
  %832 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %833 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %832, i32 0, i32 5
  %834 = load i64, i64* %833, align 8
  %835 = icmp ne i64 %834, 0
  br i1 %835, label %836, label %848

836:                                              ; preds = %831
  %837 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %838 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %837, i32 0, i32 4
  %839 = load i32, i32* %838, align 4
  %840 = call i64 @le16_to_cpu(i32 %839)
  %841 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %842 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %841, i32 0, i32 2
  %843 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %842, i32 0, i32 1
  %844 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %843, i32 0, i32 6
  %845 = load i32, i32* %844, align 4
  %846 = call i64 @le16_to_cpu(i32 %845)
  %847 = icmp sge i64 %840, %846
  br label %848

848:                                              ; preds = %836, %831
  %849 = phi i1 [ false, %831 ], [ %847, %836 ]
  %850 = zext i1 %849 to i32
  %851 = call i64 @unlikely(i32 %850)
  %852 = icmp ne i64 %851, 0
  br i1 %852, label %853, label %858

853:                                              ; preds = %848
  %854 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %855 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %854, i32 0, i32 5
  %856 = load i32, i32* %855, align 4
  %857 = call i32 (i32, i8*, ...) @ntfs_error(i32 %856, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.28, i64 0, i64 0))
  br label %1388

858:                                              ; preds = %848
  %859 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %860 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  %862 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %863 = and i32 %861, %862
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %870

865:                                              ; preds = %858
  %866 = load %struct.inode*, %struct.inode** %3, align 8
  %867 = getelementptr inbounds %struct.inode, %struct.inode* %866, i32 0, i32 9
  %868 = load i32, i32* %867, align 8
  %869 = call i32 (i32, i8*, ...) @ntfs_error(i32 %868, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  br label %1388

870:                                              ; preds = %858
  %871 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %872 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %871, i32 0, i32 0
  %873 = load i32, i32* %872, align 8
  %874 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %875 = and i32 %873, %874
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %870
  %878 = load %struct.inode*, %struct.inode** %3, align 8
  %879 = getelementptr inbounds %struct.inode, %struct.inode* %878, i32 0, i32 9
  %880 = load i32, i32* %879, align 8
  %881 = call i32 (i32, i8*, ...) @ntfs_error(i32 %880, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  br label %1388

882:                                              ; preds = %870
  %883 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %884 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %883, i32 0, i32 0
  %885 = load i32, i32* %884, align 8
  %886 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %887 = and i32 %885, %886
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %889, label %894

889:                                              ; preds = %882
  %890 = load %struct.inode*, %struct.inode** %3, align 8
  %891 = getelementptr inbounds %struct.inode, %struct.inode* %890, i32 0, i32 9
  %892 = load i32, i32* %891, align 8
  %893 = call i32 (i32, i8*, ...) @ntfs_error(i32 %892, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  br label %1388

894:                                              ; preds = %882
  %895 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %896 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %895, i32 0, i32 2
  %897 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %896, i32 0, i32 1
  %898 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %897, i32 0, i32 4
  %899 = load i64, i64* %898, align 8
  %900 = icmp ne i64 %899, 0
  br i1 %900, label %901, label %906

901:                                              ; preds = %894
  %902 = load %struct.inode*, %struct.inode** %3, align 8
  %903 = getelementptr inbounds %struct.inode, %struct.inode* %902, i32 0, i32 9
  %904 = load i32, i32* %903, align 8
  %905 = call i32 (i32, i8*, ...) @ntfs_error(i32 %904, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0))
  br label %1388

906:                                              ; preds = %894
  %907 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %908 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %907, i32 0, i32 2
  %909 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %909, i32 0, i32 3
  %911 = load i32, i32* %910, align 4
  %912 = call i8* @sle64_to_cpu(i32 %911)
  %913 = ptrtoint i8* %912 to i32
  %914 = load %struct.inode*, %struct.inode** %3, align 8
  %915 = getelementptr inbounds %struct.inode, %struct.inode* %914, i32 0, i32 3
  store i32 %913, i32* %915, align 8
  %916 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %917 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %916, i32 0, i32 2
  %918 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %918, i32 0, i32 2
  %920 = load i32, i32* %919, align 8
  %921 = call i8* @sle64_to_cpu(i32 %920)
  %922 = ptrtoint i8* %921 to i32
  %923 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %924 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %923, i32 0, i32 1
  store i32 %922, i32* %924, align 4
  %925 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %926 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %925, i32 0, i32 2
  %927 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %927, i32 0, i32 1
  %929 = load i32, i32* %928, align 4
  %930 = call i8* @sle64_to_cpu(i32 %929)
  %931 = ptrtoint i8* %930 to i32
  %932 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %933 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %932, i32 0, i32 2
  store i32 %931, i32* %933, align 8
  %934 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %935 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %934)
  %936 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %937 = call i32 @unmap_mft_record(%struct.TYPE_43__* %936)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %938 = load %struct.inode*, %struct.inode** %3, align 8
  %939 = load i32, i32* @AT_BITMAP, align 4
  %940 = load i32*, i32** @I30, align 8
  %941 = call %struct.inode* @ntfs_attr_iget(%struct.inode* %938, i32 %939, i32* %940, i32 4)
  store %struct.inode* %941, %struct.inode** %6, align 8
  %942 = load %struct.inode*, %struct.inode** %6, align 8
  %943 = call i64 @IS_ERR(%struct.inode* %942)
  %944 = icmp ne i64 %943, 0
  br i1 %944, label %945, label %952

945:                                              ; preds = %906
  %946 = load %struct.inode*, %struct.inode** %3, align 8
  %947 = getelementptr inbounds %struct.inode, %struct.inode* %946, i32 0, i32 9
  %948 = load i32, i32* %947, align 8
  %949 = call i32 (i32, i8*, ...) @ntfs_error(i32 %948, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  %950 = load %struct.inode*, %struct.inode** %6, align 8
  %951 = call i32 @PTR_ERR(%struct.inode* %950)
  store i32 %951, i32* %11, align 4
  br label %1388

952:                                              ; preds = %906
  %953 = load %struct.inode*, %struct.inode** %6, align 8
  %954 = call %struct.TYPE_43__* @NTFS_I(%struct.inode* %953)
  store %struct.TYPE_43__* %954, %struct.TYPE_43__** %13, align 8
  %955 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %956 = call i64 @NInoCompressed(%struct.TYPE_43__* %955)
  %957 = icmp ne i64 %956, 0
  br i1 %957, label %966, label %958

958:                                              ; preds = %952
  %959 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %960 = call i64 @NInoEncrypted(%struct.TYPE_43__* %959)
  %961 = icmp ne i64 %960, 0
  br i1 %961, label %966, label %962

962:                                              ; preds = %958
  %963 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %964 = call i64 @NInoSparse(%struct.TYPE_43__* %963)
  %965 = icmp ne i64 %964, 0
  br i1 %965, label %966, label %971

966:                                              ; preds = %962, %958, %952
  %967 = load %struct.inode*, %struct.inode** %3, align 8
  %968 = getelementptr inbounds %struct.inode, %struct.inode* %967, i32 0, i32 9
  %969 = load i32, i32* %968, align 8
  %970 = call i32 (i32, i8*, ...) @ntfs_error(i32 %969, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0))
  br label %1385

971:                                              ; preds = %962
  %972 = load %struct.inode*, %struct.inode** %6, align 8
  %973 = call i32 @i_size_read(%struct.inode* %972)
  store i32 %973, i32* %12, align 4
  %974 = load i32, i32* %12, align 4
  %975 = shl i32 %974, 3
  %976 = load %struct.inode*, %struct.inode** %3, align 8
  %977 = getelementptr inbounds %struct.inode, %struct.inode* %976, i32 0, i32 3
  %978 = load i32, i32* %977, align 8
  %979 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %980 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %979, i32 0, i32 3
  %981 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %981, i32 0, i32 2
  %983 = load i32, i32* %982, align 4
  %984 = ashr i32 %978, %983
  %985 = icmp slt i32 %975, %984
  br i1 %985, label %986, label %996

986:                                              ; preds = %971
  %987 = load %struct.inode*, %struct.inode** %3, align 8
  %988 = getelementptr inbounds %struct.inode, %struct.inode* %987, i32 0, i32 9
  %989 = load i32, i32* %988, align 8
  %990 = load i32, i32* %12, align 4
  %991 = shl i32 %990, 3
  %992 = load %struct.inode*, %struct.inode** %3, align 8
  %993 = getelementptr inbounds %struct.inode, %struct.inode* %992, i32 0, i32 3
  %994 = load i32, i32* %993, align 8
  %995 = call i32 (i32, i8*, ...) @ntfs_error(i32 %989, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0), i32 %991, i32 %994)
  br label %1385

996:                                              ; preds = %971
  %997 = load %struct.inode*, %struct.inode** %6, align 8
  %998 = call i32 @iput(%struct.inode* %997)
  br label %999

999:                                              ; preds = %996, %778
  %1000 = load %struct.inode*, %struct.inode** %3, align 8
  %1001 = getelementptr inbounds %struct.inode, %struct.inode* %1000, i32 0, i32 8
  store i32* @ntfs_dir_inode_ops, i32** %1001, align 8
  %1002 = load %struct.inode*, %struct.inode** %3, align 8
  %1003 = getelementptr inbounds %struct.inode, %struct.inode* %1002, i32 0, i32 7
  store i32* @ntfs_dir_ops, i32** %1003, align 8
  %1004 = load %struct.inode*, %struct.inode** %3, align 8
  %1005 = getelementptr inbounds %struct.inode, %struct.inode* %1004, i32 0, i32 6
  %1006 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1005, align 8
  %1007 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1006, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %1007, align 8
  br label %1353

1008:                                             ; preds = %437
  %1009 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1010 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %1009)
  %1011 = load i8*, i8** @AT_DATA, align 8
  %1012 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1013 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1012, i32 0, i32 5
  store i8* %1011, i8** %1013, align 8
  %1014 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1015 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1014, i32 0, i32 4
  store i32* null, i32** %1015, align 8
  %1016 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1017 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1016, i32 0, i32 0
  store i32 0, i32* %1017, align 8
  %1018 = load i8*, i8** @AT_DATA, align 8
  %1019 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1020 = call i32 @ntfs_attr_lookup(i8* %1018, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %1019)
  store i32 %1020, i32* %11, align 4
  %1021 = load i32, i32* %11, align 4
  %1022 = call i64 @unlikely(i32 %1021)
  %1023 = icmp ne i64 %1022, 0
  br i1 %1023, label %1024, label %1057

1024:                                             ; preds = %1008
  %1025 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1026 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1025, i32 0, i32 2
  store i32 0, i32* %1026, align 8
  %1027 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1028 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1027, i32 0, i32 1
  store i32 0, i32* %1028, align 4
  %1029 = load %struct.inode*, %struct.inode** %3, align 8
  %1030 = getelementptr inbounds %struct.inode, %struct.inode* %1029, i32 0, i32 3
  store i32 0, i32* %1030, align 8
  %1031 = load i32, i32* %11, align 4
  %1032 = load i32, i32* @ENOENT, align 4
  %1033 = sub nsw i32 0, %1032
  %1034 = icmp ne i32 %1031, %1033
  br i1 %1034, label %1035, label %1040

1035:                                             ; preds = %1024
  %1036 = load %struct.inode*, %struct.inode** %3, align 8
  %1037 = getelementptr inbounds %struct.inode, %struct.inode* %1036, i32 0, i32 9
  %1038 = load i32, i32* %1037, align 8
  %1039 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1038, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0))
  br label %1388

1040:                                             ; preds = %1024
  %1041 = load %struct.inode*, %struct.inode** %3, align 8
  %1042 = getelementptr inbounds %struct.inode, %struct.inode* %1041, i32 0, i32 0
  %1043 = load i64, i64* %1042, align 8
  %1044 = load i64, i64* @FILE_Secure, align 8
  %1045 = icmp eq i64 %1043, %1044
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1040
  br label %1321

1047:                                             ; preds = %1040
  %1048 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1049 = call i64 @ntfs_is_extended_system_file(%struct.TYPE_44__* %1048)
  %1050 = icmp sgt i64 %1049, 0
  br i1 %1050, label %1051, label %1052

1051:                                             ; preds = %1047
  br label %1321

1052:                                             ; preds = %1047
  %1053 = load %struct.inode*, %struct.inode** %3, align 8
  %1054 = getelementptr inbounds %struct.inode, %struct.inode* %1053, i32 0, i32 9
  %1055 = load i32, i32* %1054, align 8
  %1056 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1055, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0))
  br label %1388

1057:                                             ; preds = %1008
  %1058 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1059 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1058, i32 0, i32 0
  %1060 = load %struct.TYPE_47__*, %struct.TYPE_47__** %1059, align 8
  store %struct.TYPE_47__* %1060, %struct.TYPE_47__** %8, align 8
  %1061 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1062 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1061, i32 0, i32 0
  %1063 = load i32, i32* %1062, align 8
  %1064 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1065 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %1066 = or i32 %1064, %1065
  %1067 = and i32 %1063, %1066
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1116

1069:                                             ; preds = %1057
  %1070 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1071 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1070, i32 0, i32 0
  %1072 = load i32, i32* %1071, align 8
  %1073 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1074 = and i32 %1072, %1073
  %1075 = icmp ne i32 %1074, 0
  br i1 %1075, label %1076, label %1105

1076:                                             ; preds = %1069
  %1077 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1078 = call i32 @NInoSetCompressed(%struct.TYPE_43__* %1077)
  %1079 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1080 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1079, i32 0, i32 1
  %1081 = load i32, i32* %1080, align 4
  %1082 = icmp sgt i32 %1081, 4096
  br i1 %1082, label %1083, label %1091

1083:                                             ; preds = %1076
  %1084 = load %struct.inode*, %struct.inode** %3, align 8
  %1085 = getelementptr inbounds %struct.inode, %struct.inode* %1084, i32 0, i32 9
  %1086 = load i32, i32* %1085, align 8
  %1087 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1088 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1087, i32 0, i32 1
  %1089 = load i32, i32* %1088, align 4
  %1090 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1086, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.38, i64 0, i64 0), i32 %1089)
  br label %1388

1091:                                             ; preds = %1076
  %1092 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1093 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1092, i32 0, i32 0
  %1094 = load i32, i32* %1093, align 8
  %1095 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1096 = and i32 %1094, %1095
  %1097 = load i32, i32* @ATTR_IS_COMPRESSED, align 4
  %1098 = icmp ne i32 %1096, %1097
  br i1 %1098, label %1099, label %1104

1099:                                             ; preds = %1091
  %1100 = load %struct.inode*, %struct.inode** %3, align 8
  %1101 = getelementptr inbounds %struct.inode, %struct.inode* %1100, i32 0, i32 9
  %1102 = load i32, i32* %1101, align 8
  %1103 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  br label %1388

1104:                                             ; preds = %1091
  br label %1105

1105:                                             ; preds = %1104, %1069
  %1106 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1107 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1106, i32 0, i32 0
  %1108 = load i32, i32* %1107, align 8
  %1109 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %1110 = and i32 %1108, %1109
  %1111 = icmp ne i32 %1110, 0
  br i1 %1111, label %1112, label %1115

1112:                                             ; preds = %1105
  %1113 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1114 = call i32 @NInoSetSparse(%struct.TYPE_43__* %1113)
  br label %1115

1115:                                             ; preds = %1112, %1105
  br label %1116

1116:                                             ; preds = %1115, %1057
  %1117 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1118 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1117, i32 0, i32 0
  %1119 = load i32, i32* %1118, align 8
  %1120 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %1121 = and i32 %1119, %1120
  %1122 = icmp ne i32 %1121, 0
  br i1 %1122, label %1123, label %1135

1123:                                             ; preds = %1116
  %1124 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1125 = call i64 @NInoCompressed(%struct.TYPE_43__* %1124)
  %1126 = icmp ne i64 %1125, 0
  br i1 %1126, label %1127, label %1132

1127:                                             ; preds = %1123
  %1128 = load %struct.inode*, %struct.inode** %3, align 8
  %1129 = getelementptr inbounds %struct.inode, %struct.inode* %1128, i32 0, i32 9
  %1130 = load i32, i32* %1129, align 8
  %1131 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0))
  br label %1388

1132:                                             ; preds = %1123
  %1133 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1134 = call i32 @NInoSetEncrypted(%struct.TYPE_43__* %1133)
  br label %1135

1135:                                             ; preds = %1132, %1116
  %1136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1136, i32 0, i32 1
  %1138 = load i32, i32* %1137, align 4
  %1139 = icmp ne i32 %1138, 0
  br i1 %1139, label %1140, label %1281

1140:                                             ; preds = %1135
  %1141 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1142 = call i32 @NInoSetNonResident(%struct.TYPE_43__* %1141)
  %1143 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1144 = call i64 @NInoCompressed(%struct.TYPE_43__* %1143)
  %1145 = icmp ne i64 %1144, 0
  br i1 %1145, label %1150, label %1146

1146:                                             ; preds = %1140
  %1147 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1148 = call i64 @NInoSparse(%struct.TYPE_43__* %1147)
  %1149 = icmp ne i64 %1148, 0
  br i1 %1149, label %1150, label %1241

1150:                                             ; preds = %1146, %1140
  %1151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1152 = call i64 @NInoCompressed(%struct.TYPE_43__* %1151)
  %1153 = icmp ne i64 %1152, 0
  br i1 %1153, label %1154, label %1173

1154:                                             ; preds = %1150
  %1155 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1156 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1155, i32 0, i32 2
  %1157 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1157, i32 0, i32 0
  %1159 = load i32, i32* %1158, align 8
  %1160 = icmp ne i32 %1159, 4
  br i1 %1160, label %1161, label %1173

1161:                                             ; preds = %1154
  %1162 = load %struct.inode*, %struct.inode** %3, align 8
  %1163 = getelementptr inbounds %struct.inode, %struct.inode* %1162, i32 0, i32 9
  %1164 = load i32, i32* %1163, align 8
  %1165 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1166 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1165, i32 0, i32 2
  %1167 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1167, i32 0, i32 0
  %1169 = load i32, i32* %1168, align 8
  %1170 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1164, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0), i32 %1169)
  %1171 = load i32, i32* @EOPNOTSUPP, align 4
  %1172 = sub nsw i32 0, %1171
  store i32 %1172, i32* %11, align 4
  br label %1388

1173:                                             ; preds = %1154, %1150
  %1174 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1175 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1174, i32 0, i32 2
  %1176 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1175, i32 0, i32 1
  %1177 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1176, i32 0, i32 0
  %1178 = load i32, i32* %1177, align 8
  %1179 = icmp ne i32 %1178, 0
  br i1 %1179, label %1180, label %1216

1180:                                             ; preds = %1173
  %1181 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1182 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1181, i32 0, i32 2
  %1183 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1183, i32 0, i32 0
  %1185 = load i32, i32* %1184, align 8
  %1186 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1187 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1186, i32 0, i32 2
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1185, %1188
  %1190 = shl i32 1, %1189
  %1191 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1192 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1191, i32 0, i32 3
  %1193 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1192, i32 0, i32 0
  %1194 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1193, i32 0, i32 0
  store i32 %1190, i32* %1194, align 8
  %1195 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1196 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1195, i32 0, i32 3
  %1197 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1196, i32 0, i32 0
  %1198 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1197, i32 0, i32 0
  %1199 = load i32, i32* %1198, align 8
  %1200 = call i8* @ffs(i32 %1199)
  %1201 = getelementptr i8, i8* %1200, i64 -1
  %1202 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1203 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1202, i32 0, i32 3
  %1204 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1204, i32 0, i32 3
  store i8* %1201, i8** %1205, align 8
  %1206 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1207 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1206, i32 0, i32 2
  %1208 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1208, i32 0, i32 0
  %1210 = load i32, i32* %1209, align 8
  %1211 = shl i32 1, %1210
  %1212 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1212, i32 0, i32 3
  %1214 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1213, i32 0, i32 0
  %1215 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1214, i32 0, i32 1
  store i32 %1211, i32* %1215, align 4
  br label %1229

1216:                                             ; preds = %1173
  %1217 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1218 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1217, i32 0, i32 3
  %1219 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1219, i32 0, i32 0
  store i32 0, i32* %1220, align 8
  %1221 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1222 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1221, i32 0, i32 3
  %1223 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1222, i32 0, i32 0
  %1224 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1223, i32 0, i32 3
  store i8* null, i8** %1224, align 8
  %1225 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1226 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1225, i32 0, i32 3
  %1227 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1226, i32 0, i32 0
  %1228 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1227, i32 0, i32 1
  store i32 0, i32* %1228, align 4
  br label %1229

1229:                                             ; preds = %1216, %1180
  %1230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1231 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1230, i32 0, i32 2
  %1232 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1232, i32 0, i32 5
  %1234 = load i32, i32* %1233, align 8
  %1235 = call i8* @sle64_to_cpu(i32 %1234)
  %1236 = ptrtoint i8* %1235 to i32
  %1237 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1238 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1237, i32 0, i32 3
  %1239 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1238, i32 0, i32 0
  %1240 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1239, i32 0, i32 2
  store i32 %1236, i32* %1240, align 8
  br label %1241

1241:                                             ; preds = %1229, %1146
  %1242 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1243 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1242, i32 0, i32 2
  %1244 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1243, i32 0, i32 1
  %1245 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1244, i32 0, i32 4
  %1246 = load i64, i64* %1245, align 8
  %1247 = icmp ne i64 %1246, 0
  br i1 %1247, label %1248, label %1253

1248:                                             ; preds = %1241
  %1249 = load %struct.inode*, %struct.inode** %3, align 8
  %1250 = getelementptr inbounds %struct.inode, %struct.inode* %1249, i32 0, i32 9
  %1251 = load i32, i32* %1250, align 8
  %1252 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1251, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0))
  br label %1388

1253:                                             ; preds = %1241
  %1254 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1255 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1254, i32 0, i32 2
  %1256 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1255, i32 0, i32 1
  %1257 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1256, i32 0, i32 3
  %1258 = load i32, i32* %1257, align 4
  %1259 = call i8* @sle64_to_cpu(i32 %1258)
  %1260 = ptrtoint i8* %1259 to i32
  %1261 = load %struct.inode*, %struct.inode** %3, align 8
  %1262 = getelementptr inbounds %struct.inode, %struct.inode* %1261, i32 0, i32 3
  store i32 %1260, i32* %1262, align 8
  %1263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1263, i32 0, i32 2
  %1265 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1264, i32 0, i32 1
  %1266 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1265, i32 0, i32 2
  %1267 = load i32, i32* %1266, align 8
  %1268 = call i8* @sle64_to_cpu(i32 %1267)
  %1269 = ptrtoint i8* %1268 to i32
  %1270 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1271 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1270, i32 0, i32 1
  store i32 %1269, i32* %1271, align 4
  %1272 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1273 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1272, i32 0, i32 2
  %1274 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1274, i32 0, i32 1
  %1276 = load i32, i32* %1275, align 4
  %1277 = call i8* @sle64_to_cpu(i32 %1276)
  %1278 = ptrtoint i8* %1277 to i32
  %1279 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1280 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1279, i32 0, i32 2
  store i32 %1278, i32* %1280, align 8
  br label %1320

1281:                                             ; preds = %1135
  %1282 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1283 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1282, i32 0, i32 2
  %1284 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1283, i32 0, i32 0
  %1285 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1284, i32 0, i32 1
  %1286 = load i32, i32* %1285, align 4
  %1287 = call i64 @le32_to_cpu(i32 %1286)
  %1288 = trunc i64 %1287 to i32
  %1289 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1290 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1289, i32 0, i32 1
  store i32 %1288, i32* %1290, align 4
  %1291 = load %struct.inode*, %struct.inode** %3, align 8
  %1292 = getelementptr inbounds %struct.inode, %struct.inode* %1291, i32 0, i32 3
  store i32 %1288, i32* %1292, align 8
  %1293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1294 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1293, i32 0, i32 3
  %1295 = load i32, i32* %1294, align 8
  %1296 = call i64 @le32_to_cpu(i32 %1295)
  %1297 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1298 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1297, i32 0, i32 2
  %1299 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1298, i32 0, i32 0
  %1300 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1299, i32 0, i32 0
  %1301 = load i32, i32* %1300, align 8
  %1302 = call i64 @le16_to_cpu(i32 %1301)
  %1303 = sub nsw i64 %1296, %1302
  %1304 = trunc i64 %1303 to i32
  %1305 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1306 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1305, i32 0, i32 2
  store i32 %1304, i32* %1306, align 8
  %1307 = load %struct.inode*, %struct.inode** %3, align 8
  %1308 = getelementptr inbounds %struct.inode, %struct.inode* %1307, i32 0, i32 3
  %1309 = load i32, i32* %1308, align 8
  %1310 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1311 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1310, i32 0, i32 2
  %1312 = load i32, i32* %1311, align 8
  %1313 = icmp sgt i32 %1309, %1312
  br i1 %1313, label %1314, label %1319

1314:                                             ; preds = %1281
  %1315 = load %struct.inode*, %struct.inode** %3, align 8
  %1316 = getelementptr inbounds %struct.inode, %struct.inode* %1315, i32 0, i32 9
  %1317 = load i32, i32* %1316, align 8
  %1318 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1317, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i64 0, i64 0))
  br label %1388

1319:                                             ; preds = %1281
  br label %1320

1320:                                             ; preds = %1319, %1253
  br label %1321

1321:                                             ; preds = %1320, %1051, %1046
  %1322 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1323 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %1322)
  %1324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1325 = call i32 @unmap_mft_record(%struct.TYPE_43__* %1324)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %1326 = load %struct.inode*, %struct.inode** %3, align 8
  %1327 = getelementptr inbounds %struct.inode, %struct.inode* %1326, i32 0, i32 8
  store i32* @ntfs_file_inode_ops, i32** %1327, align 8
  %1328 = load %struct.inode*, %struct.inode** %3, align 8
  %1329 = getelementptr inbounds %struct.inode, %struct.inode* %1328, i32 0, i32 7
  store i32* @ntfs_file_ops, i32** %1329, align 8
  %1330 = load %struct.inode*, %struct.inode** %3, align 8
  %1331 = getelementptr inbounds %struct.inode, %struct.inode* %1330, i32 0, i32 6
  %1332 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1331, align 8
  %1333 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1332, i32 0, i32 0
  store i32* @ntfs_normal_aops, i32** %1333, align 8
  %1334 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1335 = call i64 @NInoMstProtected(%struct.TYPE_43__* %1334)
  %1336 = icmp ne i64 %1335, 0
  br i1 %1336, label %1337, label %1342

1337:                                             ; preds = %1321
  %1338 = load %struct.inode*, %struct.inode** %3, align 8
  %1339 = getelementptr inbounds %struct.inode, %struct.inode* %1338, i32 0, i32 6
  %1340 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1339, align 8
  %1341 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1340, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %1341, align 8
  br label %1352

1342:                                             ; preds = %1321
  %1343 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1344 = call i64 @NInoCompressed(%struct.TYPE_43__* %1343)
  %1345 = icmp ne i64 %1344, 0
  br i1 %1345, label %1346, label %1351

1346:                                             ; preds = %1342
  %1347 = load %struct.inode*, %struct.inode** %3, align 8
  %1348 = getelementptr inbounds %struct.inode, %struct.inode* %1347, i32 0, i32 6
  %1349 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1348, align 8
  %1350 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1349, i32 0, i32 0
  store i32* @ntfs_compressed_aops, i32** %1350, align 8
  br label %1351

1351:                                             ; preds = %1346, %1342
  br label %1352

1352:                                             ; preds = %1351, %1337
  br label %1353

1353:                                             ; preds = %1352, %999
  %1354 = load %struct.inode*, %struct.inode** %3, align 8
  %1355 = getelementptr inbounds %struct.inode, %struct.inode* %1354, i32 0, i32 5
  %1356 = load i32, i32* %1355, align 8
  %1357 = call i64 @S_ISREG(i32 %1356)
  %1358 = icmp ne i64 %1357, 0
  br i1 %1358, label %1359, label %1376

1359:                                             ; preds = %1353
  %1360 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1361 = call i64 @NInoCompressed(%struct.TYPE_43__* %1360)
  %1362 = icmp ne i64 %1361, 0
  br i1 %1362, label %1367, label %1363

1363:                                             ; preds = %1359
  %1364 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1365 = call i64 @NInoSparse(%struct.TYPE_43__* %1364)
  %1366 = icmp ne i64 %1365, 0
  br i1 %1366, label %1367, label %1376

1367:                                             ; preds = %1363, %1359
  %1368 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1369 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1368, i32 0, i32 3
  %1370 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1369, i32 0, i32 0
  %1371 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1370, i32 0, i32 2
  %1372 = load i32, i32* %1371, align 8
  %1373 = ashr i32 %1372, 9
  %1374 = load %struct.inode*, %struct.inode** %3, align 8
  %1375 = getelementptr inbounds %struct.inode, %struct.inode* %1374, i32 0, i32 4
  store i32 %1373, i32* %1375, align 4
  br label %1383

1376:                                             ; preds = %1363, %1353
  %1377 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1378 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1377, i32 0, i32 2
  %1379 = load i32, i32* %1378, align 8
  %1380 = ashr i32 %1379, 9
  %1381 = load %struct.inode*, %struct.inode** %3, align 8
  %1382 = getelementptr inbounds %struct.inode, %struct.inode* %1381, i32 0, i32 4
  store i32 %1380, i32* %1382, align 4
  br label %1383

1383:                                             ; preds = %1376, %1367
  %1384 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %1432

1385:                                             ; preds = %986, %966
  %1386 = load %struct.inode*, %struct.inode** %6, align 8
  %1387 = call i32 @iput(%struct.inode* %1386)
  br label %1388

1388:                                             ; preds = %1385, %1314, %1248, %1161, %1127, %1099, %1083, %1052, %1035, %945, %901, %889, %877, %865, %853, %826, %817, %695, %673, %654, %619, %608, %597, %579, %530, %501, %474, %464, %410, %377, %346, %328, %307, %279, %255, %226, %178, %82, %72, %62
  %1389 = load i32, i32* %11, align 4
  %1390 = icmp ne i32 %1389, 0
  br i1 %1390, label %1394, label %1391

1391:                                             ; preds = %1388
  %1392 = load i32, i32* @EIO, align 4
  %1393 = sub nsw i32 0, %1392
  store i32 %1393, i32* %11, align 4
  br label %1394

1394:                                             ; preds = %1391, %1388
  %1395 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1396 = icmp ne %struct.TYPE_44__* %1395, null
  br i1 %1396, label %1397, label %1400

1397:                                             ; preds = %1394
  %1398 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1399 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %1398)
  br label %1400

1400:                                             ; preds = %1397, %1394
  %1401 = load %struct.inode*, %struct.inode** %7, align 8
  %1402 = icmp ne %struct.inode* %1401, null
  br i1 %1402, label %1403, label %1406

1403:                                             ; preds = %1400
  %1404 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1405 = call i32 @unmap_mft_record(%struct.TYPE_43__* %1404)
  br label %1406

1406:                                             ; preds = %1403, %1400
  br label %1407

1407:                                             ; preds = %1406, %53
  %1408 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1409 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1408, i32 0, i32 5
  %1410 = load i32, i32* %1409, align 4
  %1411 = load i32, i32* %11, align 4
  %1412 = load %struct.inode*, %struct.inode** %3, align 8
  %1413 = getelementptr inbounds %struct.inode, %struct.inode* %1412, i32 0, i32 0
  %1414 = load i64, i64* %1413, align 8
  %1415 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1410, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.45, i64 0, i64 0), i32 %1411, i64 %1414)
  %1416 = load %struct.inode*, %struct.inode** %3, align 8
  %1417 = call i32 @make_bad_inode(%struct.inode* %1416)
  %1418 = load i32, i32* %11, align 4
  %1419 = load i32, i32* @EOPNOTSUPP, align 4
  %1420 = sub nsw i32 0, %1419
  %1421 = icmp ne i32 %1418, %1420
  br i1 %1421, label %1422, label %1430

1422:                                             ; preds = %1407
  %1423 = load i32, i32* %11, align 4
  %1424 = load i32, i32* @ENOMEM, align 4
  %1425 = sub nsw i32 0, %1424
  %1426 = icmp ne i32 %1423, %1425
  br i1 %1426, label %1427, label %1430

1427:                                             ; preds = %1422
  %1428 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1429 = call i32 @NVolSetErrors(%struct.TYPE_57__* %1428)
  br label %1430

1430:                                             ; preds = %1427, %1422, %1407
  %1431 = load i32, i32* %11, align 4
  store i32 %1431, i32* %2, align 4
  br label %1432

1432:                                             ; preds = %1430, %1383
  %1433 = load i32, i32* %2, align 4
  ret i32 %1433
}

declare dso_local %struct.TYPE_57__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_43__* @NTFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_43__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_44__* @ntfs_attr_get_search_ctx(%struct.TYPE_43__*, %struct.inode*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i64 @IS_RDONLY(%struct.inode*) #1

declare dso_local i32 @ntfs_attr_lookup(i8*, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_44__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ntfs2utc(i32) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__*) #1

declare dso_local i32 @NInoSetAttrList(%struct.TYPE_43__*) #1

declare dso_local i32 @ntfs_warning(i32, i8*, i64) #1

declare dso_local i64 @ntfs_attr_size(%struct.TYPE_47__*) #1

declare dso_local i32 @ntfs_malloc_nofs(i64) #1

declare dso_local i32 @NInoSetAttrListNonResident(%struct.TYPE_43__*) #1

declare dso_local %struct.inode* @ntfs_mapping_pairs_decompress(%struct.TYPE_57__*, %struct.TYPE_47__*, i32*) #1

declare dso_local i32 @load_attribute_list(%struct.TYPE_57__*, %struct.TYPE_49__*, i32, i64, i8*) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @NInoSetCompressed(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetEncrypted(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetSparse(%struct.TYPE_43__*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @NInoSetMstProtected(%struct.TYPE_43__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetIndexAllocPresent(%struct.TYPE_43__*) #1

declare dso_local %struct.inode* @ntfs_attr_iget(%struct.inode*, i32, i32*, i32) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_43__*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @ntfs_is_extended_system_file(%struct.TYPE_44__*) #1

declare dso_local i32 @NInoSetNonResident(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoMstProtected(%struct.TYPE_43__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_57__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
