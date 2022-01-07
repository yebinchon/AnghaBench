; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32, i32, i64, i64, i8*, %struct.super_block*, i32*, i32, i32*, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { i32*, i32 }
%struct.ext4_inode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64 }
%struct.ext4_inode_info = type { i32, i64, i64, i64, i64*, i8*, i8*, i32, i32, i32, i64, i32, i64, i64, i32, i8* }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.ext4_sb_info = type { i32, i8*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }

@EXT4_IGET_SPECIAL = common dso_local global i32 0, align 4
@EXT4_ROOT_INO = common dso_local global i64 0, align 8
@EXT4_IGET_HANDLE = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"inode #%lu: comm %s: iget: illegal inode #\00", align 1
@current = common dso_local global %struct.TYPE_8__* null, align 8
@EFSCORRUPTED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"iget: root inode unallocated\00", align 1
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"iget: bad extra_isize %u (inode size %u)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"iget: checksum invalid\00", align 1
@EFSBADCRC = common dso_local global i64 0, align 8
@EXT4_DEF_PROJID = common dso_local global i64 0, align 8
@NO_UID32 = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@EXT4_ORPHAN_FS = common dso_local global i32 0, align 4
@EXT4_BOOT_LOADER_INO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"iget: bad i_size value: %lld\00", align 1
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@i_ctime = common dso_local global i32 0, align 4
@i_mtime = common dso_local global i32 0, align 4
@i_atime = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i32 0, align 4
@HURD_COMPAT = common dso_local global i32 0, align 4
@i_version_hi = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"iget: bad extended attribute block %llu\00", align 1
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_file_inode_operations = common dso_local global i32 0, align 4
@ext4_file_operations = common dso_local global i32 0, align 4
@ext4_dir_inode_operations = common dso_local global i32 0, align 4
@ext4_dir_operations = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"iget: immutable or append flags not allowed on symlinks\00", align 1
@ext4_encrypted_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_special_inode_operations = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"iget: bogus i_mode (%o)\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"casefold flag without casefold feature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @__ext4_iget(%struct.super_block* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_iloc, align 8
  %13 = alloca %struct.ext4_inode*, align 8
  %14 = alloca %struct.ext4_inode_info*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.ext4_sb_info*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %16, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @EXT4_IGET_SPECIAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %5
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.super_block*, %struct.super_block** %7, align 8
  %41 = call i64 @EXT4_FIRST_INO(%struct.super_block* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @EXT4_ROOT_INO, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %43, %38, %5
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @EXT4_ROOT_INO, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.super_block*, %struct.super_block** %7, align 8
  %54 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @le32_to_cpu(i64 %58)
  %60 = icmp ugt i64 %52, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %51, %47, %43
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EXT4_IGET_HANDLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @ESTALE, align 8
  %68 = sub nsw i64 0, %67
  %69 = call %struct.inode* @ERR_PTR(i64 %68)
  store %struct.inode* %69, %struct.inode** %6, align 8
  br label %832

70:                                               ; preds = %61
  %71 = load %struct.super_block*, %struct.super_block** %7, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__ext4_error(%struct.super_block* %71, i8* %72, i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %77)
  %79 = load i64, i64* @EFSCORRUPTED, align 8
  %80 = sub nsw i64 0, %79
  %81 = call %struct.inode* @ERR_PTR(i64 %80)
  store %struct.inode* %81, %struct.inode** %6, align 8
  br label %832

82:                                               ; preds = %51
  %83 = load %struct.super_block*, %struct.super_block** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call %struct.inode* @iget_locked(%struct.super_block* %83, i64 %84)
  store %struct.inode* %85, %struct.inode** %15, align 8
  %86 = load %struct.inode*, %struct.inode** %15, align 8
  %87 = icmp ne %struct.inode* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* @ENOMEM, align 8
  %90 = sub nsw i64 0, %89
  %91 = call %struct.inode* @ERR_PTR(i64 %90)
  store %struct.inode* %91, %struct.inode** %6, align 8
  br label %832

92:                                               ; preds = %82
  %93 = load %struct.inode*, %struct.inode** %15, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @I_NEW, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %100, %struct.inode** %6, align 8
  br label %832

101:                                              ; preds = %92
  %102 = load %struct.inode*, %struct.inode** %15, align 8
  %103 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %102)
  store %struct.ext4_inode_info* %103, %struct.ext4_inode_info** %14, align 8
  %104 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %12, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %15, align 8
  %106 = call i64 @__ext4_get_inode_loc(%struct.inode* %105, %struct.ext4_iloc* %12, i32 0)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %824

110:                                              ; preds = %101
  %111 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %12)
  store %struct.ext4_inode* %111, %struct.ext4_inode** %13, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @EXT4_ROOT_INO, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %117 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.inode*, %struct.inode** %15, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %121, i8* %122, i32 %123, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i64, i64* @EFSCORRUPTED, align 8
  %126 = sub nsw i64 0, %125
  store i64 %126, i64* %17, align 8
  br label %824

