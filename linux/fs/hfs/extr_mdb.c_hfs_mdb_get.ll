; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_mdb_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_mdb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.hfs_mdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.buffer_head*, i8*, i8*, i64, %struct.hfs_mdb*, %struct.buffer_head*, %struct.hfs_mdb* }

@HFS_SECTOR_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HFS_MDB_BLK = common dso_local global i32 0, align 4
@HFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bad allocation block size %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@HFS_SECTOR_SIZE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to set blocksize to %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to locate alternate MDB\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"continuing without an alternate MDB\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to read volume bitmap\0A\00", align 1
@HFS_EXT_CNID = common dso_local global i32 0, align 4
@hfs_ext_keycmp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to open extent tree\0A\00", align 1
@HFS_CAT_CNID = common dso_local global i32 0, align 4
@hfs_cat_keycmp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"unable to open catalog tree\0A\00", align 1
@HFS_SB_ATTRIB_UNMNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [93 x i8] c"filesystem was not cleanly unmounted, running fsck.hfs is recommended.  mounting read-only.\0A\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@HFS_SB_ATTRIB_SLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"filesystem is marked locked, mounting read-only.\0A\00", align 1
@HFS_SB_ATTRIB_INCNSTNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_mdb_get(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.hfs_mdb*, align 8
  %6 = alloca %struct.hfs_mdb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i32, i32* @HFS_SECTOR_SIZE, align 4
  %19 = call i32 @sb_min_blocksize(%struct.super_block* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %488

25:                                               ; preds = %1
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = call i64 @hfs_get_last_session(%struct.super_block* %26, i32* %13, i32* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %488

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %58
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @HFS_MDB_BLK, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %39 = call %struct.buffer_head* @sb_bread512(%struct.super_block* %34, i32 %37, %struct.hfs_mdb* %38)
  store %struct.buffer_head* %39, %struct.buffer_head** %4, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = icmp ne %struct.buffer_head* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %483

43:                                               ; preds = %33
  %44 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %45 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HFS_SUPER_MAGIC, align 4
  %48 = call i32 @cpu_to_be16(i32 %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call i64 @hfs_part_find(%struct.super_block* %54, i32* %13, i32* %14)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %483

58:                                               ; preds = %51
  br label %33

59:                                               ; preds = %50
  %60 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %61 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be32_to_cpu(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.super_block*, %struct.super_block** %3, align 8
  %65 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @HFS_SECTOR_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %480

78:                                               ; preds = %69
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @min(i32 %82, i32 %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %92, %78
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @HFS_SECTOR_SIZE, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %98 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be16_to_cpu(i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %111, %96
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* @HFS_SECTOR_SIZE_BITS, align 4
  %108 = ashr i32 %106, %107
  %109 = and i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %103

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %124, %114
  %116 = load %struct.super_block*, %struct.super_block** %3, align 8
  %117 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %115

127:                                              ; preds = %115
  %128 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %129 = call i32 @brelse(%struct.buffer_head* %128)
  %130 = load %struct.super_block*, %struct.super_block** %3, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @sb_set_blocksize(%struct.super_block* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %483

137:                                              ; preds = %127
  %138 = load %struct.super_block*, %struct.super_block** %3, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @HFS_MDB_BLK, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %143 = call %struct.buffer_head* @sb_bread512(%struct.super_block* %138, i32 %141, %struct.hfs_mdb* %142)
  store %struct.buffer_head* %143, %struct.buffer_head** %4, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %145 = icmp ne %struct.buffer_head* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  br label %483

147:                                              ; preds = %137
  %148 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %149 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HFS_SUPER_MAGIC, align 4
  %152 = call i32 @cpu_to_be16(i32 %151)
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %480

155:                                              ; preds = %147
  %156 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %157 = load %struct.super_block*, %struct.super_block** %3, align 8
  %158 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 12
  store %struct.buffer_head* %156, %struct.buffer_head** %159, align 8
  %160 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %161 = load %struct.super_block*, %struct.super_block** %3, align 8
  %162 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 18
  store %struct.hfs_mdb* %160, %struct.hfs_mdb** %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.super_block*, %struct.super_block** %3, align 8
  %166 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %165)
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %169 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @be16_to_cpu(i32 %170)
  %172 = load %struct.super_block*, %struct.super_block** %3, align 8
  %173 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %172)
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 8
  %175 = load %struct.super_block*, %struct.super_block** %3, align 8
  %176 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %175)
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.super_block*, %struct.super_block** %3, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %178, %181
  %183 = load %struct.super_block*, %struct.super_block** %3, align 8
  %184 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %183)
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 4
  %186 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %187 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @be32_to_cpu(i32 %188)
  %190 = load %struct.super_block*, %struct.super_block** %3, align 8
  %191 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %190)
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %189, %193
  %195 = load %struct.super_block*, %struct.super_block** %3, align 8
  %196 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %195)
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 4
  store i32 %194, i32* %197, align 8
  %198 = load %struct.super_block*, %struct.super_block** %3, align 8
  %199 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %198)
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %155
  %204 = load %struct.super_block*, %struct.super_block** %3, align 8
  %205 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %204)
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 4
  store i32 1, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %155
  %208 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %209 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @be16_to_cpu(i32 %210)
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.super_block*, %struct.super_block** %3, align 8
  %215 = getelementptr inbounds %struct.super_block, %struct.super_block* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @HFS_SECTOR_SIZE_BITS, align 4
  %218 = sub nsw i32 %216, %217
  %219 = ashr i32 %213, %218
  %220 = load %struct.super_block*, %struct.super_block** %3, align 8
  %221 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %220)
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 5
  store i32 %219, i32* %222, align 4
  %223 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %224 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @be16_to_cpu(i32 %225)
  %227 = load %struct.super_block*, %struct.super_block** %3, align 8
  %228 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %227)
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 6
  store i32 %226, i32* %229, align 8
  %230 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %231 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @be32_to_cpu(i32 %232)
  %234 = load %struct.super_block*, %struct.super_block** %3, align 8
  %235 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %234)
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 7
  store i32 %233, i32* %236, align 4
  %237 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %238 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @be16_to_cpu(i32 %239)
  %241 = load %struct.super_block*, %struct.super_block** %3, align 8
  %242 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %241)
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 8
  store i32 %240, i32* %243, align 8
  %244 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %245 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @be16_to_cpu(i32 %246)
  %248 = load %struct.super_block*, %struct.super_block** %3, align 8
  %249 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %248)
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 9
  store i32 %247, i32* %250, align 4
  %251 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %252 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @be32_to_cpu(i32 %253)
  %255 = load %struct.super_block*, %struct.super_block** %3, align 8
  %256 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %255)
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 10
  store i32 %254, i32* %257, align 8
  %258 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %259 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @be32_to_cpu(i32 %260)
  %262 = load %struct.super_block*, %struct.super_block** %3, align 8
  %263 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %262)
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 11
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %265, %266
  %268 = sub nsw i32 %267, 2
  store i32 %268, i32* %12, align 4
  %269 = load %struct.super_block*, %struct.super_block** %3, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load %struct.hfs_mdb*, %struct.hfs_mdb** %6, align 8
  %272 = call %struct.buffer_head* @sb_bread512(%struct.super_block* %269, i32 %270, %struct.hfs_mdb* %271)
  store %struct.buffer_head* %272, %struct.buffer_head** %4, align 8
  %273 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %274 = icmp ne %struct.buffer_head* %273, null
  br i1 %274, label %275, label %295

