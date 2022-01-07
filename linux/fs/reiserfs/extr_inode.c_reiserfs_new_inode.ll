; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i64 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, %struct.super_block*, i32, i64, i64, i32, i32, i32, i8*, i8*, i32 }
%struct.super_block = type { i32 }
%struct.reiserfs_security_handle = type { i64 }
%struct.reiserfs_iget_args = type { i8*, i8* }
%struct.cpu_key = type { i32 }
%struct.item_head = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.stat_data = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i32*, i64, i64, i64, i64, i32 }

@path_to_key = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@SD_OFFSET = common dso_local global i32 0, align 4
@TYPE_STAT_DATA = common dso_local global i32 0, align 4
@SD_V1_SIZE = common dso_local global i32 0, align 4
@MAX_US_INT = common dso_local global i32 0, align 4
@KEY_FORMAT_3_6 = common dso_local global i32 0, align 4
@SD_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@reiserfs_find_actor = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@event = common dso_local global i8* null, align 8
@U32_MAX = common dso_local global i32 0, align 4
@REISERFS_INHERIT_MASK = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i32 0, align 4
@STAT_DATA_V2 = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"jdm-13090\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ACLs aren't enabled in the fs, but vfs thinks they are!\00", align 1
@S_PRIVATE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, i8* %3, i32 %4, %struct.dentry* %5, %struct.inode* %6, %struct.reiserfs_security_handle* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_transaction_handle*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.reiserfs_security_handle*, align 8
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca %struct.reiserfs_iget_args, align 8
  %20 = alloca %struct.cpu_key, align 4
  %21 = alloca %struct.item_head, align 8
  %22 = alloca %struct.stat_data, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.dentry* %5, %struct.dentry** %15, align 8
  store %struct.inode* %6, %struct.inode** %16, align 8
  store %struct.reiserfs_security_handle* %7, %struct.reiserfs_security_handle** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %18, align 8
  %29 = load i32, i32* @path_to_key, align 4
  %30 = call i32 @INITIALIZE_PATH(i32 %29)
  %31 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %32 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %18, align 8
  %39 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %38)
  store i32 %39, i32* %25, align 4
  %40 = load %struct.inode*, %struct.inode** %16, align 8
  %41 = call i32 @dquot_alloc_inode(%struct.inode* %40)
  store i32 %41, i32* %24, align 4
  %42 = load %struct.super_block*, %struct.super_block** %18, align 8
  %43 = load i32, i32* %25, align 4
  %44 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %42, i32 %43)
  %45 = load i32, i32* %24, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %8
  br label %454