127:                                              ; preds = %115, %110
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @EXT4_IGET_HANDLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %134 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %139 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i64, i64* @ESTALE, align 8
  %144 = sub nsw i64 0, %143
  store i64 %144, i64* %17, align 8
  br label %824

145:                                              ; preds = %137, %132, %127
  %146 = load %struct.inode*, %struct.inode** %15, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 5
  %148 = load %struct.super_block*, %struct.super_block** %147, align 8
  %149 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %148)
  %150 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %190

152:                                              ; preds = %145
  %153 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %154 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @le16_to_cpu(i64 %155)
  %157 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %158 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %160 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %161 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = load %struct.inode*, %struct.inode** %15, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 5
  %166 = load %struct.super_block*, %struct.super_block** %165, align 8
  %167 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %166)
  %168 = icmp sgt i32 %163, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %152
  %170 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %171 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %169, %152
  %176 = load %struct.inode*, %struct.inode** %15, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %180 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.inode*, %struct.inode** %15, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 5
  %184 = load %struct.super_block*, %struct.super_block** %183, align 8
  %185 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %184)
  %186 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %176, i8* %177, i32 %178, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %185)
  %187 = load i64, i64* @EFSCORRUPTED, align 8
  %188 = sub nsw i64 0, %187
  store i64 %188, i64* %17, align 8
  br label %824

189:                                              ; preds = %169
  br label %193

