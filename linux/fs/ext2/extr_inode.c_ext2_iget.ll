; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i8*, i32*, %struct.TYPE_5__*, i32, i32*, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { i64, i64*, i64, i64, i8*, i8*, i8*, i32, i32, i8*, i8*, i32* }
%struct.buffer_head = type { i32 }
%struct.ext2_inode = type { i64*, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ext2_iget\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bad extended attribute block %u\00", align 1
@EFSCORRUPTED = common dso_local global i64 0, align 8
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@ext2_dir_inode_operations = common dso_local global i32 0, align 4
@ext2_dir_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@ext2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ext2_symlink_inode_operations = common dso_local global i32 0, align 4
@ext2_special_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext2_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_inode_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %14 = load i64, i64* @EIO, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.inode* @iget_locked(%struct.super_block* %16, i64 %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = sub nsw i64 0, %22
  %24 = call %struct.inode* @ERR_PTR(i64 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  br label %438

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I_NEW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %33, %struct.inode** %3, align 8
  br label %438

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %35)
  store %struct.ext2_inode_info* %36, %struct.ext2_inode_info** %6, align 8
  %37 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %38 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %37, i32 0, i32 11
  store i32* null, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.ext2_inode* @ext2_get_inode(i32 %41, i64 %42, %struct.buffer_head** %7)
  store %struct.ext2_inode* %43, %struct.ext2_inode** %8, align 8
  %44 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %45 = call i64 @IS_ERR(%struct.ext2_inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %49 = call i64 @PTR_ERR(%struct.ext2_inode* %48)
  store i64 %49, i64* %10, align 8
  br label %431

50:                                               ; preds = %34
  %51 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %52 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %58 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %57, i32 0, i32 19
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %62 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NO_UID32, align 4
  %69 = call i64 @test_opt(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %50
  %72 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %73 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %80 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %79, i32 0, i32 16
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %71, %50
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @i_uid_write(%struct.inode* %87, i32 %88)
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @i_gid_write(%struct.inode* %90, i32 %91)
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %95 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %94, i32 0, i32 15
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = call i32 @set_nlink(%struct.inode* %93, i32 %97)
  %99 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %100 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %99, i32 0, i32 14
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @le32_to_cpu(i64 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %107 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %106, i32 0, i32 13
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @le32_to_cpu(i64 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 13
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %115 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %114, i32 0, i32 12
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @le32_to_cpu(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %123 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %122, i32 0, i32 11
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @le32_to_cpu(i64 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 12
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 11
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %9, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 12
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 13
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %140 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @le32_to_cpu(i64 %141)
  %143 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %144 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %86
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %156 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %149
  %160 = load i64, i64* @ESTALE, align 8
  %161 = sub nsw i64 0, %160
  store i64 %161, i64* %10, align 8
  br label %431

162:                                              ; preds = %154, %86
  %163 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %164 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %163, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @le32_to_cpu(i64 %165)
  %167 = load %struct.inode*, %struct.inode** %9, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %170 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %169, i32 0, i32 8
  %171 = load i64, i64* %170, align 8
  %172 = call i8* @le32_to_cpu(i64 %171)
  %173 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %174 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %173, i32 0, i32 10
  store i8* %172, i8** %174, align 8
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = call i32 @ext2_set_inode_flags(%struct.inode* %175)
  %177 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %178 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @le32_to_cpu(i64 %179)
  %181 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %182 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %181, i32 0, i32 9
  store i8* %180, i8** %182, align 8
  %183 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %184 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %187 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  %188 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %189 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %192 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %194 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @le32_to_cpu(i64 %195)
  %197 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %198 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %200 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %199, i32 0, i32 5
  store i8* null, i8** %200, align 8
  %201 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %202 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %221

205:                                              ; preds = %162
  %206 = load %struct.super_block*, %struct.super_block** %4, align 8
  %207 = call i32 @EXT2_SB(%struct.super_block* %206)
  %208 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %209 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %208, i32 0, i32 6
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @ext2_data_block_valid(i32 %207, i8* %210, i32 1)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %205
  %214 = load %struct.super_block*, %struct.super_block** %4, align 8
  %215 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %216 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @ext2_error(%struct.super_block* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %217)
  %219 = load i64, i64* @EFSCORRUPTED, align 8
  %220 = sub nsw i64 0, %219
  store i64 %220, i64* %10, align 8
  br label %431

221:                                              ; preds = %205, %162
  %222 = load %struct.inode*, %struct.inode** %9, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = call i64 @S_ISREG(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %221
  %229 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %230 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = call i8* @le32_to_cpu(i64 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = shl i32 %233, 32
  %235 = load %struct.inode*, %struct.inode** %9, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %246

239:                                              ; preds = %221
  %240 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %241 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i8* @le32_to_cpu(i64 %242)
  %244 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %245 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %239, %228
  %247 = load %struct.inode*, %struct.inode** %9, align 8
  %248 = call i64 @i_size_read(%struct.inode* %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i64, i64* @EFSCORRUPTED, align 8
  %252 = sub nsw i64 0, %251
  store i64 %252, i64* %10, align 8
  br label %431

253:                                              ; preds = %246
  %254 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %255 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %254, i32 0, i32 4
  store i8* null, i8** %255, align 8
  %256 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %257 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @le32_to_cpu(i64 %258)
  %260 = load %struct.inode*, %struct.inode** %9, align 8
  %261 = getelementptr inbounds %struct.inode, %struct.inode* %260, i32 0, i32 9
  store i8* %259, i8** %261, align 8
  %262 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %263 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %262, i32 0, i32 3
  store i64 0, i64* %263, align 8
  %264 = load i64, i64* %5, align 8
  %265 = sub i64 %264, 1
  %266 = load %struct.inode*, %struct.inode** %9, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @EXT2_INODES_PER_GROUP(i32 %268)
  %270 = udiv i64 %265, %269
  %271 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %272 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  %273 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %274 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %273, i32 0, i32 2
  store i64 0, i64* %274, align 8
  store i32 0, i32* %11, align 4
  br label %275

275:                                              ; preds = %293, %253
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %275
  %280 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %281 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %280, i32 0, i32 0
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %288 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %287, i32 0, i32 1
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  store i64 %286, i64* %292, align 8
  br label %293

293:                                              ; preds = %279
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %275

296:                                              ; preds = %275
  %297 = load %struct.inode*, %struct.inode** %9, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = call i64 @S_ISREG(i64 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load %struct.inode*, %struct.inode** %9, align 8
  %305 = call i32 @ext2_set_file_ops(%struct.inode* %304)
  br label %425

306:                                              ; preds = %296
  %307 = load %struct.inode*, %struct.inode** %9, align 8
  %308 = getelementptr inbounds %struct.inode, %struct.inode* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = call i64 @S_ISDIR(i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %335

313:                                              ; preds = %306
  %314 = load %struct.inode*, %struct.inode** %9, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 5
  store i32* @ext2_dir_inode_operations, i32** %315, align 8
  %316 = load %struct.inode*, %struct.inode** %9, align 8
  %317 = getelementptr inbounds %struct.inode, %struct.inode* %316, i32 0, i32 8
  store i32* @ext2_dir_operations, i32** %317, align 8
  %318 = load %struct.inode*, %struct.inode** %9, align 8
  %319 = getelementptr inbounds %struct.inode, %struct.inode* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @NOBH, align 4
  %322 = call i64 @test_opt(i32 %320, i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %313
  %325 = load %struct.inode*, %struct.inode** %9, align 8
  %326 = getelementptr inbounds %struct.inode, %struct.inode* %325, i32 0, i32 6
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %328, align 8
  br label %334

329:                                              ; preds = %313
  %330 = load %struct.inode*, %struct.inode** %9, align 8
  %331 = getelementptr inbounds %struct.inode, %struct.inode* %330, i32 0, i32 6
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  store i32* @ext2_aops, i32** %333, align 8
  br label %334

334:                                              ; preds = %329, %324
  br label %424

335:                                              ; preds = %306
  %336 = load %struct.inode*, %struct.inode** %9, align 8
  %337 = getelementptr inbounds %struct.inode, %struct.inode* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = call i64 @S_ISLNK(i64 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %385

342:                                              ; preds = %335
  %343 = load %struct.inode*, %struct.inode** %9, align 8
  %344 = call i64 @ext2_inode_is_fast_symlink(%struct.inode* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %362

346:                                              ; preds = %342
  %347 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %348 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %347, i32 0, i32 1
  %349 = load i64*, i64** %348, align 8
  %350 = bitcast i64* %349 to i8*
  %351 = load %struct.inode*, %struct.inode** %9, align 8
  %352 = getelementptr inbounds %struct.inode, %struct.inode* %351, i32 0, i32 4
  store i8* %350, i8** %352, align 8
  %353 = load %struct.inode*, %struct.inode** %9, align 8
  %354 = getelementptr inbounds %struct.inode, %struct.inode* %353, i32 0, i32 5
  store i32* @ext2_fast_symlink_inode_operations, i32** %354, align 8
  %355 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %356 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %355, i32 0, i32 1
  %357 = load i64*, i64** %356, align 8
  %358 = load %struct.inode*, %struct.inode** %9, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @nd_terminate_link(i64* %357, i32 %360, i32 7)
  br label %384

362:                                              ; preds = %342
  %363 = load %struct.inode*, %struct.inode** %9, align 8
  %364 = getelementptr inbounds %struct.inode, %struct.inode* %363, i32 0, i32 5
  store i32* @ext2_symlink_inode_operations, i32** %364, align 8
  %365 = load %struct.inode*, %struct.inode** %9, align 8
  %366 = call i32 @inode_nohighmem(%struct.inode* %365)
  %367 = load %struct.inode*, %struct.inode** %9, align 8
  %368 = getelementptr inbounds %struct.inode, %struct.inode* %367, i32 0, i32 7
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @NOBH, align 4
  %371 = call i64 @test_opt(i32 %369, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %362
  %374 = load %struct.inode*, %struct.inode** %9, align 8
  %375 = getelementptr inbounds %struct.inode, %struct.inode* %374, i32 0, i32 6
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %377, align 8
  br label %383

378:                                              ; preds = %362
  %379 = load %struct.inode*, %struct.inode** %9, align 8
  %380 = getelementptr inbounds %struct.inode, %struct.inode* %379, i32 0, i32 6
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  store i32* @ext2_aops, i32** %382, align 8
  br label %383

383:                                              ; preds = %378, %373
  br label %384

384:                                              ; preds = %383, %346
  br label %423

385:                                              ; preds = %335
  %386 = load %struct.inode*, %struct.inode** %9, align 8
  %387 = getelementptr inbounds %struct.inode, %struct.inode* %386, i32 0, i32 5
  store i32* @ext2_special_inode_operations, i32** %387, align 8
  %388 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %389 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %388, i32 0, i32 0
  %390 = load i64*, i64** %389, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %408

394:                                              ; preds = %385
  %395 = load %struct.inode*, %struct.inode** %9, align 8
  %396 = load %struct.inode*, %struct.inode** %9, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %401 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %400, i32 0, i32 0
  %402 = load i64*, i64** %401, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 0
  %404 = load i64, i64* %403, align 8
  %405 = call i8* @le32_to_cpu(i64 %404)
  %406 = call i32 @old_decode_dev(i8* %405)
  %407 = call i32 @init_special_inode(%struct.inode* %395, i64 %399, i32 %406)
  br label %422

408:                                              ; preds = %385
  %409 = load %struct.inode*, %struct.inode** %9, align 8
  %410 = load %struct.inode*, %struct.inode** %9, align 8
  %411 = getelementptr inbounds %struct.inode, %struct.inode* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %415 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %414, i32 0, i32 0
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 1
  %418 = load i64, i64* %417, align 8
  %419 = call i8* @le32_to_cpu(i64 %418)
  %420 = call i32 @new_decode_dev(i8* %419)
  %421 = call i32 @init_special_inode(%struct.inode* %409, i64 %413, i32 %420)
  br label %422

422:                                              ; preds = %408, %394
  br label %423

423:                                              ; preds = %422, %384
  br label %424

424:                                              ; preds = %423, %334
  br label %425

425:                                              ; preds = %424, %303
  %426 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %427 = call i32 @brelse(%struct.buffer_head* %426)
  %428 = load %struct.inode*, %struct.inode** %9, align 8
  %429 = call i32 @unlock_new_inode(%struct.inode* %428)
  %430 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %430, %struct.inode** %3, align 8
  br label %438

431:                                              ; preds = %250, %213, %159, %47
  %432 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %433 = call i32 @brelse(%struct.buffer_head* %432)
  %434 = load %struct.inode*, %struct.inode** %9, align 8
  %435 = call i32 @iget_failed(%struct.inode* %434)
  %436 = load i64, i64* %10, align 8
  %437 = call %struct.inode* @ERR_PTR(i64 %436)
  store %struct.inode* %437, %struct.inode** %3, align 8
  br label %438

438:                                              ; preds = %431, %425, %32, %21
  %439 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %439
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_inode* @ext2_get_inode(i32, i64, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.ext2_inode*) #1

declare dso_local i64 @PTR_ERR(%struct.ext2_inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @ext2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ext2_data_block_valid(i32, i8*, i32) #1

declare dso_local i32 @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i8*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @EXT2_INODES_PER_GROUP(i32) #1

declare dso_local i32 @ext2_set_file_ops(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i64 @ext2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @nd_terminate_link(i64*, i32, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i64, i32) #1

declare dso_local i32 @old_decode_dev(i8*) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
