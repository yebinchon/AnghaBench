; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_new_group_input = type { i32, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i8*, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { i32, %struct.ocfs2_chain_rec*, i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32, i8* }
%struct.ocfs2_super = type { i32, i32, i32 }
%struct.ocfs2_group_desc = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The disk is too old and small. Force to do offline resize.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Can't read the group descriptor # %llu from the device.\00", align 1
@OCFS2_GROUP_ADD_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_group_add(%struct.inode* %0, %struct.ocfs2_new_group_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_new_group_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_group_desc*, align 8
  %14 = alloca %struct.ocfs2_chain_list*, align 8
  %15 = alloca %struct.ocfs2_chain_rec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_new_group_input* %1, %struct.ocfs2_new_group_input** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %13, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %23 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %27 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %323

32:                                               ; preds = %25
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %34 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %35 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %36 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %33, i32 %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %9, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %321

44:                                               ; preds = %32
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @inode_lock(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @ocfs2_inode_lock(%struct.inode* %47, %struct.buffer_head** %8, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %316

54:                                               ; preds = %44
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %58, %struct.ocfs2_dinode** %10, align 8
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ocfs2_group_bitmap_size(i32 %67, i32 0, i32 %70)
  %72 = mul nsw i32 %71, 8
  %73 = icmp ne i32 %64, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %54
  %75 = load i32, i32* @ML_ERROR, align 4
  %76 = call i32 (i32, i8*, ...) @mlog(i32 %75, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %311

79:                                               ; preds = %54
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %81 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %82 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %80, i32 %83, i32 1, %struct.buffer_head** %12)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i32, i32* @ML_ERROR, align 4
  %89 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %90 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = call i32 (i32, i8*, ...) @mlog(i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %311

94:                                               ; preds = %79
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @INODE_CACHE(%struct.inode* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %98 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %96, %struct.buffer_head* %97)
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %101 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = call i32 @ocfs2_verify_group_and_input(%struct.inode* %99, %struct.ocfs2_dinode* %100, %struct.ocfs2_new_group_input* %101, %struct.buffer_head* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %308

109:                                              ; preds = %94
  %110 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %111 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %115 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %118 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %121 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @trace_ocfs2_group_add(i64 %113, i64 %116, i32 %119, i32 %122)
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %125 = load i32, i32* @OCFS2_GROUP_ADD_CREDITS, align 4
  %126 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %124, i32 %125)
  store i32* %126, i32** %7, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @IS_ERR(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %109
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @PTR_ERR(i32* %131)
  %133 = call i32 @mlog_errno(i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %308

136:                                              ; preds = %109
  %137 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %138 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @le16_to_cpu(i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %144 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store %struct.ocfs2_chain_list* %145, %struct.ocfs2_chain_list** %14, align 8
  %146 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %147 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %146, i32 0, i32 1
  %148 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %147, align 8
  %149 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %150 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %148, i64 %151
  store %struct.ocfs2_chain_rec* %152, %struct.ocfs2_chain_rec** %15, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.inode*, %struct.inode** %9, align 8
  %155 = call i32 @INODE_CACHE(%struct.inode* %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %157 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %158 = call i32 @ocfs2_journal_access_gd(i32* %153, i32 %155, %struct.buffer_head* %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %136
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @mlog_errno(i32 %162)
  br label %304

164:                                              ; preds = %136
  %165 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %166 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %168, %struct.ocfs2_group_desc** %13, align 8
  %169 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %13, align 8
  %170 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @le64_to_cpu(i8* %171)
  store i32 %172, i32* %17, align 4
  %173 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %174 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %13, align 8
  %177 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %180 = call i32 @ocfs2_journal_dirty(i32* %178, %struct.buffer_head* %179)
  %181 = load i32*, i32** %7, align 8
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call i32 @INODE_CACHE(%struct.inode* %182)
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %186 = call i32 @ocfs2_journal_access_di(i32* %181, i32 %183, %struct.buffer_head* %184, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %164
  %190 = load i32, i32* %17, align 4
  %191 = call i8* @cpu_to_le64(i32 %190)
  %192 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %13, align 8
  %193 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @mlog_errno(i32 %194)
  br label %304

196:                                              ; preds = %164
  %197 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %198 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %201 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @le16_to_cpu(i32 %202)
  %204 = sext i32 %203 to i64
  %205 = icmp eq i64 %199, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %208 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %207, i32 0, i32 0
  %209 = call i32 @le16_add_cpu(i32* %208, i32 1)
  %210 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %211 = call i32 @memset(%struct.ocfs2_chain_rec* %210, i32 0, i32 16)
  br label %212

212:                                              ; preds = %206, %196
  %213 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %214 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @cpu_to_le64(i32 %215)
  %217 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %218 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %220 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %219, i32 0, i32 1
  %221 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %222 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = mul nsw i32 %223, %224
  %226 = call i32 @le32_add_cpu(i32* %220, i32 %225)
  %227 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %228 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %227, i32 0, i32 0
  %229 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %230 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %16, align 4
  %233 = mul nsw i32 %231, %232
  %234 = call i32 @le32_add_cpu(i32* %228, i32 %233)
  %235 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %236 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %240 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = mul nsw i32 %241, %242
  %244 = call i32 @le32_add_cpu(i32* %238, i32 %243)
  %245 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %246 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %250 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %253 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %251, %254
  %256 = load i32, i32* %16, align 4
  %257 = mul nsw i32 %255, %256
  %258 = call i32 @le32_add_cpu(i32* %248, i32 %257)
  %259 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %260 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %259, i32 0, i32 1
  %261 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %262 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @le32_add_cpu(i32* %260, i32 %263)
  %265 = load i32*, i32** %7, align 8
  %266 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %267 = call i32 @ocfs2_journal_dirty(i32* %265, %struct.buffer_head* %266)
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %268)
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = call i32 @spin_lock(i32* %270)
  %272 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %273 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = load %struct.inode*, %struct.inode** %9, align 8
  %277 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %276)
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  %279 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %280 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %279, i32 0, i32 0
  %281 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %282 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %285 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 %283, %286
  %288 = call i32 @le64_add_cpu(i8** %280, i32 %287)
  %289 = load %struct.inode*, %struct.inode** %9, align 8
  %290 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %289)
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = call i32 @spin_unlock(i32* %291)
  %293 = load %struct.inode*, %struct.inode** %9, align 8
  %294 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %295 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @le64_to_cpu(i8* %296)
  %298 = call i32 @i_size_write(%struct.inode* %293, i32 %297)
  %299 = load %struct.inode*, %struct.inode** %9, align 8
  %300 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %301 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @ocfs2_update_super_and_backups(%struct.inode* %299, i32 %302)
  br label %304

304:                                              ; preds = %212, %189, %161
  %305 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %305, i32* %306)
  br label %308

308:                                              ; preds = %304, %130, %106
  %309 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %310 = call i32 @brelse(%struct.buffer_head* %309)
  br label %311

311:                                              ; preds = %308, %87, %74
  %312 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %313 = call i32 @brelse(%struct.buffer_head* %312)
  %314 = load %struct.inode*, %struct.inode** %9, align 8
  %315 = call i32 @ocfs2_inode_unlock(%struct.inode* %314, i32 1)
  br label %316

316:                                              ; preds = %311, %51
  %317 = load %struct.inode*, %struct.inode** %9, align 8
  %318 = call i32 @inode_unlock(%struct.inode* %317)
  %319 = load %struct.inode*, %struct.inode** %9, align 8
  %320 = call i32 @iput(%struct.inode* %319)
  br label %321

321:                                              ; preds = %316, %39
  %322 = load i32, i32* %6, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %321, %29
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(i32, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_verify_group_and_input(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_new_group_input*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_group_add(i64, i64, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_chain_rec*, i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_add_cpu(i8**, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_update_super_and_backups(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