190:                                              ; preds = %145
  %191 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %192 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %189
  %194 = load %struct.super_block*, %struct.super_block** %7, align 8
  %195 = call i64 @ext4_has_metadata_csum(%struct.super_block* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %221

197:                                              ; preds = %193
  %198 = load %struct.inode*, %struct.inode** %15, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 5
  %200 = load %struct.super_block*, %struct.super_block** %199, align 8
  %201 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %200)
  store %struct.ext4_sb_info* %201, %struct.ext4_sb_info** %23, align 8
  %202 = load %struct.inode*, %struct.inode** %15, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @cpu_to_le32(i32 %204)
  store i64 %205, i64* %25, align 8
  %206 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %207 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %206, i32 0, i32 11
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %26, align 8
  %209 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %23, align 8
  %210 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %23, align 8
  %211 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = bitcast i64* %25 to i32*
  %214 = call i8* @ext4_chksum(%struct.ext4_sb_info* %209, i8* %212, i32* %213, i32 8)
  store i8* %214, i8** %24, align 8
  %215 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %23, align 8
  %216 = load i8*, i8** %24, align 8
  %217 = bitcast i64* %26 to i32*
  %218 = call i8* @ext4_chksum(%struct.ext4_sb_info* %215, i8* %216, i32* %217, i32 8)
  %219 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %220 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %219, i32 0, i32 15
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %197, %193
  %222 = load %struct.inode*, %struct.inode** %15, align 8
  %223 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %224 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %225 = call i32 @ext4_inode_csum_verify(%struct.inode* %222, %struct.ext4_inode* %223, %struct.ext4_inode_info* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %221
  %228 = load %struct.inode*, %struct.inode** %15, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* %11, align 4
  %231 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %228, i8* %229, i32 %230, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %232 = load i64, i64* @EFSBADCRC, align 8
  %233 = sub nsw i64 0, %232
  store i64 %233, i64* %17, align 8
  br label %824

234:                                              ; preds = %221
  %235 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %236 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @le16_to_cpu(i64 %237)
  %239 = load %struct.inode*, %struct.inode** %15, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %242 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @le16_to_cpu(i64 %243)
  store i32 %244, i32* %20, align 4
  %245 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %246 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @le16_to_cpu(i64 %247)
  store i32 %248, i32* %21, align 4
  %249 = load %struct.super_block*, %struct.super_block** %7, align 8
  %250 = call i64 @ext4_has_feature_project(%struct.super_block* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %234
  %253 = load %struct.super_block*, %struct.super_block** %7, align 8
  %254 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %253)
  %255 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %259 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %260 = load i64, i64* %22, align 8
  %261 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %258, %struct.ext4_inode_info* %259, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %265 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %264, i32 0, i32 15
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @le32_to_cpu(i64 %266)
  store i64 %267, i64* %22, align 8
  br label %270

268:                                              ; preds = %257, %252, %234
  %269 = load i64, i64* @EXT4_DEF_PROJID, align 8
  store i64 %269, i64* %22, align 8
  br label %270

270:                                              ; preds = %268, %263
  %271 = load %struct.inode*, %struct.inode** %15, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 5
  %273 = load %struct.super_block*, %struct.super_block** %272, align 8
  %274 = load i32, i32* @NO_UID32, align 4
  %275 = call i32 @test_opt(%struct.super_block* %273, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %292, label %277

277:                                              ; preds = %270
  %278 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %279 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @le16_to_cpu(i64 %280)
  %282 = shl i32 %281, 16
  %283 = load i32, i32* %20, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %20, align 4
  %285 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %286 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %285, i32 0, i32 6
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @le16_to_cpu(i64 %287)
  %289 = shl i32 %288, 16
  %290 = load i32, i32* %21, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %21, align 4
  br label %292

292:                                              ; preds = %277, %270
  %293 = load %struct.inode*, %struct.inode** %15, align 8
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @i_uid_write(%struct.inode* %293, i32 %294)
  %296 = load %struct.inode*, %struct.inode** %15, align 8
  %297 = load i32, i32* %21, align 4
  %298 = call i32 @i_gid_write(%struct.inode* %296, i32 %297)
  %299 = load i64, i64* %22, align 8
  %300 = call i32 @make_kprojid(i32* @init_user_ns, i64 %299)
  %301 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %302 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %301, i32 0, i32 14
  store i32 %300, i32* %302, align 8
  %303 = load %struct.inode*, %struct.inode** %15, align 8
  %304 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %305 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @le16_to_cpu(i64 %306)
  %308 = call i32 @set_nlink(%struct.inode* %303, i32 %307)
  %309 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %310 = call i32 @ext4_clear_state_flags(%struct.ext4_inode_info* %309)
  %311 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %312 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %311, i32 0, i32 13
  store i64 0, i64* %312, align 8
  %313 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %314 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %313, i32 0, i32 12
  store i64 0, i64* %314, align 8
  %315 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %316 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %315, i32 0, i32 14
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @le32_to_cpu(i64 %317)
  %319 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %320 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %319, i32 0, i32 1
  store i64 %318, i64* %320, align 8
  %321 = load %struct.inode*, %struct.inode** %15, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %348

325:                                              ; preds = %292
  %326 = load %struct.inode*, %struct.inode** %15, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %340, label %330

330:                                              ; preds = %325
  %331 = load %struct.inode*, %struct.inode** %15, align 8
  %332 = getelementptr inbounds %struct.inode, %struct.inode* %331, i32 0, i32 5
  %333 = load %struct.super_block*, %struct.super_block** %332, align 8
  %334 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %333)
  %335 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @EXT4_ORPHAN_FS, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %330, %325
  %341 = load i64, i64* %8, align 8
  %342 = load i64, i64* @EXT4_BOOT_LOADER_INO, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = load i64, i64* @ESTALE, align 8
  %346 = sub nsw i64 0, %345
  store i64 %346, i64* %17, align 8
  br label %824

347:                                              ; preds = %340, %330
  br label %348

348:                                              ; preds = %347, %292
  %349 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %350 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %349, i32 0, i32 13
  %351 = load i64, i64* %350, align 8
  %352 = call i64 @le32_to_cpu(i64 %351)
  %353 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %354 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %353, i32 0, i32 2
  store i64 %352, i64* %354, align 8
  %355 = load %struct.inode*, %struct.inode** %15, align 8
  %356 = call i32 @ext4_set_inode_flags(%struct.inode* %355)
  %357 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %358 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %359 = call i32 @ext4_inode_blocks(%struct.ext4_inode* %357, %struct.ext4_inode_info* %358)
  %360 = load %struct.inode*, %struct.inode** %15, align 8
  %361 = getelementptr inbounds %struct.inode, %struct.inode* %360, i32 0, i32 9
  store i32 %359, i32* %361, align 8
  %362 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %363 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %362, i32 0, i32 12
  %364 = load i64, i64* %363, align 8
  %365 = call i64 @le32_to_cpu(i64 %364)
  %366 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %367 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %366, i32 0, i32 3
  store i64 %365, i64* %367, align 8
  %368 = load %struct.super_block*, %struct.super_block** %7, align 8
  %369 = call i64 @ext4_has_feature_64bit(%struct.super_block* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %382

371:                                              ; preds = %348
  %372 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %373 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %372, i32 0, i32 7
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @le16_to_cpu(i64 %374)
  %376 = shl i32 %375, 32
  %377 = sext i32 %376 to i64
  %378 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %379 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = or i64 %380, %377
  store i64 %381, i64* %379, align 8
  br label %382

382:                                              ; preds = %371, %348
  %383 = load %struct.super_block*, %struct.super_block** %7, align 8
  %384 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %385 = call i32 @ext4_isize(%struct.super_block* %383, %struct.ext4_inode* %384)
  %386 = load %struct.inode*, %struct.inode** %15, align 8
  %387 = getelementptr inbounds %struct.inode, %struct.inode* %386, i32 0, i32 7
  store i32 %385, i32* %387, align 8
  %388 = load %struct.inode*, %struct.inode** %15, align 8
  %389 = call i32 @i_size_read(%struct.inode* %388)
  store i32 %389, i32* %18, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %399

391:                                              ; preds = %382
  %392 = load %struct.inode*, %struct.inode** %15, align 8
  %393 = load i8*, i8** %10, align 8
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %18, align 4
  %396 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %392, i8* %393, i32 %394, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %395)
  %397 = load i64, i64* @EFSCORRUPTED, align 8
  %398 = sub nsw i64 0, %397
  store i64 %398, i64* %17, align 8
  br label %824

399:                                              ; preds = %382
  %400 = load %struct.inode*, %struct.inode** %15, align 8
  %401 = getelementptr inbounds %struct.inode, %struct.inode* %400, i32 0, i32 7
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %404 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %403, i32 0, i32 11
  store i32 %402, i32* %404, align 8
  %405 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %406 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %405, i32 0, i32 11
  %407 = load i64, i64* %406, align 8
  %408 = call i64 @le32_to_cpu(i64 %407)
  %409 = load %struct.inode*, %struct.inode** %15, align 8
  %410 = getelementptr inbounds %struct.inode, %struct.inode* %409, i32 0, i32 3
  store i64 %408, i64* %410, align 8
  %411 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %12, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %414 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %413, i32 0, i32 9
  store i32 %412, i32* %414, align 8
  %415 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %416 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %415, i32 0, i32 8
  store i32 -1, i32* %416, align 4
  store i32 0, i32* %19, align 4
  br label %417

417:                                              ; preds = %435, %399
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %438

421:                                              ; preds = %417
  %422 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %423 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %422, i32 0, i32 8
  %424 = load i64*, i64** %423, align 8
  %425 = load i32, i32* %19, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i64, i64* %424, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %430 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %429, i32 0, i32 4
  %431 = load i64*, i64** %430, align 8
  %432 = load i32, i32* %19, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  store i64 %428, i64* %434, align 8
  br label %435

435:                                              ; preds = %421
  %436 = load i32, i32* %19, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %19, align 4
  br label %417

438:                                              ; preds = %417
  %439 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %440 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %439, i32 0, i32 7
  %441 = call i32 @INIT_LIST_HEAD(i32* %440)
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %443 = icmp ne %struct.TYPE_7__* %442, null
  br i1 %443, label %444, label %481

444:                                              ; preds = %438
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 0
  %447 = call i32 @read_lock(i32* %446)
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 3
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %449, align 8
  %451 = icmp ne %struct.TYPE_6__* %450, null
  br i1 %451, label %452, label %456

452:                                              ; preds = %444
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 3
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %454, align 8
  store %struct.TYPE_6__* %455, %struct.TYPE_6__** %27, align 8
  br label %460

456:                                              ; preds = %444
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 2
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %458, align 8
  store %struct.TYPE_6__* %459, %struct.TYPE_6__** %27, align 8
  br label %460

460:                                              ; preds = %456, %452
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %462 = icmp ne %struct.TYPE_6__* %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 0
  %466 = load i8*, i8** %465, align 8
  store i8* %466, i8** %28, align 8
  br label %471

467:                                              ; preds = %460
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 1
  %470 = load i8*, i8** %469, align 8
  store i8* %470, i8** %28, align 8
  br label %471

471:                                              ; preds = %467, %463
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 0
  %474 = call i32 @read_unlock(i32* %473)
  %475 = load i8*, i8** %28, align 8
  %476 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %477 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %476, i32 0, i32 6
  store i8* %475, i8** %477, align 8
  %478 = load i8*, i8** %28, align 8
  %479 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %480 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %479, i32 0, i32 5
  store i8* %478, i8** %480, align 8
  br label %481

481:                                              ; preds = %471, %438
  %482 = load %struct.inode*, %struct.inode** %15, align 8
  %483 = getelementptr inbounds %struct.inode, %struct.inode* %482, i32 0, i32 5
  %484 = load %struct.super_block*, %struct.super_block** %483, align 8
  %485 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %484)
  %486 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %487 = icmp sgt i32 %485, %486
  br i1 %487, label %488, label %511