48:                                               ; preds = %8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %24, align 4
  br label %439

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call i64 @reiserfs_choose_packing(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %62 = call i32 @reiserfs_get_unused_objectid(%struct.reiserfs_transaction_handle* %61)
  %63 = call i64 @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %24, align 4
  br label %439

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @le32_to_cpu(i64 %76)
  %78 = load %struct.inode*, %struct.inode** %16, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.super_block*, %struct.super_block** %18, align 8
  %82 = call i64 @old_format_only(%struct.super_block* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %86 = load i32, i32* @SD_OFFSET, align 4
  %87 = load i32, i32* @TYPE_STAT_DATA, align 4
  %88 = load i32, i32* @SD_V1_SIZE, align 4
  %89 = load i32, i32* @MAX_US_INT, align 4
  %90 = call i32 @make_le_item_head(%struct.item_head* %21, i32* null, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  br label %98

91:                                               ; preds = %73
  %92 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %93 = load i32, i32* @SD_OFFSET, align 4
  %94 = load i32, i32* @TYPE_STAT_DATA, align 4
  %95 = load i32, i32* @SD_SIZE, align 4
  %96 = load i32, i32* @MAX_US_INT, align 4
  %97 = call i32 @make_le_item_head(%struct.item_head* %21, i32* null, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.inode*, %struct.inode** %16, align 8
  %100 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %102 = load i32, i32* @KEY_SIZE, align 4
  %103 = call i32 @memcpy(%struct.TYPE_8__* %100, %struct.TYPE_9__* %101, i32 %102)
  %104 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @le32_to_cpu(i64 %106)
  %108 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %16, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = load %struct.super_block*, %struct.super_block** %110, align 8
  %112 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %111)
  store i32 %112, i32* %25, align 4
  %113 = load %struct.inode*, %struct.inode** %16, align 8
  %114 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @reiserfs_find_actor, align 4
  %117 = call i32 @insert_inode_locked4(%struct.inode* %113, i8* %115, i32 %116, %struct.reiserfs_iget_args* %19)
  store i32 %117, i32* %24, align 4
  %118 = load %struct.inode*, %struct.inode** %16, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = load %struct.super_block*, %struct.super_block** %119, align 8
  %121 = load i32, i32* %25, align 4
  %122 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %120, i32 %121)
  %123 = load i32, i32* %24, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %98
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %24, align 4
  br label %439

128:                                              ; preds = %98
  %129 = load %struct.super_block*, %struct.super_block** %18, align 8
  %130 = call i64 @old_format_only(%struct.super_block* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @le32_to_cpu(i64 %136)
  %138 = load %struct.inode*, %struct.inode** %16, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  br label %145

140:                                              ; preds = %128
  %141 = load i8*, i8** @event, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** @event, align 8
  %143 = load %struct.inode*, %struct.inode** %16, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %132
  %146 = load %struct.inode*, %struct.inode** %16, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i64 @S_ISDIR(i32 %147)
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 2, i32 1
  %152 = call i32 @set_nlink(%struct.inode* %146, i32 %151)
  %153 = load %struct.inode*, %struct.inode** %16, align 8
  %154 = call i32 @current_time(%struct.inode* %153)
  %155 = load %struct.inode*, %struct.inode** %16, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.inode*, %struct.inode** %16, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 6
  store i32 %154, i32* %158, align 4
  %159 = load %struct.inode*, %struct.inode** %16, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 7
  store i32 %154, i32* %160, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.inode*, %struct.inode** %16, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.inode*, %struct.inode** %16, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 4
  store i64 0, i64* %165, align 8
  %166 = load %struct.inode*, %struct.inode** %16, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @S_ISLNK(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %145
  br label %174

172:                                              ; preds = %145
  %173 = load i32, i32* @U32_MAX, align 4
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i32 [ 1, %171 ], [ %173, %172 ]
  %176 = load %struct.inode*, %struct.inode** %16, align 8
  %177 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %176)
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.inode*, %struct.inode** %16, align 8
  %180 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %179)
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 8
  %182 = call i32 @INIT_LIST_HEAD(i32* %181)
  %183 = load %struct.inode*, %struct.inode** %16, align 8
  %184 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %183)
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 7
  store i64 0, i64* %185, align 8
  %186 = load %struct.inode*, %struct.inode** %16, align 8
  %187 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %186)
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 6
  store i64 0, i64* %188, align 8
  %189 = load %struct.inode*, %struct.inode** %16, align 8
  %190 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %189)
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 5
  store i64 0, i64* %191, align 8
  %192 = load %struct.inode*, %struct.inode** %16, align 8
  %193 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %192)
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load %struct.inode*, %struct.inode** %16, align 8
  %196 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  store i32* null, i32** %197, align 8
  %198 = load %struct.inode*, %struct.inode** %11, align 8
  %199 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %198)
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @REISERFS_INHERIT_MASK, align 4
  %203 = and i32 %201, %202
  %204 = load %struct.inode*, %struct.inode** %16, align 8
  %205 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %204)
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  %207 = load %struct.inode*, %struct.inode** %16, align 8
  %208 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %207)
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.inode*, %struct.inode** %16, align 8
  %212 = call i32 @sd_attrs_to_i_attrs(i32 %210, %struct.inode* %211)
  %213 = load %struct.inode*, %struct.inode** %16, align 8
  %214 = call i32 @reiserfs_init_xattr_rwsem(%struct.inode* %213)
  %215 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %216 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @le32_to_cpu(i64 %218)
  %220 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @le32_to_cpu(i64 %222)
  %224 = load i32, i32* @SD_OFFSET, align 4
  %225 = load i32, i32* @TYPE_STAT_DATA, align 4
  %226 = call i32 @_make_cpu_key(%struct.cpu_key* %20, i32 %215, i8* %219, i8* %223, i32 %224, i32 %225, i32 3)
  %227 = load %struct.super_block*, %struct.super_block** %18, align 8
  %228 = call i32 @search_item(%struct.super_block* %227, %struct.cpu_key* %20, i32* @path_to_key)
  store i32 %228, i32* %23, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* @IO_ERROR, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %174
  %233 = load i32, i32* @EIO, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %24, align 4
  br label %439

