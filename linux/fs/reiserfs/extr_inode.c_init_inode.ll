; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32*, %struct.TYPE_9__*, i32*, i8*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }
%struct.stat_data_v1 = type { i32 }
%struct.stat_data = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32*, i64, i64, i64, i32 }

@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i32 0, align 4
@SD_V1_SIZE = common dso_local global i32 0, align 4
@i_nopack_mask = common dso_local global i32 0, align 4
@KEY_FORMAT_3_6 = common dso_local global i32 0, align 4
@STAT_DATA_V2 = common dso_local global i32 0, align 4
@SD_V2_SIZE = common dso_local global i32 0, align 4
@reiserfs_file_inode_operations = common dso_local global i32 0, align 4
@reiserfs_file_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@reiserfs_dir_inode_operations = common dso_local global i32 0, align 4
@reiserfs_dir_operations = common dso_local global i32 0, align 4
@reiserfs_symlink_inode_operations = common dso_local global i32 0, align 4
@reiserfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.treepath*)* @init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_inode(%struct.inode* %0, %struct.treepath* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.item_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat_data_v1*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.treepath* %1, %struct.treepath** %4, align 8
  %11 = load %struct.treepath*, %struct.treepath** %4, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %5, align 8
  %13 = load %struct.treepath*, %struct.treepath** %4, align 8
  %14 = call %struct.item_head* @tp_item_head(%struct.treepath* %13)
  store %struct.item_head* %14, %struct.item_head** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %15)
  %17 = load %struct.item_head*, %struct.item_head** %6, align 8
  %18 = getelementptr inbounds %struct.item_head, %struct.item_head* %17, i32 0, i32 0
  %19 = call i32 @copy_key(%struct.TYPE_14__* %16, i32* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 7
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @reiserfs_init_xattr_rwsem(%struct.inode* %39)
  %41 = load %struct.item_head*, %struct.item_head** %6, align 8
  %42 = call i64 @stat_data_v1(%struct.item_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %168

44:                                               ; preds = %2
  %45 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %46 = load %struct.item_head*, %struct.item_head** %6, align 8
  %47 = call i64 @ih_item_body(%struct.buffer_head* %45, %struct.item_head* %46)
  %48 = inttoptr i64 %47 to %struct.stat_data_v1*
  store %struct.stat_data_v1* %48, %struct.stat_data_v1** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %51 = call i32 @set_inode_item_key_version(%struct.inode* %49, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = load i32, i32* @STAT_DATA_V1, align 4
  %54 = call i32 @set_inode_sd_version(%struct.inode* %52, i32 %53)
  %55 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %56 = call i32 @sd_v1_mode(%struct.stat_data_v1* %55)
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %61 = call i32 @sd_v1_nlink(%struct.stat_data_v1* %60)
  %62 = call i32 @set_nlink(%struct.inode* %59, i32 %61)
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %65 = call i32 @sd_v1_uid(%struct.stat_data_v1* %64)
  %66 = call i32 @i_uid_write(%struct.inode* %63, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %69 = call i32 @sd_v1_gid(%struct.stat_data_v1* %68)
  %70 = call i32 @i_gid_write(%struct.inode* %67, i32 %69)
  %71 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %72 = call i32 @sd_v1_size(%struct.stat_data_v1* %71)
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %76 = call i32 @sd_v1_atime(%struct.stat_data_v1* %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %81 = call i32 @sd_v1_mtime(%struct.stat_data_v1* %80)
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %86 = call i32 @sd_v1_ctime(%struct.stat_data_v1* %85)
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %100 = call i64 @sd_v1_blocks(%struct.stat_data_v1* %99)
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 511
  %114 = ashr i32 %113, 9
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 10
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 9
  %123 = call i64 @_ROUND_UP(i64 %116, i32 %122)
  store i64 %123, i64* %9, align 8
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %44
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.inode*, %struct.inode** %3, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %44
  %134 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %135 = call i32 @sd_v1_rdev(%struct.stat_data_v1* %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %137 = call i64 @sd_v1_first_direct_byte(%struct.stat_data_v1* %136)
  %138 = load %struct.inode*, %struct.inode** %3, align 8
  %139 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = and i64 %143, 1
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %133
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %146, %133
  %152 = load %struct.inode*, %struct.inode** %3, align 8
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  %154 = load %struct.inode*, %struct.inode** %3, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @SD_V1_SIZE, align 4
  %159 = call i32 @to_real_used_space(%struct.inode* %153, i32 %157, i32 %158)
  %160 = call i32 @inode_set_bytes(%struct.inode* %152, i32 %159)
  %161 = load i32, i32* @i_nopack_mask, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.inode*, %struct.inode** %3, align 8
  %164 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %162
  store i32 %167, i32* %165, align 8
  br label %293

168:                                              ; preds = %2
  %169 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %170 = load %struct.item_head*, %struct.item_head** %6, align 8
  %171 = call i64 @ih_item_body(%struct.buffer_head* %169, %struct.item_head* %170)
  %172 = inttoptr i64 %171 to %struct.stat_data*
  store %struct.stat_data* %172, %struct.stat_data** %10, align 8
  %173 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %174 = call i32 @sd_v2_mode(%struct.stat_data* %173)
  %175 = load %struct.inode*, %struct.inode** %3, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.inode*, %struct.inode** %3, align 8
  %178 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %179 = call i32 @sd_v2_nlink(%struct.stat_data* %178)
  %180 = call i32 @set_nlink(%struct.inode* %177, i32 %179)
  %181 = load %struct.inode*, %struct.inode** %3, align 8
  %182 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %183 = call i32 @sd_v2_uid(%struct.stat_data* %182)
  %184 = call i32 @i_uid_write(%struct.inode* %181, i32 %183)
  %185 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %186 = call i32 @sd_v2_size(%struct.stat_data* %185)
  %187 = load %struct.inode*, %struct.inode** %3, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 8
  %189 = load %struct.inode*, %struct.inode** %3, align 8
  %190 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %191 = call i32 @sd_v2_gid(%struct.stat_data* %190)
  %192 = call i32 @i_gid_write(%struct.inode* %189, i32 %191)
  %193 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %194 = call i32 @sd_v2_mtime(%struct.stat_data* %193)
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %199 = call i32 @sd_v2_atime(%struct.stat_data* %198)
  %200 = load %struct.inode*, %struct.inode** %3, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 8
  %203 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %204 = call i32 @sd_v2_ctime(%struct.stat_data* %203)
  %205 = load %struct.inode*, %struct.inode** %3, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 8
  %208 = load %struct.inode*, %struct.inode** %3, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  %211 = load %struct.inode*, %struct.inode** %3, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.inode*, %struct.inode** %3, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %218 = call i32 @sd_v2_blocks(%struct.stat_data* %217)
  %219 = sext i32 %218 to i64
  %220 = load %struct.inode*, %struct.inode** %3, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %223 = call i32 @sd_v2_rdev(%struct.stat_data* %222)
  store i32 %223, i32* %7, align 4
  %224 = load %struct.inode*, %struct.inode** %3, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @S_ISCHR(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %168
  %230 = load %struct.inode*, %struct.inode** %3, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @S_ISBLK(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %229, %168
  %236 = load %struct.inode*, %struct.inode** %3, align 8
  %237 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %236)
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @le32_to_cpu(i32 %239)
  %241 = load %struct.inode*, %struct.inode** %3, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  br label %248

243:                                              ; preds = %229
  %244 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %245 = call i8* @sd_v2_generation(%struct.stat_data* %244)
  %246 = load %struct.inode*, %struct.inode** %3, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %243, %235
  %249 = load %struct.inode*, %struct.inode** %3, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @S_ISDIR(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = load %struct.inode*, %struct.inode** %3, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @S_ISLNK(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %254, %248
  %261 = load %struct.inode*, %struct.inode** %3, align 8
  %262 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %263 = call i32 @set_inode_item_key_version(%struct.inode* %261, i32 %262)
  br label %268

264:                                              ; preds = %254
  %265 = load %struct.inode*, %struct.inode** %3, align 8
  %266 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %267 = call i32 @set_inode_item_key_version(%struct.inode* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %260
  %269 = load %struct.inode*, %struct.inode** %3, align 8
  %270 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %269)
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i64 0, i64* %271, align 8
  %272 = load %struct.inode*, %struct.inode** %3, align 8
  %273 = load i32, i32* @STAT_DATA_V2, align 4
  %274 = call i32 @set_inode_sd_version(%struct.inode* %272, i32 %273)
  %275 = load %struct.inode*, %struct.inode** %3, align 8
  %276 = load %struct.inode*, %struct.inode** %3, align 8
  %277 = load %struct.inode*, %struct.inode** %3, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* @SD_V2_SIZE, align 4
  %282 = call i32 @to_real_used_space(%struct.inode* %276, i32 %280, i32 %281)
  %283 = call i32 @inode_set_bytes(%struct.inode* %275, i32 %282)
  %284 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %285 = call i32 @sd_v2_attrs(%struct.stat_data* %284)
  %286 = load %struct.inode*, %struct.inode** %3, align 8
  %287 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %286)
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  %289 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %290 = call i32 @sd_v2_attrs(%struct.stat_data* %289)
  %291 = load %struct.inode*, %struct.inode** %3, align 8
  %292 = call i32 @sd_attrs_to_i_attrs(i32 %290, %struct.inode* %291)
  br label %293

293:                                              ; preds = %268, %151
  %294 = load %struct.treepath*, %struct.treepath** %4, align 8
  %295 = call i32 @pathrelse(%struct.treepath* %294)
  %296 = load %struct.inode*, %struct.inode** %3, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @S_ISREG(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %293
  %302 = load %struct.inode*, %struct.inode** %3, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 2
  store i32* @reiserfs_file_inode_operations, i32** %303, align 8
  %304 = load %struct.inode*, %struct.inode** %3, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 4
  store i32* @reiserfs_file_operations, i32** %305, align 8
  %306 = load %struct.inode*, %struct.inode** %3, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 3
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %309, align 8
  br label %350

310:                                              ; preds = %293
  %311 = load %struct.inode*, %struct.inode** %3, align 8
  %312 = getelementptr inbounds %struct.inode, %struct.inode* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @S_ISDIR(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %310
  %317 = load %struct.inode*, %struct.inode** %3, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 2
  store i32* @reiserfs_dir_inode_operations, i32** %318, align 8
  %319 = load %struct.inode*, %struct.inode** %3, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 4
  store i32* @reiserfs_dir_operations, i32** %320, align 8
  br label %349

321:                                              ; preds = %310
  %322 = load %struct.inode*, %struct.inode** %3, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = call i64 @S_ISLNK(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %321
  %328 = load %struct.inode*, %struct.inode** %3, align 8
  %329 = getelementptr inbounds %struct.inode, %struct.inode* %328, i32 0, i32 2
  store i32* @reiserfs_symlink_inode_operations, i32** %329, align 8
  %330 = load %struct.inode*, %struct.inode** %3, align 8
  %331 = call i32 @inode_nohighmem(%struct.inode* %330)
  %332 = load %struct.inode*, %struct.inode** %3, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 3
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %335, align 8
  br label %348

336:                                              ; preds = %321
  %337 = load %struct.inode*, %struct.inode** %3, align 8
  %338 = getelementptr inbounds %struct.inode, %struct.inode* %337, i32 0, i32 0
  store i64 0, i64* %338, align 8
  %339 = load %struct.inode*, %struct.inode** %3, align 8
  %340 = getelementptr inbounds %struct.inode, %struct.inode* %339, i32 0, i32 2
  store i32* @reiserfs_special_inode_operations, i32** %340, align 8
  %341 = load %struct.inode*, %struct.inode** %3, align 8
  %342 = load %struct.inode*, %struct.inode** %3, align 8
  %343 = getelementptr inbounds %struct.inode, %struct.inode* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %7, align 4
  %346 = call i32 @new_decode_dev(i32 %345)
  %347 = call i32 @init_special_inode(%struct.inode* %341, i32 %344, i32 %346)
  br label %348

348:                                              ; preds = %336, %327
  br label %349

349:                                              ; preds = %348, %316
  br label %350

350:                                              ; preds = %349, %301
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.treepath*) #1

declare dso_local i32 @copy_key(%struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_14__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_15__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_init_xattr_rwsem(%struct.inode*) #1

declare dso_local i64 @stat_data_v1(%struct.item_head*) #1

declare dso_local i64 @ih_item_body(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @set_inode_item_key_version(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_sd_version(%struct.inode*, i32) #1

declare dso_local i32 @sd_v1_mode(%struct.stat_data_v1*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @sd_v1_nlink(%struct.stat_data_v1*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @sd_v1_uid(%struct.stat_data_v1*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @sd_v1_gid(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_size(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_atime(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_mtime(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_ctime(%struct.stat_data_v1*) #1

declare dso_local i64 @sd_v1_blocks(%struct.stat_data_v1*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @_ROUND_UP(i64, i32) #1

declare dso_local i32 @sd_v1_rdev(%struct.stat_data_v1*) #1

declare dso_local i64 @sd_v1_first_direct_byte(%struct.stat_data_v1*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @to_real_used_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @sd_v2_mode(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_nlink(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_uid(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_size(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_gid(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_mtime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_atime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_ctime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_blocks(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_rdev(%struct.stat_data*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i8* @sd_v2_generation(%struct.stat_data*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @sd_v2_attrs(%struct.stat_data*) #1

declare dso_local i32 @sd_attrs_to_i_attrs(i32, %struct.inode*) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
