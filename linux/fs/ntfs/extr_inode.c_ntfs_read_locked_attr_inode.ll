; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_attr_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_read_locked_attr_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_33__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i64, i32, i32, i32, i64, %struct.TYPE_36__, %struct.TYPE_35__, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_38__* }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_32__, i32, i64, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@AT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [127 x i8] c"Found compressed non-data or named data attribute.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Found compressed attribute but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@ATTR_IS_COMPRESSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Found unknown compression method.\00", align 1
@AT_INDEX_ROOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [131 x i8] c"Found mst protected attribute but the attribute is %s.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Found encrypted and compressed data.\00", align 1
@.str.8 = private unnamed_addr constant [138 x i8] c"Found mst protected attribute but the attribute is encrypted.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Found encrypted non-data attribute.\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Attribute name is placed after the attribute value.\00", align 1
@.str.11 = private unnamed_addr constant [137 x i8] c"Found mst protected attribute but the attribute is resident.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Resident attribute is corrupt (size exceeds allocation).\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Attribute name is placed after the mapping pairs array.\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [51 x i8] c"First extent of attribute has non-zero lowest_vcn.\00", align 1
@ntfs_normal_aops = common dso_local global i32 0, align 4
@ntfs_mst_aops = common dso_local global i32 0, align 4
@ntfs_compressed_aops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [161 x i8] c"Failed with error code %i while reading attribute inode (mft_no 0x%lx, type 0x%x, name_len %i).  Marking corrupt inode and base inode 0x%lx as bad.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*)* @ntfs_read_locked_attr_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_attr_inode(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_37__* @NTFS_SB(i32 %15)
  store %struct.TYPE_37__* %16, %struct.TYPE_37__** %6, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @ntfs_init_big_inode(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_38__* @NTFS_I(%struct.inode* %23)
  store %struct.TYPE_38__* %24, %struct.TYPE_38__** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.TYPE_38__* @NTFS_I(%struct.inode* %25)
  store %struct.TYPE_38__* %26, %struct.TYPE_38__** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_nlink(%struct.inode* %37, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @S_IFMT, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %73 = call i32* @map_mft_record(%struct.TYPE_38__* %72)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @IS_ERR(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %2
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %12, align 4
  br label %582

80:                                               ; preds = %2
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call %struct.TYPE_28__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__* %81, i32* %82)
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %11, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %85 = icmp ne %struct.TYPE_28__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %567

89:                                               ; preds = %80
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @CASE_SENSITIVE, align 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = call i32 @ntfs_attr_lookup(i64 %92, i32 %95, i64 %98, i32 %99, i32 0, i32* null, i32 0, %struct.TYPE_28__* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %567

106:                                              ; preds = %89
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  store %struct.TYPE_29__* %109, %struct.TYPE_29__** %10, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %114 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %207

118:                                              ; preds = %106
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %176

125:                                              ; preds = %118
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %127 = call i32 @NInoSetCompressed(%struct.TYPE_38__* %126)
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AT_DATA, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %125
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AT_DATA, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139, %125
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32, i8*, ...) @ntfs_error(i32 %147, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0))
  br label %567

149:                                              ; preds = %139, %133
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 4096
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.inode*, %struct.inode** %5, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @ntfs_error(i32 %157, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  br label %567

162:                                              ; preds = %149
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @ATTR_IS_COMPRESSED, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @ntfs_error(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %567

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175, %118
  %177 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %178 = call i64 @NInoMstProtected(%struct.TYPE_38__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AT_INDEX_ROOT, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %180
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %191 = call i64 @NInoCompressed(%struct.TYPE_38__* %190)
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %195 = call i32 (i32, i8*, ...) @ntfs_error(i32 %189, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.4, i64 0, i64 0), i8* %194)
  br label %567

196:                                              ; preds = %180, %176
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %205 = call i32 @NInoSetSparse(%struct.TYPE_38__* %204)
  br label %206

206:                                              ; preds = %203, %196
  br label %207

207:                                              ; preds = %206, %106
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %252

214:                                              ; preds = %207
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %216 = call i64 @NInoCompressed(%struct.TYPE_38__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load %struct.inode*, %struct.inode** %5, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i32, i8*, ...) @ntfs_error(i32 %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %567

223:                                              ; preds = %214
  %224 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %225 = call i64 @NInoMstProtected(%struct.TYPE_38__* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @AT_INDEX_ROOT, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.inode*, %struct.inode** %5, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, ...) @ntfs_error(i32 %236, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.8, i64 0, i64 0))
  br label %567

238:                                              ; preds = %227, %223
  %239 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @AT_DATA, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %238
  %245 = load %struct.inode*, %struct.inode** %5, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i8*, ...) @ntfs_error(i32 %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %567

249:                                              ; preds = %238
  %250 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %251 = call i32 @NInoSetEncrypted(%struct.TYPE_38__* %250)
  br label %252

252:                                              ; preds = %249, %207
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %332, label %257

257:                                              ; preds = %252
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %257
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @le16_to_cpu(i32 %265)
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @le16_to_cpu(i32 %271)
  %273 = icmp sge i64 %266, %272
  br label %274

274:                                              ; preds = %262, %257
  %275 = phi i1 [ false, %257 ], [ %273, %262 ]
  %276 = zext i1 %275 to i32
  %277 = call i64 @unlikely(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i32, i8*, ...) @ntfs_error(i32 %282, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %567

284:                                              ; preds = %274
  %285 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %286 = call i64 @NInoMstProtected(%struct.TYPE_38__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load %struct.inode*, %struct.inode** %5, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (i32, i8*, ...) @ntfs_error(i32 %291, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.11, i64 0, i64 0))
  br label %567

293:                                              ; preds = %284
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @le32_to_cpu(i32 %298)
  %300 = trunc i64 %299 to i32
  %301 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load %struct.inode*, %struct.inode** %5, align 8
  %304 = getelementptr inbounds %struct.inode, %struct.inode* %303, i32 0, i32 1
  store i32 %300, i32* %304, align 4
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @le32_to_cpu(i32 %307)
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @le16_to_cpu(i32 %313)
  %315 = sub nsw i64 %308, %314
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 4
  %319 = load %struct.inode*, %struct.inode** %5, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = icmp sgt i32 %321, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %293
  %327 = load %struct.inode*, %struct.inode** %5, align 8
  %328 = getelementptr inbounds %struct.inode, %struct.inode* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i32, i8*, ...) @ntfs_error(i32 %329, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  br label %567

331:                                              ; preds = %293
  br label %500

332:                                              ; preds = %252
  %333 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %334 = call i32 @NInoSetNonResident(%struct.TYPE_38__* %333)
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %351

339:                                              ; preds = %332
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i64 @le16_to_cpu(i32 %342)
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 4
  %349 = call i64 @le16_to_cpu(i32 %348)
  %350 = icmp sge i64 %343, %349
  br label %351

351:                                              ; preds = %339, %332
  %352 = phi i1 [ false, %332 ], [ %350, %339 ]
  %353 = zext i1 %352 to i32
  %354 = call i64 @unlikely(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (i32, i8*, ...) @ntfs_error(i32 %359, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %567

361:                                              ; preds = %351
  %362 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %363 = call i64 @NInoCompressed(%struct.TYPE_38__* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %361
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %367 = call i64 @NInoSparse(%struct.TYPE_38__* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %460

369:                                              ; preds = %365, %361
  %370 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %371 = call i64 @NInoCompressed(%struct.TYPE_38__* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %392

373:                                              ; preds = %369
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 4
  br i1 %379, label %380, label %392

380:                                              ; preds = %373
  %381 = load %struct.inode*, %struct.inode** %5, align 8
  %382 = getelementptr inbounds %struct.inode, %struct.inode* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (i32, i8*, ...) @ntfs_error(i32 %383, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* @EOPNOTSUPP, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %12, align 4
  br label %567

392:                                              ; preds = %373, %369
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %435

399:                                              ; preds = %392
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = add i32 %404, %407
  %409 = shl i32 1, %408
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %412, i32 0, i32 0
  store i32 %409, i32* %413, align 8
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i64 @ffs(i32 %418)
  %420 = sub nsw i64 %419, 1
  %421 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %421, i32 0, i32 6
  %423 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %423, i32 0, i32 3
  store i64 %420, i64* %424, align 8
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = shl i32 1, %429
  %431 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %431, i32 0, i32 6
  %433 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %433, i32 0, i32 1
  store i32 %430, i32* %434, align 4
  br label %448

435:                                              ; preds = %392
  %436 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %436, i32 0, i32 6
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %438, i32 0, i32 0
  store i32 0, i32* %439, align 8
  %440 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %440, i32 0, i32 6
  %442 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %442, i32 0, i32 3
  store i64 0, i64* %443, align 8
  %444 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %444, i32 0, i32 6
  %446 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i32 0, i32 1
  store i32 0, i32* %447, align 4
  br label %448

448:                                              ; preds = %435, %399
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 8
  %454 = call i8* @sle64_to_cpu(i32 %453)
  %455 = ptrtoint i8* %454 to i32
  %456 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %456, i32 0, i32 6
  %458 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %458, i32 0, i32 2
  store i32 %455, i32* %459, align 8
  br label %460

460:                                              ; preds = %448, %365
  %461 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %463, i32 0, i32 4
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %460
  %468 = load %struct.inode*, %struct.inode** %5, align 8
  %469 = getelementptr inbounds %struct.inode, %struct.inode* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 8
  %471 = call i32 (i32, i8*, ...) @ntfs_error(i32 %470, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  br label %567

472:                                              ; preds = %460
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = call i8* @sle64_to_cpu(i32 %477)
  %479 = ptrtoint i8* %478 to i32
  %480 = load %struct.inode*, %struct.inode** %5, align 8
  %481 = getelementptr inbounds %struct.inode, %struct.inode* %480, i32 0, i32 1
  store i32 %479, i32* %481, align 4
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = call i8* @sle64_to_cpu(i32 %486)
  %488 = ptrtoint i8* %487 to i32
  %489 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %489, i32 0, i32 1
  store i32 %488, i32* %490, align 8
  %491 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = call i8* @sle64_to_cpu(i32 %495)
  %497 = ptrtoint i8* %496 to i32
  %498 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %498, i32 0, i32 2
  store i32 %497, i32* %499, align 4
  br label %500

500:                                              ; preds = %472, %331
  %501 = load %struct.inode*, %struct.inode** %5, align 8
  %502 = getelementptr inbounds %struct.inode, %struct.inode* %501, i32 0, i32 4
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %503, i32 0, i32 0
  store i32* @ntfs_normal_aops, i32** %504, align 8
  %505 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %506 = call i64 @NInoMstProtected(%struct.TYPE_38__* %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %500
  %509 = load %struct.inode*, %struct.inode** %5, align 8
  %510 = getelementptr inbounds %struct.inode, %struct.inode* %509, i32 0, i32 4
  %511 = load %struct.TYPE_33__*, %struct.TYPE_33__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %511, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %512, align 8
  br label %523

513:                                              ; preds = %500
  %514 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %515 = call i64 @NInoCompressed(%struct.TYPE_38__* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %513
  %518 = load %struct.inode*, %struct.inode** %5, align 8
  %519 = getelementptr inbounds %struct.inode, %struct.inode* %518, i32 0, i32 4
  %520 = load %struct.TYPE_33__*, %struct.TYPE_33__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %520, i32 0, i32 0
  store i32* @ntfs_compressed_aops, i32** %521, align 8
  br label %522

522:                                              ; preds = %517, %513
  br label %523

523:                                              ; preds = %522, %508
  %524 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %525 = call i64 @NInoCompressed(%struct.TYPE_38__* %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %531, label %527

527:                                              ; preds = %523
  %528 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %529 = call i64 @NInoSparse(%struct.TYPE_38__* %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %546

531:                                              ; preds = %527, %523
  %532 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @AT_INDEX_ROOT, align 8
  %536 = icmp ne i64 %534, %535
  br i1 %536, label %537, label %546

537:                                              ; preds = %531
  %538 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %538, i32 0, i32 6
  %540 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = ashr i32 %542, 9
  %544 = load %struct.inode*, %struct.inode** %5, align 8
  %545 = getelementptr inbounds %struct.inode, %struct.inode* %544, i32 0, i32 2
  store i32 %543, i32* %545, align 8
  br label %553

546:                                              ; preds = %531, %527
  %547 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = ashr i32 %549, 9
  %551 = load %struct.inode*, %struct.inode** %5, align 8
  %552 = getelementptr inbounds %struct.inode, %struct.inode* %551, i32 0, i32 2
  store i32 %550, i32* %552, align 8
  br label %553

553:                                              ; preds = %546, %537
  %554 = load %struct.inode*, %struct.inode** %4, align 8
  %555 = call i32 @igrab(%struct.inode* %554)
  %556 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %557 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %558, i32 0, i32 0
  store %struct.TYPE_38__* %556, %struct.TYPE_38__** %559, align 8
  %560 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %561 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %560, i32 0, i32 3
  store i32 -1, i32* %561, align 8
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %563 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__* %562)
  %564 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %565 = call i32 @unmap_mft_record(%struct.TYPE_38__* %564)
  %566 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %611

567:                                              ; preds = %467, %380, %356, %326, %288, %279, %244, %233, %218, %186, %170, %154, %144, %105, %86
  %568 = load i32, i32* %12, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %573, label %570

570:                                              ; preds = %567
  %571 = load i32, i32* @EIO, align 4
  %572 = sub nsw i32 0, %571
  store i32 %572, i32* %12, align 4
  br label %573

573:                                              ; preds = %570, %567
  %574 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %575 = icmp ne %struct.TYPE_28__* %574, null
  br i1 %575, label %576, label %579

576:                                              ; preds = %573
  %577 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %578 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__* %577)
  br label %579

579:                                              ; preds = %576, %573
  %580 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %581 = call i32 @unmap_mft_record(%struct.TYPE_38__* %580)
  br label %582

582:                                              ; preds = %579, %77
  %583 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* %12, align 4
  %587 = load %struct.inode*, %struct.inode** %5, align 8
  %588 = getelementptr inbounds %struct.inode, %struct.inode* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %593, i32 0, i32 4
  %595 = load i64, i64* %594, align 8
  %596 = load %struct.inode*, %struct.inode** %4, align 8
  %597 = getelementptr inbounds %struct.inode, %struct.inode* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = call i32 (i32, i8*, ...) @ntfs_error(i32 %585, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.17, i64 0, i64 0), i32 %586, i32 %589, i64 %592, i64 %595, i32 %598)
  %600 = load %struct.inode*, %struct.inode** %5, align 8
  %601 = call i32 @make_bad_inode(%struct.inode* %600)
  %602 = load i32, i32* %12, align 4
  %603 = load i32, i32* @ENOMEM, align 4
  %604 = sub nsw i32 0, %603
  %605 = icmp ne i32 %602, %604
  br i1 %605, label %606, label %609

606:                                              ; preds = %582
  %607 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %608 = call i32 @NVolSetErrors(%struct.TYPE_37__* %607)
  br label %609

609:                                              ; preds = %606, %582
  %610 = load i32, i32* %12, align 4
  store i32 %610, i32* %3, align 4
  br label %611

611:                                              ; preds = %609, %553
  %612 = load i32, i32* %3, align 4
  ret i32 %612
}

declare dso_local %struct.TYPE_37__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_38__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32* @map_mft_record(%struct.TYPE_38__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.TYPE_28__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @ntfs_attr_lookup(i64, i32, i64, i32, i32, i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NInoSetCompressed(%struct.TYPE_38__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @NInoMstProtected(%struct.TYPE_38__*) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_38__*) #1

declare dso_local i32 @NInoSetSparse(%struct.TYPE_38__*) #1

declare dso_local i32 @NInoSetEncrypted(%struct.TYPE_38__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @NInoSetNonResident(%struct.TYPE_38__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_38__*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_38__*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
