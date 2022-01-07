; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, i32*, %struct.TYPE_8__*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.super_block = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_ino_node = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_inode = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%union.ubifs_dev_desc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"inode %lu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@UBIFS_MAX_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@CONFIG_UBIFS_ATIME_SUPPORT = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@UBIFS_XATTR_FL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ubifs_file_address_operations = common dso_local global i32 0, align 4
@ubifs_file_inode_operations = common dso_local global i32 0, align 4
@ubifs_file_operations = common dso_local global i32 0, align 4
@ubifs_dir_inode_operations = common dso_local global i32 0, align 4
@ubifs_dir_operations = common dso_local global i32 0, align 4
@ubifs_symlink_inode_operations = common dso_local global i32 0, align 4
@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"inode %lu validation failed, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to read inode %lu, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ubifs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca %struct.ubifs_ino_node*, align 8
  %9 = alloca %struct.ubifs_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ubifs_dev_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  store %struct.ubifs_info* %16, %struct.ubifs_info** %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @dbg_gen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.inode* @iget_locked(%struct.super_block* %19, i64 %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.inode* @ERR_PTR(i32 %26)
  store %struct.inode* %27, %struct.inode** %3, align 8
  br label %450

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %36, %struct.inode** %3, align 8
  br label %450

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %38)
  store %struct.ubifs_inode* %39, %struct.ubifs_inode** %11, align 8
  %40 = load i32, i32* @UBIFS_MAX_INO_NODE_SZ, align 4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %43, %struct.ubifs_ino_node** %8, align 8
  %44 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %45 = icmp ne %struct.ubifs_ino_node* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %439

