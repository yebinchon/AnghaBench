; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_populate_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_populate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block*, i32, i32, i32*, i32*, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, i64 }
%struct.super_block = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i8* }

@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@ocfs2_fast_symlink_aops = common dso_local global i32 0, align 4
@ocfs2_aops = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ip_blkno %llu != i_blkno %llu!\0A\00", align 1
@OCFS2_SYSTEM_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@OCFS2_LOCAL_ALLOC_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_BITMAP = common dso_local global i32 0, align 4
@OCFS2_BITMAP_FL = common dso_local global i32 0, align 4
@OCFS2_QUOTA_FL = common dso_local global i32 0, align 4
@OCFS2_SUPER_BLOCK_FL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ocfs2_fops = common dso_local global i32 0, align 4
@ocfs2_fops_no_plocks = common dso_local global i32 0, align 4
@ocfs2_file_iops = common dso_local global i32 0, align 4
@ocfs2_dir_iops = common dso_local global i32 0, align 4
@ocfs2_dops = common dso_local global i32 0, align 4
@ocfs2_dops_no_plocks = common dso_local global i32 0, align 4
@ocfs2_symlink_inode_operations = common dso_local global i32 0, align 4
@ocfs2_special_file_iops = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_META = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_OPEN = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_RW = common dso_local global i32 0, align 4
@OCFS2_RESV_FLAG_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_populate_inode(%struct.inode* %0, %struct.ocfs2_dinode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %7, align 8
  %14 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %8, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_MOUNT_LOCALFLOCKS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %23 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @ocfs2_stack_supports_plocks()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %21, %3
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %31 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OCFS2_VALID_FL, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 17
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le16_to_cpu(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 11
  store i8* %73, i8** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @inode_set_iversion(%struct.inode* %77, i32 1)
  %79 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 16
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le64_to_cpu(i32 %89)
  %91 = call i32 @huge_decode_dev(i64 %90)
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 15
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le16_to_cpu(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = call i32 @i_uid_write(%struct.inode* %101, i32 %105)
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %109 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = call i32 @i_gid_write(%struct.inode* %107, i32 %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @S_ISLNK(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %29
  %119 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %120 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 12
  store i64 0, i64* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 11
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32* @ocfs2_fast_symlink_aops, i32** %129, align 8
  br label %139

130:                                              ; preds = %118, %29
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = call i64 @ocfs2_inode_sector_count(%struct.inode* %131)
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 12
  store i64 %132, i64* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 11
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32* @ocfs2_aops, i32** %138, align 8
  br label %139

139:                                              ; preds = %130, %123
  %140 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le64_to_cpu(i32 %142)
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 10
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %148 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le32_to_cpu(i32 %149)
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %155 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @le64_to_cpu(i32 %156)
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i64 %157, i64* %160, align 8
  %161 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %162 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %169 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @le64_to_cpu(i32 %170)
  %172 = load %struct.inode*, %struct.inode** %4, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i64 %171, i64* %174, align 8
  %175 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %176 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = load %struct.inode*, %struct.inode** %4, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %187 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @le64_to_cpu(i32 %188)
  %190 = icmp ne i64 %185, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %139
  %192 = load i32, i32* @ML_ERROR, align 4
  %193 = load %struct.inode*, %struct.inode** %4, align 8
  %194 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %193)
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %198 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @le64_to_cpu(i32 %199)
  %201 = call i32 @mlog(i32 %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %196, i64 %200)
  br label %202

202:                                              ; preds = %191, %139
  %203 = load %struct.inode*, %struct.inode** %4, align 8
  %204 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %205 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %204)
  %206 = call i32 @set_nlink(%struct.inode* %203, i32 %205)
  %207 = load %struct.inode*, %struct.inode** %4, align 8
  %208 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %207)
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %212 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = call i32 @trace_ocfs2_populate_inode(i64 %210, i32 %214)
  %216 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %217 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %220 = call i32 @cpu_to_le32(i32 %219)
  %221 = and i32 %218, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %202
  %224 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %225 = load %struct.inode*, %struct.inode** %4, align 8
  %226 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %225)
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* @S_NOQUOTA, align 4
  %231 = load %struct.inode*, %struct.inode** %4, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %223, %202
  %236 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %237 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @OCFS2_LOCAL_ALLOC_FL, align 4
  %240 = call i32 @cpu_to_le32(i32 %239)
  %241 = and i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load i32, i32* @OCFS2_INODE_BITMAP, align 4
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %245)
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 4
  br label %292