488:                                              ; preds = %481
  %489 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %490 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %488
  %494 = call i32 @BUILD_BUG_ON(i32 0)
  %495 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %496 = sext i32 %495 to i64
  %497 = sub i64 128, %496
  %498 = trunc i64 %497 to i32
  %499 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %500 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %499, i32 0, i32 0
  store i32 %498, i32* %500, align 8
  br label %510

501:                                              ; preds = %488
  %502 = load %struct.inode*, %struct.inode** %15, align 8
  %503 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %504 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %505 = call i64 @ext4_iget_extra_inode(%struct.inode* %502, %struct.ext4_inode* %503, %struct.ext4_inode_info* %504)
  store i64 %505, i64* %17, align 8
  %506 = load i64, i64* %17, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %501
  br label %824

509:                                              ; preds = %501
  br label %510

510:                                              ; preds = %509, %493
  br label %511

511:                                              ; preds = %510, %481
  %512 = load i32, i32* @i_ctime, align 4
  %513 = load %struct.inode*, %struct.inode** %15, align 8
  %514 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %515 = call i32 @EXT4_INODE_GET_XTIME(i32 %512, %struct.inode* %513, %struct.ext4_inode* %514)
  %516 = load i32, i32* @i_mtime, align 4
  %517 = load %struct.inode*, %struct.inode** %15, align 8
  %518 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %519 = call i32 @EXT4_INODE_GET_XTIME(i32 %516, %struct.inode* %517, %struct.ext4_inode* %518)
  %520 = load i32, i32* @i_atime, align 4
  %521 = load %struct.inode*, %struct.inode** %15, align 8
  %522 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %523 = call i32 @EXT4_INODE_GET_XTIME(i32 %520, %struct.inode* %521, %struct.ext4_inode* %522)
  %524 = load i32, i32* @i_crtime, align 4
  %525 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %526 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %527 = call i32 @EXT4_EINODE_GET_XTIME(i32 %524, %struct.ext4_inode_info* %525, %struct.ext4_inode* %526)
  %528 = load %struct.inode*, %struct.inode** %15, align 8
  %529 = getelementptr inbounds %struct.inode, %struct.inode* %528, i32 0, i32 5
  %530 = load %struct.super_block*, %struct.super_block** %529, align 8
  %531 = load i32, i32* @HURD_COMPAT, align 4
  %532 = call i32 @test_opt2(%struct.super_block* %530, i32 %531)
  %533 = icmp ne i32 %532, 0
  %534 = xor i1 %533, true
  %535 = zext i1 %534 to i32
  %536 = call i64 @likely(i32 %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %570

538:                                              ; preds = %511
  %539 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %540 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %539, i32 0, i32 10
  %541 = load i64, i64* %540, align 8
  %542 = call i64 @le32_to_cpu(i64 %541)
  %543 = trunc i64 %542 to i32
  store i32 %543, i32* %29, align 4
  %544 = load %struct.inode*, %struct.inode** %15, align 8
  %545 = getelementptr inbounds %struct.inode, %struct.inode* %544, i32 0, i32 5
  %546 = load %struct.super_block*, %struct.super_block** %545, align 8
  %547 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %546)
  %548 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %549 = icmp sgt i32 %547, %548
  br i1 %549, label %550, label %566