275:                                              ; preds = %207
  %276 = load %struct.hfs_mdb*, %struct.hfs_mdb** %6, align 8
  %277 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @HFS_SUPER_MAGIC, align 4
  %280 = call i32 @cpu_to_be16(i32 %279)
  %281 = icmp eq i32 %278, %280
  br i1 %281, label %282, label %291

282:                                              ; preds = %275
  %283 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %284 = load %struct.super_block*, %struct.super_block** %3, align 8
  %285 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %284)
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 17
  store %struct.buffer_head* %283, %struct.buffer_head** %286, align 8
  %287 = load %struct.hfs_mdb*, %struct.hfs_mdb** %6, align 8
  %288 = load %struct.super_block*, %struct.super_block** %3, align 8
  %289 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %288)
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 16
  store %struct.hfs_mdb* %287, %struct.hfs_mdb** %290, align 8
  br label %294

291:                                              ; preds = %275
  %292 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %293 = call i32 @brelse(%struct.buffer_head* %292)
  br label %294

294:                                              ; preds = %291, %282
  br label %295

295:                                              ; preds = %294, %207
  %296 = load %struct.super_block*, %struct.super_block** %3, align 8
  %297 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %296)
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 16
  %299 = load %struct.hfs_mdb*, %struct.hfs_mdb** %298, align 8
  %300 = icmp ne %struct.hfs_mdb* %299, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %303 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %304