235:                                              ; preds = %174
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* @ITEM_FOUND, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = call i32 @pathrelse(i32* @path_to_key)
  %241 = load i32, i32* @EEXIST, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %24, align 4
  br label %439

243:                                              ; preds = %235
  %244 = load %struct.super_block*, %struct.super_block** %18, align 8
  %245 = call i64 @old_format_only(%struct.super_block* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  %248 = load %struct.inode*, %struct.inode** %16, align 8
  %249 = call i32 @i_uid_read(%struct.inode* %248)
  %250 = and i32 %249, -65536
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load %struct.inode*, %struct.inode** %16, align 8
  %254 = call i32 @i_gid_read(%struct.inode* %253)
  %255 = and i32 %254, -65536
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252, %247
  %258 = call i32 @pathrelse(i32* @path_to_key)
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %24, align 4
  br label %439

261:                                              ; preds = %252
  %262 = load %struct.inode*, %struct.inode** %16, align 8
  %263 = load %struct.inode*, %struct.inode** %16, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @inode2sd_v1(%struct.stat_data* %22, %struct.inode* %262, i32 %265)
  br label %273

267:                                              ; preds = %243
  %268 = load %struct.inode*, %struct.inode** %16, align 8
  %269 = load %struct.inode*, %struct.inode** %16, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @inode2sd(%struct.stat_data* %22, %struct.inode* %268, i32 %271)
  br label %273

273:                                              ; preds = %267, %261
  %274 = load %struct.super_block*, %struct.super_block** %18, align 8
  %275 = call i64 @old_format_only(%struct.super_block* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %12, align 4
  %279 = call i64 @S_ISDIR(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %12, align 4
  %283 = call i64 @S_ISLNK(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %281, %277, %273
  %286 = load %struct.inode*, %struct.inode** %16, align 8
  %287 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %288 = call i32 @set_inode_item_key_version(%struct.inode* %286, i32 %287)
  br label %293

289:                                              ; preds = %281
  %290 = load %struct.inode*, %struct.inode** %16, align 8
  %291 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %292 = call i32 @set_inode_item_key_version(%struct.inode* %290, i32 %291)
  br label %293

293:                                              ; preds = %289, %285
  %294 = load %struct.super_block*, %struct.super_block** %18, align 8
  %295 = call i64 @old_format_only(%struct.super_block* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load %struct.inode*, %struct.inode** %16, align 8
  %299 = load i32, i32* @STAT_DATA_V1, align 4
  %300 = call i32 @set_inode_sd_version(%struct.inode* %298, i32 %299)
  br label %305

301:                                              ; preds = %293
  %302 = load %struct.inode*, %struct.inode** %16, align 8
  %303 = load i32, i32* @STAT_DATA_V2, align 4
  %304 = call i32 @set_inode_sd_version(%struct.inode* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %297
  %306 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %307 = load %struct.inode*, %struct.inode** %16, align 8
  %308 = bitcast %struct.stat_data* %22 to i8*
  %309 = call i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %306, i32* @path_to_key, %struct.cpu_key* %20, %struct.item_head* %21, %struct.inode* %307, i8* %308)
  store i32 %309, i32* %23, align 4
  %310 = load i32, i32* %23, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %305
  %313 = load i32, i32* %23, align 4
  store i32 %313, i32* %24, align 4
  %314 = call i32 @reiserfs_check_path(i32* @path_to_key)
  br label %439

315:                                              ; preds = %305
  %316 = load i32, i32* %12, align 4
  %317 = call i64 @S_ISDIR(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %315
  %320 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %321 = load %struct.inode*, %struct.inode** %16, align 8
  %322 = load %struct.inode*, %struct.inode** %11, align 8
  %323 = call i32 @reiserfs_new_directory(%struct.reiserfs_transaction_handle* %320, %struct.inode* %321, %struct.item_head* %21, i32* @path_to_key, %struct.inode* %322)
  store i32 %323, i32* %23, align 4
  br label %324

324:                                              ; preds = %319, %315
  %325 = load i32, i32* %12, align 4
  %326 = call i64 @S_ISLNK(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %341

328:                                              ; preds = %324
  %329 = load %struct.super_block*, %struct.super_block** %18, align 8
  %330 = call i64 @old_format_only(%struct.super_block* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = load i32, i32* %14, align 4
  %334 = call i32 @ROUND_UP(i32 %333)
  store i32 %334, i32* %14, align 4
  br label %335

335:                                              ; preds = %332, %328
  %336 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %337 = load %struct.inode*, %struct.inode** %16, align 8
  %338 = load i8*, i8** %13, align 8
  %339 = load i32, i32* %14, align 4
  %340 = call i32 @reiserfs_new_symlink(%struct.reiserfs_transaction_handle* %336, %struct.inode* %337, %struct.item_head* %21, i32* @path_to_key, i8* %338, i32 %339)
  store i32 %340, i32* %23, align 4
  br label %341

341:                                              ; preds = %335, %324
  %342 = load i32, i32* %23, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = load i32, i32* %23, align 4
  store i32 %345, i32* %24, align 4
  %346 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %347 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %348 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %347)
  br label %475

349:                                              ; preds = %341
  %350 = load %struct.inode*, %struct.inode** %16, align 8
  %351 = getelementptr inbounds %struct.inode, %struct.inode* %350, i32 0, i32 1
  %352 = load %struct.super_block*, %struct.super_block** %351, align 8
  %353 = call i64 @reiserfs_posixacl(%struct.super_block* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %349
  %356 = load %struct.inode*, %struct.inode** %16, align 8
  %357 = getelementptr inbounds %struct.inode, %struct.inode* %356, i32 0, i32 1
  %358 = load %struct.super_block*, %struct.super_block** %357, align 8
  %359 = call i32 @reiserfs_write_unlock(%struct.super_block* %358)
  %360 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %361 = load %struct.inode*, %struct.inode** %11, align 8
  %362 = load %struct.dentry*, %struct.dentry** %15, align 8
  %363 = load %struct.inode*, %struct.inode** %16, align 8
  %364 = call i32 @reiserfs_inherit_default_acl(%struct.reiserfs_transaction_handle* %360, %struct.inode* %361, %struct.dentry* %362, %struct.inode* %363)
  store i32 %364, i32* %23, align 4
  %365 = load %struct.inode*, %struct.inode** %16, align 8
  %366 = getelementptr inbounds %struct.inode, %struct.inode* %365, i32 0, i32 1
  %367 = load %struct.super_block*, %struct.super_block** %366, align 8
  %368 = call i32 @reiserfs_write_lock(%struct.super_block* %367)
  %369 = load i32, i32* %23, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %355
  %372 = load i32, i32* %23, align 4
  store i32 %372, i32* %24, align 4
  %373 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %374 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %375 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %374)
  br label %475

376:                                              ; preds = %355
  br label %403

377:                                              ; preds = %349
  %378 = load %struct.inode*, %struct.inode** %16, align 8
  %379 = getelementptr inbounds %struct.inode, %struct.inode* %378, i32 0, i32 1
  %380 = load %struct.super_block*, %struct.super_block** %379, align 8
  %381 = getelementptr inbounds %struct.super_block, %struct.super_block* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @SB_POSIXACL, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %377
  %387 = load %struct.inode*, %struct.inode** %16, align 8
  %388 = getelementptr inbounds %struct.inode, %struct.inode* %387, i32 0, i32 1
  %389 = load %struct.super_block*, %struct.super_block** %388, align 8
  %390 = call i32 @reiserfs_warning(%struct.super_block* %389, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %402

391:                                              ; preds = %377
  %392 = load %struct.inode*, %struct.inode** %11, align 8
  %393 = call i64 @IS_PRIVATE(%struct.inode* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %391
  %396 = load i32, i32* @S_PRIVATE, align 4
  %397 = load %struct.inode*, %struct.inode** %16, align 8
  %398 = getelementptr inbounds %struct.inode, %struct.inode* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 8
  br label %401

401:                                              ; preds = %395, %391
  br label %402

402:                                              ; preds = %401, %386
  br label %403

403:                                              ; preds = %402, %376
  %404 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %17, align 8
  %405 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %434

408:                                              ; preds = %403
  %409 = load %struct.inode*, %struct.inode** %16, align 8
  %410 = getelementptr inbounds %struct.inode, %struct.inode* %409, i32 0, i32 1
  %411 = load %struct.super_block*, %struct.super_block** %410, align 8
  %412 = call i32 @reiserfs_write_unlock(%struct.super_block* %411)
  %413 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %414 = load %struct.inode*, %struct.inode** %16, align 8
  %415 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %17, align 8
  %416 = call i32 @reiserfs_security_write(%struct.reiserfs_transaction_handle* %413, %struct.inode* %414, %struct.reiserfs_security_handle* %415)
  store i32 %416, i32* %23, align 4
  %417 = load %struct.inode*, %struct.inode** %16, align 8
  %418 = getelementptr inbounds %struct.inode, %struct.inode* %417, i32 0, i32 1
  %419 = load %struct.super_block*, %struct.super_block** %418, align 8
  %420 = call i32 @reiserfs_write_lock(%struct.super_block* %419)
  %421 = load i32, i32* %23, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %433

423:                                              ; preds = %408
  %424 = load i32, i32* %23, align 4
  store i32 %424, i32* %24, align 4
  %425 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %426 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %427 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %426)
  store i32 %427, i32* %23, align 4
  %428 = load i32, i32* %23, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %423
  %431 = load i32, i32* %23, align 4
  store i32 %431, i32* %24, align 4
  br label %432

432:                                              ; preds = %430, %423
  br label %475

433:                                              ; preds = %408
  br label %434

434:                                              ; preds = %433, %403
  %435 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %436 = load %struct.inode*, %struct.inode** %16, align 8
  %437 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %435, %struct.inode* %436)
  %438 = call i32 @reiserfs_check_path(i32* @path_to_key)
  store i32 0, i32* %9, align 4
  br label %485

439:                                              ; preds = %312, %257, %239, %232, %125, %70, %53
  %440 = load %struct.inode*, %struct.inode** %16, align 8
  %441 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %440)
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  store i64 0, i64* %442, align 8
  %443 = load %struct.inode*, %struct.inode** %16, align 8
  %444 = getelementptr inbounds %struct.inode, %struct.inode* %443, i32 0, i32 1
  %445 = load %struct.super_block*, %struct.super_block** %444, align 8
  %446 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %445)
  store i32 %446, i32* %25, align 4
  %447 = load %struct.inode*, %struct.inode** %16, align 8
  %448 = call i32 @dquot_free_inode(%struct.inode* %447)
  %449 = load %struct.inode*, %struct.inode** %16, align 8
  %450 = getelementptr inbounds %struct.inode, %struct.inode* %449, i32 0, i32 1
  %451 = load %struct.super_block*, %struct.super_block** %450, align 8
  %452 = load i32, i32* %25, align 4
  %453 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %451, i32 %452)
  br label %454

454:                                              ; preds = %439, %47
  %455 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %456 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %455)
  %457 = load %struct.inode*, %struct.inode** %16, align 8
  %458 = getelementptr inbounds %struct.inode, %struct.inode* %457, i32 0, i32 1
  %459 = load %struct.super_block*, %struct.super_block** %458, align 8
  %460 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %459)
  store i32 %460, i32* %25, align 4
  %461 = load %struct.inode*, %struct.inode** %16, align 8
  %462 = call i32 @dquot_drop(%struct.inode* %461)
  %463 = load %struct.inode*, %struct.inode** %16, align 8
  %464 = getelementptr inbounds %struct.inode, %struct.inode* %463, i32 0, i32 1
  %465 = load %struct.super_block*, %struct.super_block** %464, align 8
  %466 = load i32, i32* %25, align 4
  %467 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %465, i32 %466)
  %468 = load i32, i32* @S_NOQUOTA, align 4
  %469 = load %struct.inode*, %struct.inode** %16, align 8
  %470 = getelementptr inbounds %struct.inode, %struct.inode* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 8
  %473 = load %struct.inode*, %struct.inode** %16, align 8
  %474 = call i32 @make_bad_inode(%struct.inode* %473)
  br label %475

475:                                              ; preds = %454, %432, %371, %344
  %476 = load %struct.inode*, %struct.inode** %16, align 8
  %477 = call i32 @clear_nlink(%struct.inode* %476)
  %478 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %479 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %478, i32 0, i32 1
  store i64 0, i64* %479, align 8
  %480 = load %struct.inode*, %struct.inode** %16, align 8
  %481 = call i32 @unlock_new_inode(%struct.inode* %480)
  %482 = load %struct.inode*, %struct.inode** %16, align 8
  %483 = call i32 @iput(%struct.inode* %482)
  %484 = load i32, i32* %24, align 4
  store i32 %484, i32* %9, align 4
  br label %485

485:                                              ; preds = %475, %434
  %486 = load i32, i32* %9, align 4
  ret i32 %486
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i64 @reiserfs_choose_packing(%struct.inode*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @reiserfs_get_unused_objectid(%struct.reiserfs_transaction_handle*) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i64 @old_format_only(%struct.super_block*) #1

declare dso_local i32 @make_le_item_head(%struct.item_head*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_8__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @insert_inode_locked4(%struct.inode*, i8*, i32, %struct.reiserfs_iget_args*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_11__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sd_attrs_to_i_attrs(i32, %struct.inode*) #1

declare dso_local i32 @reiserfs_init_xattr_rwsem(%struct.inode*) #1

declare dso_local i32 @_make_cpu_key(%struct.cpu_key*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @search_item(%struct.super_block*, %struct.cpu_key*, i32*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @inode2sd_v1(%struct.stat_data*, %struct.inode*, i32) #1

declare dso_local i32 @inode2sd(%struct.stat_data*, %struct.inode*, i32) #1

declare dso_local i32 @set_inode_item_key_version(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_sd_version(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle*, i32*, %struct.cpu_key*, %struct.item_head*, %struct.inode*, i8*) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local i32 @reiserfs_new_directory(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, i32*, %struct.inode*) #1

declare dso_local i32 @ROUND_UP(i32) #1

declare dso_local i32 @reiserfs_new_symlink(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, i32*, i8*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i64 @reiserfs_posixacl(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @reiserfs_inherit_default_acl(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_write(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