250:                                              ; preds = %235
  %251 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %252 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @OCFS2_BITMAP_FL, align 4
  %255 = call i32 @cpu_to_le32(i32 %254)
  %256 = and i32 %253, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load i32, i32* @OCFS2_INODE_BITMAP, align 4
  %260 = load %struct.inode*, %struct.inode** %4, align 8
  %261 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %260)
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 4
  br label %291

265:                                              ; preds = %250
  %266 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %267 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @OCFS2_QUOTA_FL, align 4
  %270 = call i32 @cpu_to_le32(i32 %269)
  %271 = and i32 %268, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load i32, i32* @S_NOQUOTA, align 4
  %275 = load %struct.inode*, %struct.inode** %4, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %290

279:                                              ; preds = %265
  %280 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %281 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @OCFS2_SUPER_BLOCK_FL, align 4
  %284 = call i32 @cpu_to_le32(i32 %283)
  %285 = and i32 %282, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = call i32 (...) @BUG()
  br label %289

289:                                              ; preds = %287, %279
  br label %290

290:                                              ; preds = %289, %273
  br label %291

291:                                              ; preds = %290, %258
  br label %292

292:                                              ; preds = %291, %243
  %293 = load %struct.inode*, %struct.inode** %4, align 8
  %294 = getelementptr inbounds %struct.inode, %struct.inode* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @S_IFMT, align 4
  %297 = and i32 %295, %296
  switch i32 %297, label %348 [
    i32 128, label %298
    i32 130, label %316
    i32 129, label %337
  ]

298:                                              ; preds = %292
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load %struct.inode*, %struct.inode** %4, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 6
  store i32* @ocfs2_fops, i32** %303, align 8
  br label %307

304:                                              ; preds = %298
  %305 = load %struct.inode*, %struct.inode** %4, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 6
  store i32* @ocfs2_fops_no_plocks, i32** %306, align 8
  br label %307

307:                                              ; preds = %304, %301
  %308 = load %struct.inode*, %struct.inode** %4, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 5
  store i32* @ocfs2_file_iops, i32** %309, align 8
  %310 = load %struct.inode*, %struct.inode** %4, align 8
  %311 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %312 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %311, i32 0, i32 11
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @le64_to_cpu(i32 %313)
  %315 = call i32 @i_size_write(%struct.inode* %310, i64 %314)
  br label %359

316:                                              ; preds = %292
  %317 = load %struct.inode*, %struct.inode** %4, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 5
  store i32* @ocfs2_dir_iops, i32** %318, align 8
  %319 = load i32, i32* %9, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = load %struct.inode*, %struct.inode** %4, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 6
  store i32* @ocfs2_dops, i32** %323, align 8
  br label %327

324:                                              ; preds = %316
  %325 = load %struct.inode*, %struct.inode** %4, align 8
  %326 = getelementptr inbounds %struct.inode, %struct.inode* %325, i32 0, i32 6
  store i32* @ocfs2_dops_no_plocks, i32** %326, align 8
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.inode*, %struct.inode** %4, align 8
  %329 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %330 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %329, i32 0, i32 11
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @le64_to_cpu(i32 %331)
  %333 = call i32 @i_size_write(%struct.inode* %328, i64 %332)
  %334 = load %struct.inode*, %struct.inode** %4, align 8
  %335 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %334)
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 3
  store i32 1, i32* %336, align 8
  br label %359

337:                                              ; preds = %292
  %338 = load %struct.inode*, %struct.inode** %4, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 5
  store i32* @ocfs2_symlink_inode_operations, i32** %339, align 8
  %340 = load %struct.inode*, %struct.inode** %4, align 8
  %341 = call i32 @inode_nohighmem(%struct.inode* %340)
  %342 = load %struct.inode*, %struct.inode** %4, align 8
  %343 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %344 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %343, i32 0, i32 11
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @le64_to_cpu(i32 %345)
  %347 = call i32 @i_size_write(%struct.inode* %342, i64 %346)
  br label %359

