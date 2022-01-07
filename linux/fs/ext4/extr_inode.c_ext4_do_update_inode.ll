; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_do_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_do_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block*, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.ext4_inode = type { i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ext4_inode_info = type { i32, i32, i32, i32, i32, i32, i8**, i32, i32 }
%struct.TYPE_4__ = type { %struct.buffer_head*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }

@EXT4_STATE_NEW = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@i_ctime = common dso_local global i32 0, align 4
@i_mtime = common dso_local global i32 0, align 4
@i_atime = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i32 0, align 4
@HURD_COMPAT = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_REV = common dso_local global i32 0, align 4
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@i_version_hi = common dso_local global i32 0, align 4
@EXT4_DEF_PROJID = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@SB_LAZYTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_iloc*)* @ext4_do_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_do_update_inode(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc*, align 8
  %7 = alloca %struct.ext4_inode*, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %6, align 8
  %20 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %21 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %20)
  store %struct.ext4_inode* %21, %struct.ext4_inode** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %22)
  store %struct.ext4_inode_info* %23, %struct.ext4_inode_info** %8, align 8
  %24 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %24, i32 0, i32 0
  %26 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  store %struct.buffer_head* %26, %struct.buffer_head** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %31 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %30, i32 0, i32 5
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load i32, i32* @EXT4_STATE_NEW, align 4
  %35 = call i64 @ext4_test_inode_state(%struct.inode* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %3
  %38 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  %42 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(%struct.ext4_inode* %38, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %37, %3
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %52 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %51, i32 0, i32 15
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @i_uid_read(%struct.inode* %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @i_gid_read(%struct.inode* %55)
  store i32 %56, i32* %17, align 4
  %57 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %58 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @from_kprojid(i32* @init_user_ns, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 3
  %63 = load %struct.super_block*, %struct.super_block** %62, align 8
  %64 = load i32, i32* @NO_UID32, align 4
  %65 = call i32 @test_opt(%struct.super_block* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %46
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @low_16_bits(i32 %68)
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %72 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @low_16_bits(i32 %73)
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %79 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %67
  %83 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %84 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %83, i32 0, i32 7
  %85 = call i64 @list_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %88, i32 0, i32 12
  store i8* null, i8** %89, align 8
  %90 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %91 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %90, i32 0, i32 11
  store i8* null, i8** %91, align 8
  br label %103

92:                                               ; preds = %82, %67
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @high_16_bits(i32 %93)
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %97 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %96, i32 0, i32 12
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @high_16_bits(i32 %98)
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %102 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %101, i32 0, i32 11
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %92, %87
  br label %119

104:                                              ; preds = %46
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @fs_high2lowuid(i32 %105)
  %107 = call i8* @cpu_to_le16(i32 %106)
  %108 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %109 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @fs_high2lowgid(i32 %110)
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %114 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %113, i32 0, i32 13
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %116 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %115, i32 0, i32 12
  store i8* null, i8** %116, align 8
  %117 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %118 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %117, i32 0, i32 11
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %104, %103
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %125 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %124, i32 0, i32 10
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @i_ctime, align 4
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %129 = call i32 @EXT4_INODE_SET_XTIME(i32 %126, %struct.inode* %127, %struct.ext4_inode* %128)
  %130 = load i32, i32* @i_mtime, align 4
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %133 = call i32 @EXT4_INODE_SET_XTIME(i32 %130, %struct.inode* %131, %struct.ext4_inode* %132)
  %134 = load i32, i32* @i_atime, align 4
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %137 = call i32 @EXT4_INODE_SET_XTIME(i32 %134, %struct.inode* %135, %struct.ext4_inode* %136)
  %138 = load i32, i32* @i_crtime, align 4
  %139 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %140 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %141 = call i32 @EXT4_EINODE_SET_XTIME(i32 %138, %struct.ext4_inode_info* %139, %struct.ext4_inode* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %144 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %145 = call i32 @ext4_inode_blocks_set(i32* %142, %struct.ext4_inode* %143, %struct.ext4_inode_info* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %119
  %149 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %150 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %149, i32 0, i32 5
  %151 = call i32 @spin_unlock(i32* %150)
  br label %456

152:                                              ; preds = %119
  %153 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %154 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %158 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %157, i32 0, i32 9
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %160 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %164 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %163, i32 0, i32 8
  store i8* %162, i8** %164, align 8
  %165 = load %struct.inode*, %struct.inode** %5, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 3
  %167 = load %struct.super_block*, %struct.super_block** %166, align 8
  %168 = load i32, i32* @HURD_COMPAT, align 4
  %169 = call i32 @test_opt2(%struct.super_block* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @likely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %152
  %176 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %177 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 32
  %180 = call i8* @cpu_to_le16(i32 %179)
  %181 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %182 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %181, i32 0, i32 7
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %175, %152
  %184 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %185 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @cpu_to_le32(i32 %186)
  %188 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %189 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %188, i32 0, i32 6
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %191 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.inode*, %struct.inode** %5, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 3
  %195 = load %struct.super_block*, %struct.super_block** %194, align 8
  %196 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %197 = call i32 @ext4_isize(%struct.super_block* %195, %struct.ext4_inode* %196)
  %198 = icmp ne i32 %192, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %183
  %200 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %201 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %202 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ext4_isize_set(%struct.ext4_inode* %200, i32 %203)
  store i32 1, i32* %14, align 4
  br label %205

205:                                              ; preds = %199, %183
  %206 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %207 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %209, 2147483647
  br i1 %210, label %211, label %227

211:                                              ; preds = %205
  %212 = load %struct.super_block*, %struct.super_block** %10, align 8
  %213 = call i32 @ext4_has_feature_large_file(%struct.super_block* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load %struct.super_block*, %struct.super_block** %10, align 8
  %217 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %216)
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* @EXT4_GOOD_OLD_REV, align 4
  %223 = call i8* @cpu_to_le32(i32 %222)
  %224 = icmp eq i8* %221, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %215, %211
  store i32 1, i32* %15, align 4
  br label %226

226:                                              ; preds = %225, %215
  br label %227

227:                                              ; preds = %226, %205
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @cpu_to_le32(i32 %230)
  %232 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %233 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %232, i32 0, i32 5
  store i8* %231, i8** %233, align 8
  %234 = load %struct.inode*, %struct.inode** %5, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @S_ISCHR(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %227
  %240 = load %struct.inode*, %struct.inode** %5, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @S_ISBLK(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %284

245:                                              ; preds = %239, %227
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @old_valid_dev(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %245
  %252 = load %struct.inode*, %struct.inode** %5, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @old_encode_dev(i32 %254)
  %256 = call i8* @cpu_to_le32(i32 %255)
  %257 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %258 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %257, i32 0, i32 4
  %259 = load i8**, i8*** %258, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 0
  store i8* %256, i8** %260, align 8
  %261 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %262 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %261, i32 0, i32 4
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  store i8* null, i8** %264, align 8
  br label %283

265:                                              ; preds = %245
  %266 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %267 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %266, i32 0, i32 4
  %268 = load i8**, i8*** %267, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 0
  store i8* null, i8** %269, align 8
  %270 = load %struct.inode*, %struct.inode** %5, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @new_encode_dev(i32 %272)
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %276 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %275, i32 0, i32 4
  %277 = load i8**, i8*** %276, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 1
  store i8* %274, i8** %278, align 8
  %279 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %280 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %279, i32 0, i32 4
  %281 = load i8**, i8*** %280, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 2
  store i8* null, i8** %282, align 8
  br label %283

283:                                              ; preds = %265, %251
  br label %312

284:                                              ; preds = %239
  %285 = load %struct.inode*, %struct.inode** %5, align 8
  %286 = call i32 @ext4_has_inline_data(%struct.inode* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %311, label %288

288:                                              ; preds = %284
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %307, %288
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %310

293:                                              ; preds = %289
  %294 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %295 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %294, i32 0, i32 6
  %296 = load i8**, i8*** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  %300 = load i8*, i8** %299, align 8
  %301 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %302 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %301, i32 0, i32 4
  %303 = load i8**, i8*** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  store i8* %300, i8** %306, align 8
  br label %307

307:                                              ; preds = %293
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %13, align 4
  br label %289

310:                                              ; preds = %289
  br label %311

311:                                              ; preds = %310, %284
  br label %312

312:                                              ; preds = %311, %283
  %313 = load %struct.inode*, %struct.inode** %5, align 8
  %314 = getelementptr inbounds %struct.inode, %struct.inode* %313, i32 0, i32 3
  %315 = load %struct.super_block*, %struct.super_block** %314, align 8
  %316 = load i32, i32* @HURD_COMPAT, align 4
  %317 = call i32 @test_opt2(%struct.super_block* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  %321 = call i64 @likely(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %354

323:                                              ; preds = %312
  %324 = load %struct.inode*, %struct.inode** %5, align 8
  %325 = call i32 @ext4_inode_peek_iversion(%struct.inode* %324)
  store i32 %325, i32* %19, align 4
  %326 = load i32, i32* %19, align 4
  %327 = call i8* @cpu_to_le32(i32 %326)
  %328 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %329 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %328, i32 0, i32 3
  store i8* %327, i8** %329, align 8
  %330 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %331 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %353

334:                                              ; preds = %323
  %335 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %336 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %337 = load i32, i32* @i_version_hi, align 4
  %338 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %335, %struct.ext4_inode_info* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %334
  %341 = load i32, i32* %19, align 4
  %342 = ashr i32 %341, 32
  %343 = call i8* @cpu_to_le32(i32 %342)
  %344 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %345 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %344, i32 0, i32 2
  store i8* %343, i8** %345, align 8
  br label %346

346:                                              ; preds = %340, %334
  %347 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %348 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = call i8* @cpu_to_le16(i32 %349)
  %351 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %352 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %351, i32 0, i32 1
  store i8* %350, i8** %352, align 8
  br label %353

353:                                              ; preds = %346, %323
  br label %354

354:                                              ; preds = %353, %312
  %355 = load %struct.inode*, %struct.inode** %5, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 3
  %357 = load %struct.super_block*, %struct.super_block** %356, align 8
  %358 = call i32 @ext4_has_feature_project(%struct.super_block* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %354
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* @EXT4_DEF_PROJID, align 4
  %363 = icmp ne i32 %361, %362
  br label %364

364:                                              ; preds = %360, %354
  %365 = phi i1 [ false, %354 ], [ %363, %360 ]
  %366 = zext i1 %365 to i32
  %367 = call i32 @BUG_ON(i32 %366)
  %368 = load %struct.inode*, %struct.inode** %5, align 8
  %369 = getelementptr inbounds %struct.inode, %struct.inode* %368, i32 0, i32 3
  %370 = load %struct.super_block*, %struct.super_block** %369, align 8
  %371 = call i64 @EXT4_INODE_SIZE(%struct.super_block* %370)
  %372 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %373 = icmp sgt i64 %371, %372
  br i1 %373, label %374, label %385

374:                                              ; preds = %364
  %375 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %376 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %377 = load i32, i32* %18, align 4
  %378 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %375, %struct.ext4_inode_info* %376, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %374
  %381 = load i32, i32* %18, align 4
  %382 = call i8* @cpu_to_le32(i32 %381)
  %383 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %384 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %383, i32 0, i32 0
  store i8* %382, i8** %384, align 8
  br label %385

385:                                              ; preds = %380, %374, %364
  %386 = load %struct.inode*, %struct.inode** %5, align 8
  %387 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %388 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %389 = call i32 @ext4_inode_csum_set(%struct.inode* %386, %struct.ext4_inode* %387, %struct.ext4_inode_info* %388)
  %390 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %391 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %390, i32 0, i32 5
  %392 = call i32 @spin_unlock(i32* %391)
  %393 = load %struct.inode*, %struct.inode** %5, align 8
  %394 = getelementptr inbounds %struct.inode, %struct.inode* %393, i32 0, i32 3
  %395 = load %struct.super_block*, %struct.super_block** %394, align 8
  %396 = getelementptr inbounds %struct.super_block, %struct.super_block* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @SB_LAZYTIME, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %412

401:                                              ; preds = %385
  %402 = load %struct.inode*, %struct.inode** %5, align 8
  %403 = getelementptr inbounds %struct.inode, %struct.inode* %402, i32 0, i32 3
  %404 = load %struct.super_block*, %struct.super_block** %403, align 8
  %405 = load %struct.inode*, %struct.inode** %5, align 8
  %406 = getelementptr inbounds %struct.inode, %struct.inode* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %409 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @ext4_update_other_inodes_time(%struct.super_block* %404, i32 %407, i32 %410)
  br label %412

412:                                              ; preds = %401, %385
  %413 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %414 = call i32 @BUFFER_TRACE(%struct.buffer_head* %413, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %415 = load i32*, i32** %4, align 8
  %416 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %417 = call i32 @ext4_handle_dirty_metadata(i32* %415, i32* null, %struct.buffer_head* %416)
  store i32 %417, i32* %12, align 4
  %418 = load i32, i32* %11, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %412
  %421 = load i32, i32* %12, align 4
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %420, %412
  %423 = load %struct.inode*, %struct.inode** %5, align 8
  %424 = load i32, i32* @EXT4_STATE_NEW, align 4
  %425 = call i32 @ext4_clear_inode_state(%struct.inode* %423, i32 %424)
  %426 = load i32, i32* %15, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %451

428:                                              ; preds = %422
  %429 = load %struct.super_block*, %struct.super_block** %10, align 8
  %430 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %429)
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load %struct.buffer_head*, %struct.buffer_head** %431, align 8
  %433 = call i32 @BUFFER_TRACE(%struct.buffer_head* %432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %434 = load i32*, i32** %4, align 8
  %435 = load %struct.super_block*, %struct.super_block** %10, align 8
  %436 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %435)
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  %438 = load %struct.buffer_head*, %struct.buffer_head** %437, align 8
  %439 = call i32 @ext4_journal_get_write_access(i32* %434, %struct.buffer_head* %438)
  store i32 %439, i32* %11, align 4
  %440 = load i32, i32* %11, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %428
  br label %456

443:                                              ; preds = %428
  %444 = load %struct.super_block*, %struct.super_block** %10, align 8
  %445 = call i32 @ext4_set_feature_large_file(%struct.super_block* %444)
  %446 = load i32*, i32** %4, align 8
  %447 = call i32 @ext4_handle_sync(i32* %446)
  %448 = load i32*, i32** %4, align 8
  %449 = load %struct.super_block*, %struct.super_block** %10, align 8
  %450 = call i32 @ext4_handle_dirty_super(i32* %448, %struct.super_block* %449)
  store i32 %450, i32* %11, align 4
  br label %451

451:                                              ; preds = %443, %422
  %452 = load i32*, i32** %4, align 8
  %453 = load %struct.inode*, %struct.inode** %5, align 8
  %454 = load i32, i32* %14, align 4
  %455 = call i32 @ext4_update_inode_fsync_trans(i32* %452, %struct.inode* %453, i32 %454)
  br label %456

456:                                              ; preds = %451, %442, %148
  %457 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %458 = call i32 @brelse(%struct.buffer_head* %457)
  %459 = load %struct.inode*, %struct.inode** %5, align 8
  %460 = getelementptr inbounds %struct.inode, %struct.inode* %459, i32 0, i32 3
  %461 = load %struct.super_block*, %struct.super_block** %460, align 8
  %462 = load i32, i32* %11, align 4
  %463 = call i32 @ext4_std_error(%struct.super_block* %461, i32 %462)
  %464 = load i32, i32* %11, align 4
  ret i32 %464
}

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.ext4_inode*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @from_kprojid(i32*, i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @low_16_bits(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @high_16_bits(i32) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i32 @EXT4_INODE_SET_XTIME(i32, %struct.inode*, %struct.ext4_inode*) #1

declare dso_local i32 @EXT4_EINODE_SET_XTIME(i32, %struct.ext4_inode_info*, %struct.ext4_inode*) #1

declare dso_local i32 @ext4_inode_blocks_set(i32*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_opt2(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_isize(%struct.super_block*, %struct.ext4_inode*) #1

declare dso_local i32 @ext4_isize_set(%struct.ext4_inode*, i32) #1

declare dso_local i32 @ext4_has_feature_large_file(%struct.super_block*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_inode_peek_iversion(%struct.inode*) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_feature_project(%struct.super_block*) #1

declare dso_local i64 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local i32 @ext4_inode_csum_set(%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i32 @ext4_update_other_inodes_time(%struct.super_block*, i32, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_set_feature_large_file(%struct.super_block*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_handle_dirty_super(i32*, %struct.super_block*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