550:                                              ; preds = %538
  %551 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %552 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %553 = load i64, i64* @i_version_hi, align 8
  %554 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %551, %struct.ext4_inode_info* %552, i64 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %565

556:                                              ; preds = %550
  %557 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %558 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %557, i32 0, i32 9
  %559 = load i64, i64* %558, align 8
  %560 = call i64 @le32_to_cpu(i64 %559)
  %561 = trunc i64 %560 to i32
  %562 = shl i32 %561, 32
  %563 = load i32, i32* %29, align 4
  %564 = or i32 %563, %562
  store i32 %564, i32* %29, align 4
  br label %565

565:                                              ; preds = %556, %550
  br label %566

566:                                              ; preds = %565, %538
  %567 = load %struct.inode*, %struct.inode** %15, align 8
  %568 = load i32, i32* %29, align 4
  %569 = call i32 @ext4_inode_set_iversion_queried(%struct.inode* %567, i32 %568)
  br label %570

570:                                              ; preds = %566, %511
  store i64 0, i64* %17, align 8
  %571 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %572 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %571, i32 0, i32 3
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %594

575:                                              ; preds = %570
  %576 = load %struct.super_block*, %struct.super_block** %7, align 8
  %577 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %576)
  %578 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %579 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = trunc i64 %580 to i32
  %582 = call i32 @ext4_data_block_valid(%struct.ext4_sb_info* %577, i32 %581, i32 1)
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %594, label %584

584:                                              ; preds = %575
  %585 = load %struct.inode*, %struct.inode** %15, align 8
  %586 = load i8*, i8** %10, align 8
  %587 = load i32, i32* %11, align 4
  %588 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %589 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %588, i32 0, i32 3
  %590 = load i64, i64* %589, align 8
  %591 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %585, i8* %586, i32 %587, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %590)
  %592 = load i64, i64* @EFSCORRUPTED, align 8
  %593 = sub nsw i64 0, %592
  store i64 %593, i64* %17, align 8
  br label %824

594:                                              ; preds = %575, %570
  %595 = load %struct.inode*, %struct.inode** %15, align 8
  %596 = call i32 @ext4_has_inline_data(%struct.inode* %595)
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %633, label %598