49:                                               ; preds = %37
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ino_key_init(%struct.ubifs_info* %50, %union.ubifs_key* %7, i32 %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %56 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %57 = call i32 @ubifs_tnc_lookup(%struct.ubifs_info* %55, %union.ubifs_key* %7, %struct.ubifs_ino_node* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %436

61:                                               ; preds = %49
  %62 = load i32, i32* @S_NOCMTIME, align 4
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @CONFIG_UBIFS_ATIME_SUPPORT, align 4
  %68 = call i32 @IS_ENABLED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @S_NOATIME, align 4
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %61
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %79 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = call i32 @set_nlink(%struct.inode* %77, i8* %81)
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %85 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %84, i32 0, i32 17
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @le32_to_cpu(i32 %86)
  %88 = call i32 @i_uid_write(%struct.inode* %83, i8* %87)
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %91 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %90, i32 0, i32 16
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = call i32 @i_gid_write(%struct.inode* %89, i8* %93)
  %95 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %96 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @le64_to_cpu(i32 %97)
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %103 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le32_to_cpu(i32 %104)
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %110 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @le64_to_cpu(i32 %111)
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %117 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le32_to_cpu(i32 %118)
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %124 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @le64_to_cpu(i32 %125)
  %127 = load %struct.inode*, %struct.inode** %10, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %131 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  %137 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %138 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @le32_to_cpu(i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %145 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @le64_to_cpu(i32 %146)
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %151 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @le32_to_cpu(i32 %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %156 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %158 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @le32_to_cpu(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %163 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %165 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le16_to_cpu(i32 %166)
  %168 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %169 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %168, i32 0, i32 10
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %171 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @le64_to_cpu(i32 %172)
  %174 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %175 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %174, i32 0, i32 9
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %177 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @le32_to_cpu(i32 %178)
  %180 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %181 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %180, i32 0, i32 8
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %183 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le32_to_cpu(i32 %184)
  %186 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %187 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %186, i32 0, i32 7
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %189 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @le32_to_cpu(i32 %190)
  %192 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %193 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %192, i32 0, i32 6
  store i8* %191, i8** %193, align 8
  %194 = load %struct.inode*, %struct.inode** %10, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %198 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %200 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %199, i32 0, i32 5
  store i8* %196, i8** %200, align 8
  %201 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %202 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UBIFS_XATTR_FL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 1, i32 0
  %209 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %210 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %212 = load %struct.inode*, %struct.inode** %10, align 8
  %213 = call i32 @validate_inode(%struct.ubifs_info* %211, %struct.inode* %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %76
  br label %421

217:                                              ; preds = %76
  %218 = load %struct.inode*, %struct.inode** %10, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @S_IFMT, align 4
  %222 = and i32 %220, %221
  switch i32 %222, label %412 [
    i32 129, label %223
    i32 132, label %279
    i32 130, label %290
    i32 134, label %339
    i32 133, label %339
    i32 128, label %398
    i32 131, label %398
  ]

223:                                              ; preds = %217
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 5
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32* @ubifs_file_address_operations, i32** %227, align 8
  %228 = load %struct.inode*, %struct.inode** %10, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 3
  store i32* @ubifs_file_inode_operations, i32** %229, align 8
  %230 = load %struct.inode*, %struct.inode** %10, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 4
  store i32* @ubifs_file_operations, i32** %231, align 8
  %232 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %233 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %223
  %237 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %238 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, 1
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* @GFP_NOFS, align 4
  %243 = call i8* @kmalloc(i32 %241, i32 %242)
  %244 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %245 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  %246 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %247 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %236
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %6, align 4
  br label %436

253:                                              ; preds = %236
  %254 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %255 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %258 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %261 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @memcpy(i8* %256, i64 %259, i64 %262)
  %264 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %265 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %268 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 0, i8* %270, align 1
  br label %278

271:                                              ; preds = %223
  %272 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %273 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  store i32 10, i32* %6, align 4
  br label %421

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %253
  br label %413

279:                                              ; preds = %217
  %280 = load %struct.inode*, %struct.inode** %10, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 3
  store i32* @ubifs_dir_inode_operations, i32** %281, align 8
  %282 = load %struct.inode*, %struct.inode** %10, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 4
  store i32* @ubifs_dir_operations, i32** %283, align 8
  %284 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %285 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  store i32 11, i32* %6, align 4
  br label %421

289:                                              ; preds = %279
  br label %413

290:                                              ; preds = %217
  %291 = load %struct.inode*, %struct.inode** %10, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 3
  store i32* @ubifs_symlink_inode_operations, i32** %292, align 8
  %293 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %294 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ule i64 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %290
  %298 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %299 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %302 = icmp ugt i64 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %297, %290
  store i32 12, i32* %6, align 4
  br label %421

304:                                              ; preds = %297
  %305 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %306 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, 1
  %309 = trunc i64 %308 to i32
  %310 = load i32, i32* @GFP_NOFS, align 4
  %311 = call i8* @kmalloc(i32 %309, i32 %310)
  %312 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %313 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %312, i32 0, i32 3
  store i8* %311, i8** %313, align 8
  %314 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %315 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %314, i32 0, i32 3
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %304
  %319 = load i32, i32* @ENOMEM, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %6, align 4
  br label %436

321:                                              ; preds = %304
  %322 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %323 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %322, i32 0, i32 3
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %326 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %329 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @memcpy(i8* %324, i64 %327, i64 %330)
  %332 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %333 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %332, i32 0, i32 3
  %334 = load i8*, i8** %333, align 8
  %335 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %336 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  store i8 0, i8* %338, align 1
  br label %413

339:                                              ; preds = %217, %217
  %340 = load i32, i32* @GFP_NOFS, align 4
  %341 = call i8* @kmalloc(i32 4, i32 %340)
  %342 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %343 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %342, i32 0, i32 3
  store i8* %341, i8** %343, align 8
  %344 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %345 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %344, i32 0, i32 3
  %346 = load i8*, i8** %345, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %351, label %348

348:                                              ; preds = %339
  %349 = load i32, i32* @ENOMEM, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %6, align 4
  br label %436

351:                                              ; preds = %339
  %352 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %353 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to %union.ubifs_dev_desc*
  store %union.ubifs_dev_desc* %355, %union.ubifs_dev_desc** %13, align 8
  %356 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %357 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 4
  br i1 %359, label %360, label %366

360:                                              ; preds = %351
  %361 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %13, align 8
  %362 = bitcast %union.ubifs_dev_desc* %361 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @le32_to_cpu(i32 %363)
  %365 = call i32 @new_decode_dev(i8* %364)
  store i32 %365, i32* %12, align 4
  br label %379

366:                                              ; preds = %351
  %367 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %368 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp eq i64 %369, 4
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %13, align 8
  %373 = bitcast %union.ubifs_dev_desc* %372 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = call i8* @le64_to_cpu(i32 %374)
  %376 = call i32 @huge_decode_dev(i8* %375)
  store i32 %376, i32* %12, align 4
  br label %378

377:                                              ; preds = %366
  store i32 13, i32* %6, align 4
  br label %421

378:                                              ; preds = %371
  br label %379

379:                                              ; preds = %378, %360
  %380 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %381 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %380, i32 0, i32 3
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %384 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %387 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @memcpy(i8* %382, i64 %385, i64 %388)
  %390 = load %struct.inode*, %struct.inode** %10, align 8
  %391 = getelementptr inbounds %struct.inode, %struct.inode* %390, i32 0, i32 3
  store i32* @ubifs_file_inode_operations, i32** %391, align 8
  %392 = load %struct.inode*, %struct.inode** %10, align 8
  %393 = load %struct.inode*, %struct.inode** %10, align 8
  %394 = getelementptr inbounds %struct.inode, %struct.inode* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %12, align 4
  %397 = call i32 @init_special_inode(%struct.inode* %392, i32 %395, i32 %396)
  br label %413

398:                                              ; preds = %217, %217
  %399 = load %struct.inode*, %struct.inode** %10, align 8
  %400 = getelementptr inbounds %struct.inode, %struct.inode* %399, i32 0, i32 3
  store i32* @ubifs_file_inode_operations, i32** %400, align 8
  %401 = load %struct.inode*, %struct.inode** %10, align 8
  %402 = load %struct.inode*, %struct.inode** %10, align 8
  %403 = getelementptr inbounds %struct.inode, %struct.inode* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @init_special_inode(%struct.inode* %401, i32 %404, i32 0)
  %406 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %407 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %398
  store i32 14, i32* %6, align 4
  br label %421

411:                                              ; preds = %398
  br label %413

412:                                              ; preds = %217
  store i32 15, i32* %6, align 4
  br label %421

413:                                              ; preds = %411, %379, %321, %289, %278
  %414 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %415 = call i32 @kfree(%struct.ubifs_ino_node* %414)
  %416 = load %struct.inode*, %struct.inode** %10, align 8
  %417 = call i32 @ubifs_set_inode_flags(%struct.inode* %416)
  %418 = load %struct.inode*, %struct.inode** %10, align 8
  %419 = call i32 @unlock_new_inode(%struct.inode* %418)
  %420 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %420, %struct.inode** %3, align 8
  br label %450

421:                                              ; preds = %412, %410, %377, %303, %288, %276, %216
  %422 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %423 = load %struct.inode*, %struct.inode** %10, align 8
  %424 = getelementptr inbounds %struct.inode, %struct.inode* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* %6, align 4
  %427 = call i32 @ubifs_err(%struct.ubifs_info* %422, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %425, i32 %426)
  %428 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %429 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %430 = call i32 @ubifs_dump_node(%struct.ubifs_info* %428, %struct.ubifs_ino_node* %429)
  %431 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %432 = load %struct.inode*, %struct.inode** %10, align 8
  %433 = call i32 @ubifs_dump_inode(%struct.ubifs_info* %431, %struct.inode* %432)
  %434 = load i32, i32* @EINVAL, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %6, align 4
  br label %436

436:                                              ; preds = %421, %348, %318, %250, %60
  %437 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %438 = call i32 @kfree(%struct.ubifs_ino_node* %437)
  br label %439

439:                                              ; preds = %436, %46
  %440 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %441 = load %struct.inode*, %struct.inode** %10, align 8
  %442 = getelementptr inbounds %struct.inode, %struct.inode* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* %6, align 4
  %445 = call i32 @ubifs_err(%struct.ubifs_info* %440, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %443, i32 %444)
  %446 = load %struct.inode*, %struct.inode** %10, align 8
  %447 = call i32 @iget_failed(%struct.inode* %446)
  %448 = load i32, i32* %6, align 4
  %449 = call %struct.inode* @ERR_PTR(i32 %448)
  store %struct.inode* %449, %struct.inode** %3, align 8
  br label %450

450:                                              ; preds = %439, %413, %35, %24
  %451 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %451
}

declare dso_local i32 @dbg_gen(i8*, i64) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_lookup(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_ino_node*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @validate_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @huge_decode_dev(i8*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_dump_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
