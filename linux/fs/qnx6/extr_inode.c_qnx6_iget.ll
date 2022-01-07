; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, %struct.TYPE_10__*, i32*, i32*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.super_block = type { i32 }
%struct.qnx6_sb_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.qnx6_inode_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qnx6_inode_info = type { i32, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"bad inode number on dev %s: %u is out of range\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@QNX6_INODE_SIZE_BITS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"major problem: unable to read inode from dev %s\0A\00", align 1
@generic_ro_fops = common dso_local global i32 0, align 4
@qnx6_aops = common dso_local global i32 0, align 4
@qnx6_dir_inode_operations = common dso_local global i32 0, align 4
@qnx6_dir_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @qnx6_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qnx6_sb_info*, align 8
  %7 = alloca %struct.qnx6_inode_entry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qnx6_inode_info*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %14)
  store %struct.qnx6_sb_info* %15, %struct.qnx6_sb_info** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.inode* @iget_locked(%struct.super_block* %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  br label %231

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I_NEW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %33, %struct.inode** %3, align 8
  br label %231

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.qnx6_inode_info* @QNX6_I(%struct.inode* %35)
  store %struct.qnx6_inode_info* %36, %struct.qnx6_inode_info** %9, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @iget_failed(%struct.inode* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.inode* @ERR_PTR(i32 %50)
  store %struct.inode* %51, %struct.inode** %3, align 8
  br label %231

52:                                               ; preds = %34
  %53 = load i32, i32* %5, align 4
  %54 = sub i32 %53, 1
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = load i32, i32* @QNX6_INODE_SIZE_BITS, align 4
  %57 = sub i32 %55, %56
  %58 = lshr i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* @QNX6_INODE_SIZE_BITS, align 4
  %64 = lshr i32 %62, %63
  %65 = and i32 %60, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %67 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.address_space*, %struct.address_space** %69, align 8
  store %struct.address_space* %70, %struct.address_space** %10, align 8
  %71 = load %struct.address_space*, %struct.address_space** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call %struct.page* @read_mapping_page(%struct.address_space* %71, i32 %72, i32* null)
  store %struct.page* %73, %struct.page** %11, align 8
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = call i64 @IS_ERR(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %52
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @iget_failed(%struct.inode* %82)
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = call %struct.inode* @ERR_CAST(%struct.page* %84)
  store %struct.inode* %85, %struct.inode** %3, align 8
  br label %231

86:                                               ; preds = %52
  %87 = load %struct.page*, %struct.page** %11, align 8
  %88 = call i32 @kmap(%struct.page* %87)
  %89 = load %struct.page*, %struct.page** %11, align 8
  %90 = call i64 @page_address(%struct.page* %89)
  %91 = inttoptr i64 %90 to %struct.qnx6_inode_entry*
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %91, i64 %93
  store %struct.qnx6_inode_entry* %94, %struct.qnx6_inode_entry** %7, align 8
  %95 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %96 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %97 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @fs16_to_cpu(%struct.qnx6_sb_info* %95, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %104 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %105 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %103, i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = call i32 @i_uid_write(%struct.inode* %102, i32 %108)
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %112 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %113 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %111, i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = call i32 @i_gid_write(%struct.inode* %110, i32 %116)
  %118 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %119 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %120 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @fs64_to_cpu(%struct.qnx6_sb_info* %118, i32 %121)
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %126 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %127 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %125, i32 %128)
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %137 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %138 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %136, i32 %139)
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %148 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %149 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %147, i32 %150)
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i8* %151, i8** %154, align 8
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 511
  %162 = ashr i32 %161, 9
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %9, align 8
  %166 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %165, i32 0, i32 1
  %167 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %168 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %167, i32 0, i32 1
  %169 = call i32 @memcpy(i32* %166, i32* %168, i32 4)
  %170 = load %struct.qnx6_inode_entry*, %struct.qnx6_inode_entry** %7, align 8
  %171 = getelementptr inbounds %struct.qnx6_inode_entry, %struct.qnx6_inode_entry* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %9, align 8
  %174 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load %struct.inode*, %struct.inode** %8, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @S_ISREG(i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %86
  %181 = load %struct.inode*, %struct.inode** %8, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 6
  store i32* @generic_ro_fops, i32** %182, align 8
  %183 = load %struct.inode*, %struct.inode** %8, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32* @qnx6_aops, i32** %186, align 8
  br label %225

187:                                              ; preds = %86
  %188 = load %struct.inode*, %struct.inode** %8, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @S_ISDIR(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load %struct.inode*, %struct.inode** %8, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 5
  store i32* @qnx6_dir_inode_operations, i32** %195, align 8
  %196 = load %struct.inode*, %struct.inode** %8, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 6
  store i32* @qnx6_dir_operations, i32** %197, align 8
  %198 = load %struct.inode*, %struct.inode** %8, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  store i32* @qnx6_aops, i32** %201, align 8
  br label %224

202:                                              ; preds = %187
  %203 = load %struct.inode*, %struct.inode** %8, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @S_ISLNK(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %202
  %209 = load %struct.inode*, %struct.inode** %8, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 5
  store i32* @page_symlink_inode_operations, i32** %210, align 8
  %211 = load %struct.inode*, %struct.inode** %8, align 8
  %212 = call i32 @inode_nohighmem(%struct.inode* %211)
  %213 = load %struct.inode*, %struct.inode** %8, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  store i32* @qnx6_aops, i32** %216, align 8
  br label %223

217:                                              ; preds = %202
  %218 = load %struct.inode*, %struct.inode** %8, align 8
  %219 = load %struct.inode*, %struct.inode** %8, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @init_special_inode(%struct.inode* %218, i64 %221, i32 0)
  br label %223

223:                                              ; preds = %217, %208
  br label %224

224:                                              ; preds = %223, %193
  br label %225

225:                                              ; preds = %224, %180
  %226 = load %struct.page*, %struct.page** %11, align 8
  %227 = call i32 @qnx6_put_page(%struct.page* %226)
  %228 = load %struct.inode*, %struct.inode** %8, align 8
  %229 = call i32 @unlock_new_inode(%struct.inode* %228)
  %230 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %230, %struct.inode** %3, align 8
  br label %231

231:                                              ; preds = %225, %77, %41, %32, %21
  %232 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %232
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.qnx6_inode_info* @QNX6_I(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @fs16_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @fs64_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i64, i32) #1

declare dso_local i32 @qnx6_put_page(%struct.page*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