598:                                              ; preds = %594
  %599 = load %struct.inode*, %struct.inode** %15, align 8
  %600 = getelementptr inbounds %struct.inode, %struct.inode* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = call i64 @S_ISREG(i32 %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %620, label %604

604:                                              ; preds = %598
  %605 = load %struct.inode*, %struct.inode** %15, align 8
  %606 = getelementptr inbounds %struct.inode, %struct.inode* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = call i64 @S_ISDIR(i32 %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %620, label %610

610:                                              ; preds = %604
  %611 = load %struct.inode*, %struct.inode** %15, align 8
  %612 = getelementptr inbounds %struct.inode, %struct.inode* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 4
  %614 = call i64 @S_ISLNK(i32 %613)
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %632

616:                                              ; preds = %610
  %617 = load %struct.inode*, %struct.inode** %15, align 8
  %618 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %617)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %632, label %620

620:                                              ; preds = %616, %604, %598
  %621 = load %struct.inode*, %struct.inode** %15, align 8
  %622 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %623 = call i64 @ext4_test_inode_flag(%struct.inode* %621, i32 %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %628

625:                                              ; preds = %620
  %626 = load %struct.inode*, %struct.inode** %15, align 8
  %627 = call i64 @ext4_ext_check_inode(%struct.inode* %626)
  store i64 %627, i64* %17, align 8
  br label %631

628:                                              ; preds = %620
  %629 = load %struct.inode*, %struct.inode** %15, align 8
  %630 = call i64 @ext4_ind_check_inode(%struct.inode* %629)
  store i64 %630, i64* %17, align 8
  br label %631

631:                                              ; preds = %628, %625
  br label %632

632:                                              ; preds = %631, %616, %610
  br label %633

633:                                              ; preds = %632, %594
  br label %634

634:                                              ; preds = %633
  %635 = load i64, i64* %17, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %634
  br label %824

638:                                              ; preds = %634
  %639 = load %struct.inode*, %struct.inode** %15, align 8
  %640 = getelementptr inbounds %struct.inode, %struct.inode* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = call i64 @S_ISREG(i32 %641)
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %651

644:                                              ; preds = %638
  %645 = load %struct.inode*, %struct.inode** %15, align 8
  %646 = getelementptr inbounds %struct.inode, %struct.inode* %645, i32 0, i32 6
  store i32* @ext4_file_inode_operations, i32** %646, align 8
  %647 = load %struct.inode*, %struct.inode** %15, align 8
  %648 = getelementptr inbounds %struct.inode, %struct.inode* %647, i32 0, i32 8
  store i32* @ext4_file_operations, i32** %648, align 8
  %649 = load %struct.inode*, %struct.inode** %15, align 8
  %650 = call i32 @ext4_set_aops(%struct.inode* %649)
  br label %802

651:                                              ; preds = %638
  %652 = load %struct.inode*, %struct.inode** %15, align 8
  %653 = getelementptr inbounds %struct.inode, %struct.inode* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = call i64 @S_ISDIR(i32 %654)
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %662

657:                                              ; preds = %651
  %658 = load %struct.inode*, %struct.inode** %15, align 8
  %659 = getelementptr inbounds %struct.inode, %struct.inode* %658, i32 0, i32 6
  store i32* @ext4_dir_inode_operations, i32** %659, align 8
  %660 = load %struct.inode*, %struct.inode** %15, align 8
  %661 = getelementptr inbounds %struct.inode, %struct.inode* %660, i32 0, i32 8
  store i32* @ext4_dir_operations, i32** %661, align 8
  br label %801

662:                                              ; preds = %651
  %663 = load %struct.inode*, %struct.inode** %15, align 8
  %664 = getelementptr inbounds %struct.inode, %struct.inode* %663, i32 0, i32 1
  %665 = load i32, i32* %664, align 4
  %666 = call i64 @S_ISLNK(i32 %665)
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %721

668:                                              ; preds = %662
  %669 = load %struct.inode*, %struct.inode** %15, align 8
  %670 = call i64 @IS_APPEND(%struct.inode* %669)
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %676, label %672

672:                                              ; preds = %668
  %673 = load %struct.inode*, %struct.inode** %15, align 8
  %674 = call i64 @IS_IMMUTABLE(%struct.inode* %673)
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %676, label %683

676:                                              ; preds = %672, %668
  %677 = load %struct.inode*, %struct.inode** %15, align 8
  %678 = load i8*, i8** %10, align 8
  %679 = load i32, i32* %11, align 4
  %680 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %677, i8* %678, i32 %679, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %681 = load i64, i64* @EFSCORRUPTED, align 8
  %682 = sub nsw i64 0, %681
  store i64 %682, i64* %17, align 8
  br label %824

683:                                              ; preds = %672
  %684 = load %struct.inode*, %struct.inode** %15, align 8
  %685 = call i64 @IS_ENCRYPTED(%struct.inode* %684)
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %692

687:                                              ; preds = %683
  %688 = load %struct.inode*, %struct.inode** %15, align 8
  %689 = getelementptr inbounds %struct.inode, %struct.inode* %688, i32 0, i32 6
  store i32* @ext4_encrypted_symlink_inode_operations, i32** %689, align 8
  %690 = load %struct.inode*, %struct.inode** %15, align 8
  %691 = call i32 @ext4_set_aops(%struct.inode* %690)
  br label %718

692:                                              ; preds = %683
  %693 = load %struct.inode*, %struct.inode** %15, align 8
  %694 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %693)
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %712

696:                                              ; preds = %692
  %697 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %698 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %697, i32 0, i32 4
  %699 = load i64*, i64** %698, align 8
  %700 = bitcast i64* %699 to i8*
  %701 = load %struct.inode*, %struct.inode** %15, align 8
  %702 = getelementptr inbounds %struct.inode, %struct.inode* %701, i32 0, i32 4
  store i8* %700, i8** %702, align 8
  %703 = load %struct.inode*, %struct.inode** %15, align 8
  %704 = getelementptr inbounds %struct.inode, %struct.inode* %703, i32 0, i32 6
  store i32* @ext4_fast_symlink_inode_operations, i32** %704, align 8
  %705 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %14, align 8
  %706 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %705, i32 0, i32 4
  %707 = load i64*, i64** %706, align 8
  %708 = load %struct.inode*, %struct.inode** %15, align 8
  %709 = getelementptr inbounds %struct.inode, %struct.inode* %708, i32 0, i32 7
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @nd_terminate_link(i64* %707, i32 %710, i32 7)
  br label %717

712:                                              ; preds = %692
  %713 = load %struct.inode*, %struct.inode** %15, align 8
  %714 = getelementptr inbounds %struct.inode, %struct.inode* %713, i32 0, i32 6
  store i32* @ext4_symlink_inode_operations, i32** %714, align 8
  %715 = load %struct.inode*, %struct.inode** %15, align 8
  %716 = call i32 @ext4_set_aops(%struct.inode* %715)
  br label %717

717:                                              ; preds = %712, %696
  br label %718

718:                                              ; preds = %717, %687
  %719 = load %struct.inode*, %struct.inode** %15, align 8
  %720 = call i32 @inode_nohighmem(%struct.inode* %719)
  br label %800

721:                                              ; preds = %662
  %722 = load %struct.inode*, %struct.inode** %15, align 8
  %723 = getelementptr inbounds %struct.inode, %struct.inode* %722, i32 0, i32 1
  %724 = load i32, i32* %723, align 4
  %725 = call i64 @S_ISCHR(i32 %724)
  %726 = icmp ne i64 %725, 0
  br i1 %726, label %745, label %727

727:                                              ; preds = %721
  %728 = load %struct.inode*, %struct.inode** %15, align 8
  %729 = getelementptr inbounds %struct.inode, %struct.inode* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = call i64 @S_ISBLK(i32 %730)
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %745, label %733

733:                                              ; preds = %727
  %734 = load %struct.inode*, %struct.inode** %15, align 8
  %735 = getelementptr inbounds %struct.inode, %struct.inode* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 4
  %737 = call i64 @S_ISFIFO(i32 %736)
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %745, label %739

739:                                              ; preds = %733
  %740 = load %struct.inode*, %struct.inode** %15, align 8
  %741 = getelementptr inbounds %struct.inode, %struct.inode* %740, i32 0, i32 1
  %742 = load i32, i32* %741, align 4
  %743 = call i64 @S_ISSOCK(i32 %742)
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %781

745:                                              ; preds = %739, %733, %727, %721
  %746 = load %struct.inode*, %struct.inode** %15, align 8
  %747 = getelementptr inbounds %struct.inode, %struct.inode* %746, i32 0, i32 6
  store i32* @ext4_special_inode_operations, i32** %747, align 8
  %748 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %749 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %748, i32 0, i32 8
  %750 = load i64*, i64** %749, align 8
  %751 = getelementptr inbounds i64, i64* %750, i64 0
  %752 = load i64, i64* %751, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %767

754:                                              ; preds = %745
  %755 = load %struct.inode*, %struct.inode** %15, align 8
  %756 = load %struct.inode*, %struct.inode** %15, align 8
  %757 = getelementptr inbounds %struct.inode, %struct.inode* %756, i32 0, i32 1
  %758 = load i32, i32* %757, align 4
  %759 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %760 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %759, i32 0, i32 8
  %761 = load i64*, i64** %760, align 8
  %762 = getelementptr inbounds i64, i64* %761, i64 0
  %763 = load i64, i64* %762, align 8
  %764 = call i64 @le32_to_cpu(i64 %763)
  %765 = call i32 @old_decode_dev(i64 %764)
  %766 = call i32 @init_special_inode(%struct.inode* %755, i32 %758, i32 %765)
  br label %780

767:                                              ; preds = %745
  %768 = load %struct.inode*, %struct.inode** %15, align 8
  %769 = load %struct.inode*, %struct.inode** %15, align 8
  %770 = getelementptr inbounds %struct.inode, %struct.inode* %769, i32 0, i32 1
  %771 = load i32, i32* %770, align 4
  %772 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %773 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %772, i32 0, i32 8
  %774 = load i64*, i64** %773, align 8
  %775 = getelementptr inbounds i64, i64* %774, i64 1
  %776 = load i64, i64* %775, align 8
  %777 = call i64 @le32_to_cpu(i64 %776)
  %778 = call i32 @new_decode_dev(i64 %777)
  %779 = call i32 @init_special_inode(%struct.inode* %768, i32 %771, i32 %778)
  br label %780

780:                                              ; preds = %767, %754
  br label %799

781:                                              ; preds = %739
  %782 = load i64, i64* %8, align 8
  %783 = load i64, i64* @EXT4_BOOT_LOADER_INO, align 8
  %784 = icmp eq i64 %782, %783
  br i1 %784, label %785, label %788

785:                                              ; preds = %781
  %786 = load %struct.inode*, %struct.inode** %15, align 8
  %787 = call i32 @make_bad_inode(%struct.inode* %786)
  br label %798

788:                                              ; preds = %781
  %789 = load i64, i64* @EFSCORRUPTED, align 8
  %790 = sub nsw i64 0, %789
  store i64 %790, i64* %17, align 8
  %791 = load %struct.inode*, %struct.inode** %15, align 8
  %792 = load i8*, i8** %10, align 8
  %793 = load i32, i32* %11, align 4
  %794 = load %struct.inode*, %struct.inode** %15, align 8
  %795 = getelementptr inbounds %struct.inode, %struct.inode* %794, i32 0, i32 1
  %796 = load i32, i32* %795, align 4
  %797 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %791, i8* %792, i32 %793, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %796)
  br label %824

