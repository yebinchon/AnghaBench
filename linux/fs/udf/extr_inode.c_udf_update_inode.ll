; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i8, i32 }
%struct.buffer_head = type { %struct.regid* }
%struct.regid = type { i8**, i32 }
%struct.fileEntry = type { %struct.TYPE_17__, %struct.TYPE_15__, i8*, i8*, i8*, i8*, %struct.regid, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i32, i8*, i8*, i8* }
%struct.extendedFileEntry = type { %struct.TYPE_14__, i8*, i8*, i8*, i8*, %struct.regid, i32, i32, i32, i32, %struct.long_ad, i8*, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.long_ad = type { i8*, i32 }
%struct.udf_sb_info = type { i32, i32 }
%struct.udf_inode_info = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_18__, i64, i64, i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.unallocSpaceEntry = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.deviceSpec = type { i32, i8*, i8*, i64, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"getblk failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TAG_IDENT_USE = common dso_local global i32 0, align 4
@UDF_FLAG_UID_FORGET = common dso_local global i32 0, align 4
@UDF_INVALID_ID = common dso_local global i32 0, align 4
@UDF_FLAG_GID_FORGET = common dso_local global i32 0, align 4
@UDF_ID_DEVELOPER = common dso_local global i32 0, align 4
@UDF_OS_CLASS_UNIX = common dso_local global i8* null, align 8
@UDF_OS_ID_LINUX = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i32 0, align 4
@TAG_IDENT_FE = common dso_local global i32 0, align 4
@TAG_IDENT_EFE = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_USE = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_REGULAR = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_SYMLINK = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_BLOCK = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_CHAR = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_FIFO = common dso_local global i32 0, align 4
@ICBTAG_FILE_TYPE_SOCKET = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@ICBTAG_FLAG_STICKY = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"IO error syncing udf inode [%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @udf_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_update_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.fileEntry*, align 8
  %8 = alloca %struct.extendedFileEntry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.udf_sb_info*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.udf_inode_info*, align 8
  %17 = alloca %struct.unallocSpaceEntry*, align 8
  %18 = alloca %struct.regid*, align 8
  %19 = alloca %struct.deviceSpec*, align 8
  %20 = alloca %struct.long_ad*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 5
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = call %struct.udf_sb_info* @UDF_SB(%struct.TYPE_16__* %23)
  store %struct.udf_sb_info* %24, %struct.udf_sb_info** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 5
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  store i8 %29, i8* %15, align 1
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %30)
  store %struct.udf_inode_info* %31, %struct.udf_inode_info** %16, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 5
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %39 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %38, i32 0, i32 8
  %40 = call i32 @udf_get_lb_pblock(%struct.TYPE_16__* %37, %struct.TYPE_18__* %39, i32 0)
  %41 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_16__* %34, i32 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %6, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %2
  %45 = call i32 @udf_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %798

48:                                               ; preds = %2
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = call i32 @lock_buffer(%struct.buffer_head* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load %struct.regid*, %struct.regid** %52, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 5
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(%struct.regid* %53, i32 0, i32 %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load %struct.regid*, %struct.regid** %61, align 8
  %63 = bitcast %struct.regid* %62 to %struct.fileEntry*
  store %struct.fileEntry* %63, %struct.fileEntry** %7, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load %struct.regid*, %struct.regid** %65, align 8
  %67 = bitcast %struct.regid* %66 to %struct.extendedFileEntry*
  store %struct.extendedFileEntry* %67, %struct.extendedFileEntry** %8, align 8
  %68 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %69 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %48
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load %struct.regid*, %struct.regid** %74, align 8
  %76 = bitcast %struct.regid* %75 to %struct.unallocSpaceEntry*
  store %struct.unallocSpaceEntry* %76, %struct.unallocSpaceEntry** %17, align 8
  %77 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %78 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.unallocSpaceEntry*, %struct.unallocSpaceEntry** %17, align 8
  %82 = getelementptr inbounds %struct.unallocSpaceEntry, %struct.unallocSpaceEntry* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load %struct.regid*, %struct.regid** %84, align 8
  %86 = getelementptr inbounds %struct.regid, %struct.regid* %85, i64 16
  %87 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %88 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %87, i32 0, i32 14
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 5
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 16
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(%struct.regid* %86, i32 %90, i32 %98)
  %100 = load i32, i32* @TAG_IDENT_USE, align 4
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = load %struct.unallocSpaceEntry*, %struct.unallocSpaceEntry** %17, align 8
  %103 = getelementptr inbounds %struct.unallocSpaceEntry, %struct.unallocSpaceEntry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  store i32 16, i32* %12, align 4
  br label %525

105:                                              ; preds = %48
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 5
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = load i32, i32* @UDF_FLAG_UID_FORGET, align 4
  %110 = call i64 @UDF_QUERY_FLAG(%struct.TYPE_16__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* @UDF_INVALID_ID, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %116 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %115, i32 0, i32 15
  store i8* %114, i8** %116, align 8
  br label %123

117:                                              ; preds = %105
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = call i32 @i_uid_read(%struct.inode* %118)
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %122 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %121, i32 0, i32 15
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 5
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = load i32, i32* @UDF_FLAG_GID_FORGET, align 4
  %128 = call i64 @UDF_QUERY_FLAG(%struct.TYPE_16__* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32, i32* @UDF_INVALID_ID, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %134 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %133, i32 0, i32 14
  store i8* %132, i8** %134, align 8
  br label %141

135:                                              ; preds = %123
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = call i32 @i_gid_read(%struct.inode* %136)
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %140 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %139, i32 0, i32 14
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %135, %130
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, 7
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 56
  %150 = shl i32 %149, 2
  %151 = or i32 %145, %150
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 448
  %156 = shl i32 %155, 4
  %157 = or i32 %151, %156
  store i32 %157, i32* %10, align 4
  %158 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %159 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %166 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %165, i32 0, i32 13
  store i8* %164, i8** %166, align 8
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @S_ISDIR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %141
  %173 = load %struct.inode*, %struct.inode** %4, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, 1
  %182 = trunc i64 %181 to i32
  %183 = call i8* @cpu_to_le16(i32 %182)
  %184 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %185 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %184, i32 0, i32 12
  store i8* %183, i8** %185, align 8
  br label %194

186:                                              ; preds = %172, %141
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i8* @cpu_to_le16(i32 %190)
  %192 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %193 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %192, i32 0, i32 12
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %186, %177
  %195 = load %struct.inode*, %struct.inode** %4, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @cpu_to_le64(i32 %197)
  %199 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %200 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %199, i32 0, i32 11
  store i8* %198, i8** %200, align 8
  %201 = load %struct.inode*, %struct.inode** %4, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @S_ISCHR(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %194
  %207 = load %struct.inode*, %struct.inode** %4, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @S_ISBLK(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %265

212:                                              ; preds = %206, %194
  %213 = load %struct.inode*, %struct.inode** %4, align 8
  %214 = call i64 @udf_get_extendedattr(%struct.inode* %213, i32 12, i32 1)
  %215 = inttoptr i64 %214 to %struct.deviceSpec*
  store %struct.deviceSpec* %215, %struct.deviceSpec** %19, align 8
  %216 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %217 = icmp ne %struct.deviceSpec* %216, null
  br i1 %217, label %233, label %218

218:                                              ; preds = %212
  %219 = load %struct.inode*, %struct.inode** %4, align 8
  %220 = call i64 @udf_add_extendedattr(%struct.inode* %219, i32 72, i32 12, i32 3)
  %221 = inttoptr i64 %220 to %struct.deviceSpec*
  store %struct.deviceSpec* %221, %struct.deviceSpec** %19, align 8
  %222 = call i8* @cpu_to_le32(i32 12)
  %223 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %224 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %223, i32 0, i32 6
  store i8* %222, i8** %224, align 8
  %225 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %226 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %225, i32 0, i32 0
  store i32 1, i32* %226, align 8
  %227 = call i8* @cpu_to_le32(i32 72)
  %228 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %229 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %228, i32 0, i32 5
  store i8* %227, i8** %229, align 8
  %230 = call i8* @cpu_to_le32(i32 16)
  %231 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %232 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %231, i32 0, i32 4
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %218, %212
  %234 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %235 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to %struct.regid*
  store %struct.regid* %237, %struct.regid** %18, align 8
  %238 = load %struct.regid*, %struct.regid** %18, align 8
  %239 = call i32 @memset(%struct.regid* %238, i32 0, i32 16)
  %240 = load %struct.regid*, %struct.regid** %18, align 8
  %241 = getelementptr inbounds %struct.regid, %struct.regid* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @UDF_ID_DEVELOPER, align 4
  %244 = call i32 @strcpy(i32 %242, i32 %243)
  %245 = load i8*, i8** @UDF_OS_CLASS_UNIX, align 8
  %246 = load %struct.regid*, %struct.regid** %18, align 8
  %247 = getelementptr inbounds %struct.regid, %struct.regid* %246, i32 0, i32 0
  %248 = load i8**, i8*** %247, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  store i8* %245, i8** %249, align 8
  %250 = load i8*, i8** @UDF_OS_ID_LINUX, align 8
  %251 = load %struct.regid*, %struct.regid** %18, align 8
  %252 = getelementptr inbounds %struct.regid, %struct.regid* %251, i32 0, i32 0
  %253 = load i8**, i8*** %252, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 1
  store i8* %250, i8** %254, align 8
  %255 = load %struct.inode*, %struct.inode** %4, align 8
  %256 = call i32 @imajor(%struct.inode* %255)
  %257 = call i8* @cpu_to_le32(i32 %256)
  %258 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %259 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  %260 = load %struct.inode*, %struct.inode** %4, align 8
  %261 = call i32 @iminor(%struct.inode* %260)
  %262 = call i8* @cpu_to_le32(i32 %261)
  %263 = load %struct.deviceSpec*, %struct.deviceSpec** %19, align 8
  %264 = getelementptr inbounds %struct.deviceSpec, %struct.deviceSpec* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %233, %206
  %266 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %267 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ICBTAG_FLAG_AD_IN_ICB, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  store i32 0, i32* %9, align 4
  br label %286

272:                                              ; preds = %265
  %273 = load %struct.inode*, %struct.inode** %4, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load i8, i8* %15, align 1
  %277 = zext i8 %276 to i32
  %278 = sub nsw i32 %277, 9
  %279 = shl i32 1, %278
  %280 = add nsw i32 %275, %279
  %281 = sub nsw i32 %280, 1
  %282 = load i8, i8* %15, align 1
  %283 = zext i8 %282 to i32
  %284 = sub nsw i32 %283, 9
  %285 = ashr i32 %281, %284
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %272, %271
  %287 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %288 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %381

291:                                              ; preds = %286
  %292 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %293 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %292, i32 0, i32 0
  %294 = load %struct.regid*, %struct.regid** %293, align 8
  %295 = getelementptr inbounds %struct.regid, %struct.regid* %294, i64 208
  %296 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %297 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %296, i32 0, i32 14
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.inode*, %struct.inode** %4, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 5
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = sub i64 %305, 208
  %307 = trunc i64 %306 to i32
  %308 = call i32 @memcpy(%struct.regid* %295, i32 %299, i32 %307)
  %309 = load i32, i32* %9, align 4
  %310 = call i8* @cpu_to_le64(i32 %309)
  %311 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %312 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %311, i32 0, i32 10
  store i8* %310, i8** %312, align 8
  %313 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %314 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %313, i32 0, i32 9
  %315 = load %struct.inode*, %struct.inode** %4, align 8
  %316 = getelementptr inbounds %struct.inode, %struct.inode* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @udf_time_to_disk_stamp(i32* %314, i32 %317)
  %319 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %320 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %319, i32 0, i32 8
  %321 = load %struct.inode*, %struct.inode** %4, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @udf_time_to_disk_stamp(i32* %320, i32 %323)
  %325 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %326 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %325, i32 0, i32 7
  %327 = load %struct.inode*, %struct.inode** %4, align 8
  %328 = getelementptr inbounds %struct.inode, %struct.inode* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @udf_time_to_disk_stamp(i32* %326, i32 %329)
  %331 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %332 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %331, i32 0, i32 6
  %333 = call i32 @memset(%struct.regid* %332, i32 0, i32 16)
  %334 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %335 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.regid, %struct.regid* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @UDF_ID_DEVELOPER, align 4
  %339 = call i32 @strcpy(i32 %337, i32 %338)
  %340 = load i8*, i8** @UDF_OS_CLASS_UNIX, align 8
  %341 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %342 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.regid, %struct.regid* %342, i32 0, i32 0
  %344 = load i8**, i8*** %343, align 8
  %345 = getelementptr inbounds i8*, i8** %344, i64 0
  store i8* %340, i8** %345, align 8
  %346 = load i8*, i8** @UDF_OS_ID_LINUX, align 8
  %347 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %348 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.regid, %struct.regid* %348, i32 0, i32 0
  %350 = load i8**, i8*** %349, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 1
  store i8* %346, i8** %351, align 8
  %352 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %353 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call i8* @cpu_to_le64(i32 %354)
  %356 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %357 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %356, i32 0, i32 5
  store i8* %355, i8** %357, align 8
  %358 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %359 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = call i8* @cpu_to_le32(i32 %360)
  %362 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %363 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %362, i32 0, i32 4
  store i8* %361, i8** %363, align 8
  %364 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %365 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = call i8* @cpu_to_le32(i32 %366)
  %368 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %369 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %368, i32 0, i32 3
  store i8* %367, i8** %369, align 8
  %370 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %371 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = call i8* @cpu_to_le32(i32 %372)
  %374 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %375 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %374, i32 0, i32 2
  store i8* %373, i8** %375, align 8
  %376 = load i32, i32* @TAG_IDENT_FE, align 4
  %377 = call i8* @cpu_to_le16(i32 %376)
  %378 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %379 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 6
  store i8* %377, i8** %380, align 8
  store i32 208, i32* %12, align 4
  br label %524

381:                                              ; preds = %286
  %382 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %383 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %382, i32 0, i32 0
  %384 = load %struct.regid*, %struct.regid** %383, align 8
  %385 = getelementptr inbounds %struct.regid, %struct.regid* %384, i64 104
  %386 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %387 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %386, i32 0, i32 14
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.inode*, %struct.inode** %4, align 8
  %391 = getelementptr inbounds %struct.inode, %struct.inode* %390, i32 0, i32 5
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = sub i64 %395, 104
  %397 = trunc i64 %396 to i32
  %398 = call i32 @memcpy(%struct.regid* %385, i32 %389, i32 %397)
  %399 = load %struct.inode*, %struct.inode** %4, align 8
  %400 = getelementptr inbounds %struct.inode, %struct.inode* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %403 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %401, %404
  %406 = call i8* @cpu_to_le64(i32 %405)
  %407 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %408 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %407, i32 0, i32 12
  store i8* %406, i8** %408, align 8
  %409 = load i32, i32* %9, align 4
  %410 = call i8* @cpu_to_le64(i32 %409)
  %411 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %412 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %411, i32 0, i32 11
  store i8* %410, i8** %412, align 8
  %413 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %414 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %413, i32 0, i32 13
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %434

417:                                              ; preds = %381
  %418 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %419 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %418, i32 0, i32 10
  store %struct.long_ad* %419, %struct.long_ad** %20, align 8
  %420 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %421 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %420, i32 0, i32 12
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @cpu_to_lelb(i32 %422)
  %424 = load %struct.long_ad*, %struct.long_ad** %20, align 8
  %425 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 8
  %426 = load %struct.inode*, %struct.inode** %4, align 8
  %427 = getelementptr inbounds %struct.inode, %struct.inode* %426, i32 0, i32 5
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i8* @cpu_to_le32(i32 %430)
  %432 = load %struct.long_ad*, %struct.long_ad** %20, align 8
  %433 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %432, i32 0, i32 0
  store i8* %431, i8** %433, align 8
  br label %434

434:                                              ; preds = %417, %381
  %435 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %436 = load %struct.inode*, %struct.inode** %4, align 8
  %437 = getelementptr inbounds %struct.inode, %struct.inode* %436, i32 0, i32 8
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @udf_adjust_time(%struct.udf_inode_info* %435, i32 %438)
  %440 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %441 = load %struct.inode*, %struct.inode** %4, align 8
  %442 = getelementptr inbounds %struct.inode, %struct.inode* %441, i32 0, i32 7
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @udf_adjust_time(%struct.udf_inode_info* %440, i32 %443)
  %445 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %446 = load %struct.inode*, %struct.inode** %4, align 8
  %447 = getelementptr inbounds %struct.inode, %struct.inode* %446, i32 0, i32 6
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @udf_adjust_time(%struct.udf_inode_info* %445, i32 %448)
  %450 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %451 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %450, i32 0, i32 9
  %452 = load %struct.inode*, %struct.inode** %4, align 8
  %453 = getelementptr inbounds %struct.inode, %struct.inode* %452, i32 0, i32 8
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @udf_time_to_disk_stamp(i32* %451, i32 %454)
  %456 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %457 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %456, i32 0, i32 8
  %458 = load %struct.inode*, %struct.inode** %4, align 8
  %459 = getelementptr inbounds %struct.inode, %struct.inode* %458, i32 0, i32 7
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @udf_time_to_disk_stamp(i32* %457, i32 %460)
  %462 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %463 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %462, i32 0, i32 7
  %464 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %465 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %464, i32 0, i32 11
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @udf_time_to_disk_stamp(i32* %463, i32 %466)
  %468 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %469 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %468, i32 0, i32 6
  %470 = load %struct.inode*, %struct.inode** %4, align 8
  %471 = getelementptr inbounds %struct.inode, %struct.inode* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @udf_time_to_disk_stamp(i32* %469, i32 %472)
  %474 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %475 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %474, i32 0, i32 5
  %476 = call i32 @memset(%struct.regid* %475, i32 0, i32 16)
  %477 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %478 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.regid, %struct.regid* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @UDF_ID_DEVELOPER, align 4
  %482 = call i32 @strcpy(i32 %480, i32 %481)
  %483 = load i8*, i8** @UDF_OS_CLASS_UNIX, align 8
  %484 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %485 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %484, i32 0, i32 5
  %486 = getelementptr inbounds %struct.regid, %struct.regid* %485, i32 0, i32 0
  %487 = load i8**, i8*** %486, align 8
  %488 = getelementptr inbounds i8*, i8** %487, i64 0
  store i8* %483, i8** %488, align 8
  %489 = load i8*, i8** @UDF_OS_ID_LINUX, align 8
  %490 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %491 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.regid, %struct.regid* %491, i32 0, i32 0
  %493 = load i8**, i8*** %492, align 8
  %494 = getelementptr inbounds i8*, i8** %493, i64 1
  store i8* %489, i8** %494, align 8
  %495 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %496 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 8
  %498 = call i8* @cpu_to_le64(i32 %497)
  %499 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %500 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %499, i32 0, i32 4
  store i8* %498, i8** %500, align 8
  %501 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %502 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %501, i32 0, i32 5
  %503 = load i32, i32* %502, align 4
  %504 = call i8* @cpu_to_le32(i32 %503)
  %505 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %506 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %505, i32 0, i32 3
  store i8* %504, i8** %506, align 8
  %507 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %508 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call i8* @cpu_to_le32(i32 %509)
  %511 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %512 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %511, i32 0, i32 2
  store i8* %510, i8** %512, align 8
  %513 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %514 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %513, i32 0, i32 6
  %515 = load i32, i32* %514, align 8
  %516 = call i8* @cpu_to_le32(i32 %515)
  %517 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %518 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %517, i32 0, i32 1
  store i8* %516, i8** %518, align 8
  %519 = load i32, i32* @TAG_IDENT_EFE, align 4
  %520 = call i8* @cpu_to_le16(i32 %519)
  %521 = load %struct.extendedFileEntry*, %struct.extendedFileEntry** %8, align 8
  %522 = getelementptr inbounds %struct.extendedFileEntry, %struct.extendedFileEntry* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %522, i32 0, i32 0
  store i8* %520, i8** %523, align 8
  store i32 104, i32* %12, align 4
  br label %524

524:                                              ; preds = %434, %291
  br label %525

525:                                              ; preds = %524, %72
  %526 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %527 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %526, i32 0, i32 10
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %543

530:                                              ; preds = %525
  %531 = call i8* @cpu_to_le16(i32 4096)
  %532 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %533 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %533, i32 0, i32 3
  store i8* %531, i8** %534, align 8
  %535 = call i8* @cpu_to_le16(i32 1)
  %536 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %537 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 4
  store i8* %535, i8** %538, align 8
  %539 = call i8* @cpu_to_le16(i32 2)
  %540 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %541 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %541, i32 0, i32 2
  store i8* %539, i8** %542, align 8
  br label %552

543:                                              ; preds = %525
  %544 = call i8* @cpu_to_le16(i32 4)
  %545 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %546 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %546, i32 0, i32 3
  store i8* %544, i8** %547, align 8
  %548 = call i8* @cpu_to_le16(i32 1)
  %549 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %550 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %550, i32 0, i32 2
  store i8* %548, i8** %551, align 8
  br label %552

552:                                              ; preds = %543, %530
  %553 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %554 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %553, i32 0, i32 9
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %552
  %558 = load i32, i32* @ICBTAG_FILE_TYPE_USE, align 4
  %559 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %560 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %560, i32 0, i32 1
  store i32 %558, i32* %561, align 8
  br label %646

562:                                              ; preds = %552
  %563 = load %struct.inode*, %struct.inode** %4, align 8
  %564 = getelementptr inbounds %struct.inode, %struct.inode* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = call i64 @S_ISDIR(i32 %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %562
  %569 = load i32, i32* @ICBTAG_FILE_TYPE_DIRECTORY, align 4
  %570 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %571 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %571, i32 0, i32 1
  store i32 %569, i32* %572, align 8
  br label %645

573:                                              ; preds = %562
  %574 = load %struct.inode*, %struct.inode** %4, align 8
  %575 = getelementptr inbounds %struct.inode, %struct.inode* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = call i64 @S_ISREG(i32 %576)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %584

579:                                              ; preds = %573
  %580 = load i32, i32* @ICBTAG_FILE_TYPE_REGULAR, align 4
  %581 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %582 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %582, i32 0, i32 1
  store i32 %580, i32* %583, align 8
  br label %644

584:                                              ; preds = %573
  %585 = load %struct.inode*, %struct.inode** %4, align 8
  %586 = getelementptr inbounds %struct.inode, %struct.inode* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = call i64 @S_ISLNK(i32 %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %595

590:                                              ; preds = %584
  %591 = load i32, i32* @ICBTAG_FILE_TYPE_SYMLINK, align 4
  %592 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %593 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %593, i32 0, i32 1
  store i32 %591, i32* %594, align 8
  br label %643

595:                                              ; preds = %584
  %596 = load %struct.inode*, %struct.inode** %4, align 8
  %597 = getelementptr inbounds %struct.inode, %struct.inode* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = call i64 @S_ISBLK(i32 %598)
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %595
  %602 = load i32, i32* @ICBTAG_FILE_TYPE_BLOCK, align 4
  %603 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %604 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %604, i32 0, i32 1
  store i32 %602, i32* %605, align 8
  br label %642

606:                                              ; preds = %595
  %607 = load %struct.inode*, %struct.inode** %4, align 8
  %608 = getelementptr inbounds %struct.inode, %struct.inode* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = call i64 @S_ISCHR(i32 %609)
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %606
  %613 = load i32, i32* @ICBTAG_FILE_TYPE_CHAR, align 4
  %614 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %615 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %615, i32 0, i32 1
  store i32 %613, i32* %616, align 8
  br label %641

617:                                              ; preds = %606
  %618 = load %struct.inode*, %struct.inode** %4, align 8
  %619 = getelementptr inbounds %struct.inode, %struct.inode* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = call i64 @S_ISFIFO(i32 %620)
  %622 = icmp ne i64 %621, 0
  br i1 %622, label %623, label %628

623:                                              ; preds = %617
  %624 = load i32, i32* @ICBTAG_FILE_TYPE_FIFO, align 4
  %625 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %626 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %626, i32 0, i32 1
  store i32 %624, i32* %627, align 8
  br label %640

628:                                              ; preds = %617
  %629 = load %struct.inode*, %struct.inode** %4, align 8
  %630 = getelementptr inbounds %struct.inode, %struct.inode* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = call i64 @S_ISSOCK(i32 %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %639

634:                                              ; preds = %628
  %635 = load i32, i32* @ICBTAG_FILE_TYPE_SOCKET, align 4
  %636 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %637 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %637, i32 0, i32 1
  store i32 %635, i32* %638, align 8
  br label %639

639:                                              ; preds = %634, %628
  br label %640

640:                                              ; preds = %639, %623
  br label %641

641:                                              ; preds = %640, %612
  br label %642

642:                                              ; preds = %641, %601
  br label %643

643:                                              ; preds = %642, %590
  br label %644

644:                                              ; preds = %643, %579
  br label %645

645:                                              ; preds = %644, %568
  br label %646

646:                                              ; preds = %645, %557
  %647 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %648 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.inode*, %struct.inode** %4, align 8
  %651 = getelementptr inbounds %struct.inode, %struct.inode* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* @S_ISUID, align 4
  %654 = and i32 %652, %653
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %658

656:                                              ; preds = %646
  %657 = load i32, i32* @ICBTAG_FLAG_SETUID, align 4
  br label %659

658:                                              ; preds = %646
  br label %659

659:                                              ; preds = %658, %656
  %660 = phi i32 [ %657, %656 ], [ 0, %658 ]
  %661 = or i32 %649, %660
  %662 = load %struct.inode*, %struct.inode** %4, align 8
  %663 = getelementptr inbounds %struct.inode, %struct.inode* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = load i32, i32* @S_ISGID, align 4
  %666 = and i32 %664, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %670

668:                                              ; preds = %659
  %669 = load i32, i32* @ICBTAG_FLAG_SETGID, align 4
  br label %671

670:                                              ; preds = %659
  br label %671

671:                                              ; preds = %670, %668
  %672 = phi i32 [ %669, %668 ], [ 0, %670 ]
  %673 = or i32 %661, %672
  %674 = load %struct.inode*, %struct.inode** %4, align 8
  %675 = getelementptr inbounds %struct.inode, %struct.inode* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* @S_ISVTX, align 4
  %678 = and i32 %676, %677
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %682

680:                                              ; preds = %671
  %681 = load i32, i32* @ICBTAG_FLAG_STICKY, align 4
  br label %683

682:                                              ; preds = %671
  br label %683

683:                                              ; preds = %682, %680
  %684 = phi i32 [ %681, %680 ], [ 0, %682 ]
  %685 = or i32 %673, %684
  %686 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %687 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %687, i32 0, i32 0
  %689 = load i8*, i8** %688, align 8
  %690 = call i32 @le16_to_cpu(i8* %689)
  %691 = load i32, i32* @ICBTAG_FLAG_AD_MASK, align 4
  %692 = load i32, i32* @ICBTAG_FLAG_SETUID, align 4
  %693 = or i32 %691, %692
  %694 = load i32, i32* @ICBTAG_FLAG_SETGID, align 4
  %695 = or i32 %693, %694
  %696 = load i32, i32* @ICBTAG_FLAG_STICKY, align 4
  %697 = or i32 %695, %696
  %698 = xor i32 %697, -1
  %699 = and i32 %690, %698
  %700 = or i32 %685, %699
  store i32 %700, i32* %11, align 4
  %701 = load i32, i32* %11, align 4
  %702 = call i8* @cpu_to_le16(i32 %701)
  %703 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %704 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 0
  store i8* %702, i8** %705, align 8
  %706 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %707 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 4
  %709 = icmp sge i32 %708, 512
  br i1 %709, label %710, label %715

710:                                              ; preds = %683
  %711 = call i8* @cpu_to_le16(i32 3)
  %712 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %713 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %713, i32 0, i32 5
  store i8* %711, i8** %714, align 8
  br label %720

715:                                              ; preds = %683
  %716 = call i8* @cpu_to_le16(i32 2)
  %717 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %718 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %717, i32 0, i32 0
  %719 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %718, i32 0, i32 5
  store i8* %716, i8** %719, align 8
  br label %720

720:                                              ; preds = %715, %710
  %721 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %722 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = call i8* @cpu_to_le16(i32 %723)
  %725 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %726 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %725, i32 0, i32 0
  %727 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %726, i32 0, i32 4
  store i8* %724, i8** %727, align 8
  %728 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %729 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %728, i32 0, i32 8
  %730 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 8
  %732 = call i8* @cpu_to_le32(i32 %731)
  %733 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %734 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %734, i32 0, i32 3
  store i8* %732, i8** %735, align 8
  %736 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %737 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %736, i32 0, i32 5
  %738 = load i32, i32* %737, align 4
  %739 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %740 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 8
  %742 = add nsw i32 %738, %741
  %743 = sext i32 %742 to i64
  %744 = sub i64 %743, 4
  %745 = load i32, i32* %12, align 4
  %746 = sext i32 %745 to i64
  %747 = add i64 %746, %744
  %748 = trunc i64 %747 to i32
  store i32 %748, i32* %12, align 4
  %749 = load i32, i32* %12, align 4
  %750 = call i8* @cpu_to_le16(i32 %749)
  %751 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %752 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %751, i32 0, i32 0
  %753 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %752, i32 0, i32 2
  store i8* %750, i8** %753, align 8
  %754 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %755 = bitcast %struct.fileEntry* %754 to i8*
  %756 = getelementptr inbounds i8, i8* %755, i64 4
  %757 = load i32, i32* %12, align 4
  %758 = call i32 @crc_itu_t(i32 0, i8* %756, i32 %757)
  %759 = call i8* @cpu_to_le16(i32 %758)
  %760 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %761 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %761, i32 0, i32 1
  store i8* %759, i8** %762, align 8
  %763 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %764 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %763, i32 0, i32 0
  %765 = call i32 @udf_tag_checksum(%struct.TYPE_17__* %764)
  %766 = load %struct.fileEntry*, %struct.fileEntry** %7, align 8
  %767 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %767, i32 0, i32 0
  store i32 %765, i32* %768, align 8
  %769 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %770 = call i32 @set_buffer_uptodate(%struct.buffer_head* %769)
  %771 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %772 = call i32 @unlock_buffer(%struct.buffer_head* %771)
  %773 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %774 = call i32 @mark_buffer_dirty(%struct.buffer_head* %773)
  %775 = load i32, i32* %5, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %794

777:                                              ; preds = %720
  %778 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %779 = call i32 @sync_dirty_buffer(%struct.buffer_head* %778)
  %780 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %781 = call i64 @buffer_write_io_error(%struct.buffer_head* %780)
  %782 = icmp ne i64 %781, 0
  br i1 %782, label %783, label %793

783:                                              ; preds = %777
  %784 = load %struct.inode*, %struct.inode** %4, align 8
  %785 = getelementptr inbounds %struct.inode, %struct.inode* %784, i32 0, i32 5
  %786 = load %struct.TYPE_16__*, %struct.TYPE_16__** %785, align 8
  %787 = load %struct.inode*, %struct.inode** %4, align 8
  %788 = getelementptr inbounds %struct.inode, %struct.inode* %787, i32 0, i32 4
  %789 = load i32, i32* %788, align 8
  %790 = call i32 @udf_warn(%struct.TYPE_16__* %786, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %789)
  %791 = load i32, i32* @EIO, align 4
  %792 = sub nsw i32 0, %791
  store i32 %792, i32* %13, align 4
  br label %793

793:                                              ; preds = %783, %777
  br label %794

794:                                              ; preds = %793, %720
  %795 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %796 = call i32 @brelse(%struct.buffer_head* %795)
  %797 = load i32, i32* %13, align 4
  store i32 %797, i32* %3, align 4
  br label %798

798:                                              ; preds = %794, %44
  %799 = load i32, i32* %3, align 4
  ret i32 %799
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.TYPE_16__*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.TYPE_16__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @udf_debug(i8*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.regid*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(%struct.regid*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @udf_get_extendedattr(%struct.inode*, i32, i32) #1

declare dso_local i64 @udf_add_extendedattr(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @udf_time_to_disk_stamp(i32*, i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_adjust_time(%struct.udf_inode_info*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @crc_itu_t(i32, i8*, i32) #1

declare dso_local i32 @udf_tag_checksum(%struct.TYPE_17__*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @udf_warn(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