304:                                              ; preds = %301, %295
  %305 = load i32, i32* @GFP_KERNEL, align 4
  %306 = call i64 @kmalloc(i32 8192, i32 %305)
  %307 = load %struct.super_block*, %struct.super_block** %3, align 8
  %308 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %307)
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 15
  store i64 %306, i64* %309, align 8
  %310 = load %struct.super_block*, %struct.super_block** %3, align 8
  %311 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %310)
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 15
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %304
  br label %483

316:                                              ; preds = %304
  %317 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %318 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @be16_to_cpu(i32 %319)
  %321 = load i32, i32* %13, align 4
  %322 = add nsw i32 %320, %321
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @HFS_SECTOR_SIZE_BITS, align 4
  %325 = shl i32 %323, %324
  store i32 %325, i32* %15, align 4
  %326 = load %struct.super_block*, %struct.super_block** %3, align 8
  %327 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %326)
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 8
  %331 = sdiv i32 %330, 8
  store i32 %331, i32* %11, align 4
  %332 = load %struct.super_block*, %struct.super_block** %3, align 8
  %333 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %332)
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 15
  %335 = load i64, i64* %334, align 8
  %336 = inttoptr i64 %335 to i8*
  store i8* %336, i8** %8, align 8
  br label %337

337:                                              ; preds = %352, %316
  %338 = load i32, i32* %11, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %387

340:                                              ; preds = %337
  %341 = load %struct.super_block*, %struct.super_block** %3, align 8
  %342 = load i32, i32* %15, align 4
  %343 = load %struct.super_block*, %struct.super_block** %3, align 8
  %344 = getelementptr inbounds %struct.super_block, %struct.super_block* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = ashr i32 %342, %345
  %347 = call %struct.buffer_head* @sb_bread(%struct.super_block* %341, i32 %346)
  store %struct.buffer_head* %347, %struct.buffer_head** %4, align 8
  %348 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %349 = icmp ne %struct.buffer_head* %348, null
  br i1 %349, label %352, label %350

350:                                              ; preds = %340
  %351 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %483

352:                                              ; preds = %340
  %353 = load i32, i32* %15, align 4
  %354 = load %struct.super_block*, %struct.super_block** %3, align 8
  %355 = getelementptr inbounds %struct.super_block, %struct.super_block* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  %358 = and i32 %353, %357
  store i32 %358, i32* %9, align 4
  %359 = load %struct.super_block*, %struct.super_block** %3, align 8
  %360 = getelementptr inbounds %struct.super_block, %struct.super_block* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %9, align 4
  %363 = sub nsw i32 %361, %362
  %364 = load i32, i32* %11, align 4
  %365 = call i32 @min(i32 %363, i32 %364)
  store i32 %365, i32* %10, align 4
  %366 = load i8*, i8** %8, align 8
  %367 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %368 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %369, %371
  %373 = load i32, i32* %10, align 4
  %374 = call i32 @memcpy(i8* %366, i64 %372, i32 %373)
  %375 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %376 = call i32 @brelse(%struct.buffer_head* %375)
  %377 = load i32, i32* %10, align 4
  %378 = load i8*, i8** %8, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i8, i8* %378, i64 %379
  store i8* %380, i8** %8, align 8
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %15, align 4
  %383 = add nsw i32 %382, %381
  store i32 %383, i32* %15, align 4
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %11, align 4
  %386 = sub nsw i32 %385, %384
  store i32 %386, i32* %11, align 4
  br label %337

387:                                              ; preds = %337
  %388 = load %struct.super_block*, %struct.super_block** %3, align 8
  %389 = load i32, i32* @HFS_EXT_CNID, align 4
  %390 = load i32, i32* @hfs_ext_keycmp, align 4
  %391 = call i8* @hfs_btree_open(%struct.super_block* %388, i32 %389, i32 %390)
  %392 = load %struct.super_block*, %struct.super_block** %3, align 8
  %393 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %392)
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 14
  store i8* %391, i8** %394, align 8
  %395 = load %struct.super_block*, %struct.super_block** %3, align 8
  %396 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %395)
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 14
  %398 = load i8*, i8** %397, align 8
  %399 = icmp ne i8* %398, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %387
  %401 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %483

402:                                              ; preds = %387
  %403 = load %struct.super_block*, %struct.super_block** %3, align 8
  %404 = load i32, i32* @HFS_CAT_CNID, align 4
  %405 = load i32, i32* @hfs_cat_keycmp, align 4
  %406 = call i8* @hfs_btree_open(%struct.super_block* %403, i32 %404, i32 %405)
  %407 = load %struct.super_block*, %struct.super_block** %3, align 8
  %408 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %407)
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 13
  store i8* %406, i8** %409, align 8
  %410 = load %struct.super_block*, %struct.super_block** %3, align 8
  %411 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %410)
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 13
  %413 = load i8*, i8** %412, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %417, label %415