798:                                              ; preds = %785
  br label %799

799:                                              ; preds = %798, %780
  br label %800

800:                                              ; preds = %799, %718
  br label %801

801:                                              ; preds = %800, %657
  br label %802

802:                                              ; preds = %801, %644
  %803 = load %struct.inode*, %struct.inode** %15, align 8
  %804 = call i64 @IS_CASEFOLDED(%struct.inode* %803)
  %805 = icmp ne i64 %804, 0
  br i1 %805, label %806, label %817

806:                                              ; preds = %802
  %807 = load %struct.inode*, %struct.inode** %15, align 8
  %808 = getelementptr inbounds %struct.inode, %struct.inode* %807, i32 0, i32 5
  %809 = load %struct.super_block*, %struct.super_block** %808, align 8
  %810 = call i32 @ext4_has_feature_casefold(%struct.super_block* %809)
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %817, label %812

812:                                              ; preds = %806
  %813 = load %struct.inode*, %struct.inode** %15, align 8
  %814 = load i8*, i8** %10, align 8
  %815 = load i32, i32* %11, align 4
  %816 = call i32 (%struct.inode*, i8*, i32, i32, i8*, ...) @ext4_error_inode(%struct.inode* %813, i8* %814, i32 %815, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %817

817:                                              ; preds = %812, %806, %802
  %818 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %12, i32 0, i32 0
  %819 = load i32*, i32** %818, align 8
  %820 = call i32 @brelse(i32* %819)
  %821 = load %struct.inode*, %struct.inode** %15, align 8
  %822 = call i32 @unlock_new_inode(%struct.inode* %821)
  %823 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %823, %struct.inode** %6, align 8
  br label %832

824:                                              ; preds = %788, %676, %637, %584, %508, %391, %344, %227, %175, %142, %120, %109
  %825 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %12, i32 0, i32 0
  %826 = load i32*, i32** %825, align 8
  %827 = call i32 @brelse(i32* %826)
  %828 = load %struct.inode*, %struct.inode** %15, align 8
  %829 = call i32 @iget_failed(%struct.inode* %828)
  %830 = load i64, i64* %17, align 8
  %831 = call %struct.inode* @ERR_PTR(i64 %830)
  store %struct.inode* %831, %struct.inode** %6, align 8
  br label %832

832:                                              ; preds = %824, %817, %99, %88, %70, %66
  %833 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %833
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local i32 @__ext4_error(%struct.super_block*, i8*, i32, i8*, i64, i32) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @__ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*, i32) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i32 @ext4_error_inode(%struct.inode*, i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i8* @ext4_chksum(%struct.ext4_sb_info*, i8*, i32*, i32) #1

declare dso_local i32 @ext4_inode_csum_verify(%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i64 @ext4_has_feature_project(%struct.super_block*) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i64) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @make_kprojid(i32*, i64) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_state_flags(%struct.ext4_inode_info*) #1

declare dso_local i32 @ext4_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ext4_inode_blocks(%struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i64 @ext4_has_feature_64bit(%struct.super_block*) #1

declare dso_local i32 @ext4_isize(%struct.super_block*, %struct.ext4_inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ext4_iget_extra_inode(%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i32 @EXT4_INODE_GET_XTIME(i32, %struct.inode*, %struct.ext4_inode*) #1

declare dso_local i32 @EXT4_EINODE_GET_XTIME(i32, %struct.ext4_inode_info*, %struct.ext4_inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_opt2(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_inode_set_iversion_queried(%struct.inode*, i32) #1

declare dso_local i32 @ext4_data_block_valid(%struct.ext4_sb_info*, i32, i32) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext4_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @ext4_ext_check_inode(%struct.inode*) #1

declare dso_local i64 @ext4_ind_check_inode(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @nd_terminate_link(i64*, i32, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @old_decode_dev(i64) #1

declare dso_local i32 @new_decode_dev(i64) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i64 @IS_CASEFOLDED(%struct.inode*) #1

declare dso_local i32 @ext4_has_feature_casefold(%struct.super_block*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