348:                                              ; preds = %292
  %349 = load %struct.inode*, %struct.inode** %4, align 8
  %350 = getelementptr inbounds %struct.inode, %struct.inode* %349, i32 0, i32 5
  store i32* @ocfs2_special_file_iops, i32** %350, align 8
  %351 = load %struct.inode*, %struct.inode** %4, align 8
  %352 = load %struct.inode*, %struct.inode** %4, align 8
  %353 = getelementptr inbounds %struct.inode, %struct.inode* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.inode*, %struct.inode** %4, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @init_special_inode(%struct.inode* %351, i32 %354, i32 %357)
  br label %359

359:                                              ; preds = %348, %337, %327, %307
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %392

362:                                              ; preds = %359
  %363 = load %struct.inode*, %struct.inode** %4, align 8
  %364 = getelementptr inbounds %struct.inode, %struct.inode* %363, i32 0, i32 2
  %365 = load %struct.super_block*, %struct.super_block** %364, align 8
  %366 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %367 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %366, i32 0, i32 10
  %368 = load i32, i32* %367, align 4
  %369 = call i64 @le64_to_cpu(i32 %368)
  %370 = call i32 @ino_from_blkno(%struct.super_block* %365, i64 %369)
  %371 = load %struct.inode*, %struct.inode** %4, align 8
  %372 = getelementptr inbounds %struct.inode, %struct.inode* %371, i32 0, i32 3
  store i32 %370, i32* %372, align 8
  %373 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %374 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @le32_to_cpu(i32 %375)
  %377 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %378 = and i32 %376, %377
  %379 = call i32 @BUG_ON(i32 %378)
  %380 = load %struct.inode*, %struct.inode** %4, align 8
  %381 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %380)
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 9
  %383 = load i32, i32* @OCFS2_LOCK_TYPE_META, align 4
  %384 = load %struct.inode*, %struct.inode** %4, align 8
  %385 = call i32 @ocfs2_inode_lock_res_init(i32* %382, i32 %383, i32 0, %struct.inode* %384)
  %386 = load %struct.inode*, %struct.inode** %4, align 8
  %387 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %386)
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 8
  %389 = load i32, i32* @OCFS2_LOCK_TYPE_OPEN, align 4
  %390 = load %struct.inode*, %struct.inode** %4, align 8
  %391 = call i32 @ocfs2_inode_lock_res_init(i32* %388, i32 %389, i32 0, %struct.inode* %390)
  br label %392

392:                                              ; preds = %362, %359
  %393 = load %struct.inode*, %struct.inode** %4, align 8
  %394 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %393)
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 7
  %396 = load i32, i32* @OCFS2_LOCK_TYPE_RW, align 4
  %397 = load %struct.inode*, %struct.inode** %4, align 8
  %398 = getelementptr inbounds %struct.inode, %struct.inode* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.inode*, %struct.inode** %4, align 8
  %401 = call i32 @ocfs2_inode_lock_res_init(i32* %395, i32 %396, i32 %399, %struct.inode* %400)
  %402 = load %struct.inode*, %struct.inode** %4, align 8
  %403 = call i32 @ocfs2_set_inode_flags(%struct.inode* %402)
  %404 = load %struct.inode*, %struct.inode** %4, align 8
  %405 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %404)
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 6
  store i64 0, i64* %406, align 8
  %407 = load %struct.inode*, %struct.inode** %4, align 8
  %408 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %407)
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 5
  store i64 0, i64* %409, align 8
  %410 = load %struct.inode*, %struct.inode** %4, align 8
  %411 = getelementptr inbounds %struct.inode, %struct.inode* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i64 @S_ISDIR(i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %392
  %416 = load %struct.inode*, %struct.inode** %4, align 8
  %417 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %416)
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 4
  %419 = load i32, i32* @OCFS2_RESV_FLAG_DIR, align 4
  %420 = call i32 @ocfs2_resv_set_type(i32* %418, i32 %419)
  br label %421

421:                                              ; preds = %415, %392
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_stack_supports_plocks(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @OCFS2_I(%struct.inode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @inode_set_iversion(%struct.inode*, i32) #1

declare dso_local i32 @huge_decode_dev(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i32 @trace_ocfs2_populate_inode(i64, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ino_from_blkno(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_inode_lock_res_init(i32*, i32, i32, %struct.inode*) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_resv_set_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