415:                                              ; preds = %402
  %416 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %483

417:                                              ; preds = %402
  %418 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %419 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %16, align 4
  %421 = load i32, i32* %16, align 4
  %422 = load i32, i32* @HFS_SB_ATTRIB_UNMNT, align 4
  %423 = call i32 @cpu_to_be16(i32 %422)
  %424 = and i32 %421, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %433, label %426

426:                                              ; preds = %417
  %427 = call i32 @pr_warn(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i64 0, i64 0))
  %428 = load i32, i32* @SB_RDONLY, align 4
  %429 = load %struct.super_block*, %struct.super_block** %3, align 8
  %430 = getelementptr inbounds %struct.super_block, %struct.super_block* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 4
  %432 = or i32 %431, %428
  store i32 %432, i32* %430, align 4
  br label %433

433:                                              ; preds = %426, %417
  %434 = load i32, i32* %16, align 4
  %435 = load i32, i32* @HFS_SB_ATTRIB_SLOCK, align 4
  %436 = call i32 @cpu_to_be16(i32 %435)
  %437 = and i32 %434, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %433
  %440 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %441 = load i32, i32* @SB_RDONLY, align 4
  %442 = load %struct.super_block*, %struct.super_block** %3, align 8
  %443 = getelementptr inbounds %struct.super_block, %struct.super_block* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %441
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %439, %433
  %447 = load %struct.super_block*, %struct.super_block** %3, align 8
  %448 = call i32 @sb_rdonly(%struct.super_block* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %479, label %450

450:                                              ; preds = %446
  %451 = load i32, i32* @HFS_SB_ATTRIB_UNMNT, align 4
  %452 = xor i32 %451, -1
  %453 = call i32 @cpu_to_be16(i32 %452)
  %454 = load i32, i32* %16, align 4
  %455 = and i32 %454, %453
  store i32 %455, i32* %16, align 4
  %456 = load i32, i32* @HFS_SB_ATTRIB_INCNSTNT, align 4
  %457 = call i32 @cpu_to_be16(i32 %456)
  %458 = load i32, i32* %16, align 4
  %459 = or i32 %458, %457
  store i32 %459, i32* %16, align 4
  %460 = load i32, i32* %16, align 4
  %461 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %462 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %461, i32 0, i32 1
  store i32 %460, i32* %462, align 4
  %463 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %464 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %463, i32 0, i32 3
  %465 = call i32 @be32_add_cpu(i32* %464, i32 1)
  %466 = call i32 (...) @hfs_mtime()
  %467 = load %struct.hfs_mdb*, %struct.hfs_mdb** %5, align 8
  %468 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %467, i32 0, i32 2
  store i32 %466, i32* %468, align 4
  %469 = load %struct.super_block*, %struct.super_block** %3, align 8
  %470 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %469)
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 12
  %472 = load %struct.buffer_head*, %struct.buffer_head** %471, align 8
  %473 = call i32 @mark_buffer_dirty(%struct.buffer_head* %472)
  %474 = load %struct.super_block*, %struct.super_block** %3, align 8
  %475 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %474)
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i32 0, i32 12
  %477 = load %struct.buffer_head*, %struct.buffer_head** %476, align 8
  %478 = call i32 @sync_dirty_buffer(%struct.buffer_head* %477)
  br label %479

479:                                              ; preds = %450, %446
  store i32 0, i32* %2, align 4
  br label %488

480:                                              ; preds = %154, %75
  %481 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %482 = call i32 @brelse(%struct.buffer_head* %481)
  br label %483

483:                                              ; preds = %480, %415, %400, %350, %315, %146, %134, %57, %42
  %484 = load %struct.super_block*, %struct.super_block** %3, align 8
  %485 = call i32 @hfs_mdb_put(%struct.super_block* %484)
  %486 = load i32, i32* @EIO, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %2, align 4
  br label %488

488:                                              ; preds = %483, %479, %29, %22
  %489 = load i32, i32* %2, align 4
  ret i32 %489
}

declare dso_local i32 @sb_min_blocksize(%struct.super_block*, i32) #1

declare dso_local i64 @hfs_get_last_session(%struct.super_block*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_bread512(%struct.super_block*, i32, %struct.hfs_mdb*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @hfs_part_find(%struct.super_block*, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i8* @hfs_btree_open(%struct.super_block*, i32, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @hfs_mtime(...) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @hfs_mdb_put(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
