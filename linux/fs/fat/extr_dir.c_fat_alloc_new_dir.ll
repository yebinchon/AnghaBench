; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_alloc_new_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_alloc_new_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.timespec64 = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.msdos_dir_entry = type { i64, i8*, i8*, i64, i8*, i8*, i8*, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSDOS_DOT = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@MSDOS_DOTDOT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_alloc_new_dir(%struct.inode* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.msdos_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.msdos_dir_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %21)
  store %struct.msdos_sb_info* %22, %struct.msdos_sb_info** %7, align 8
  %23 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.buffer_head*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @fat_alloc_clusters(%struct.inode* %27, i32* %16, i32 1)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %204

32:                                               ; preds = %2
  %33 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @fat_clus_to_blknr(%struct.msdos_sb_info* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %36, i32 %37)
  %39 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  store %struct.buffer_head* %38, %struct.buffer_head** %39, align 16
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 16
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  br label %200

46:                                               ; preds = %32
  %47 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %48 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %49 = call i32 @fat_time_unix2fat(%struct.msdos_sb_info* %47, %struct.timespec64* %48, i8** %13, i8** %12, i64* %14)
  %50 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 16
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %54, %struct.msdos_dir_entry** %10, align 8
  %55 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %56 = load %struct.buffer_head*, %struct.buffer_head** %55, align 16
  %57 = call i32 @lock_buffer(%struct.buffer_head* %56)
  %58 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %59 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %58, i64 0
  %60 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSDOS_DOT, align 4
  %63 = load i32, i32* @MSDOS_NAME, align 4
  %64 = call i32 @memcpy(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %66 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %65, i64 1
  %67 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MSDOS_DOTDOT, align 4
  %70 = load i32, i32* @MSDOS_NAME, align 4
  %71 = call i32 @memcpy(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @ATTR_DIR, align 4
  %73 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %74 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %73, i64 1
  %75 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 8
  %76 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %77 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %76, i32 0, i32 8
  store i32 %72, i32* %77, align 8
  %78 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %79 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %78, i64 1
  %80 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %82 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %81, i64 0
  %83 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %86 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %85, i64 1
  %87 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %86, i32 0, i32 6
  store i8* %84, i8** %87, align 8
  %88 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %89 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %88, i64 0
  %90 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %89, i32 0, i32 6
  store i8* %84, i8** %90, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %93 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %92, i64 1
  %94 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %93, i32 0, i32 5
  store i8* %91, i8** %94, align 8
  %95 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %96 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %95, i64 0
  %97 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %96, i32 0, i32 5
  store i8* %91, i8** %97, align 8
  %98 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %99 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %46
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %106 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %105, i64 1
  %107 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %106, i32 0, i32 4
  store i8* %104, i8** %107, align 8
  %108 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %109 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %108, i64 0
  %110 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %109, i32 0, i32 4
  store i8* %104, i8** %110, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %113 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %112, i64 1
  %114 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %113, i32 0, i32 3
  store i64 %111, i64* %114, align 8
  %115 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %116 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %115, i64 0
  %117 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %116, i32 0, i32 3
  store i64 %111, i64* %117, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %120 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %119, i64 1
  %121 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %123 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %122, i64 1
  %124 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %123, i32 0, i32 2
  store i8* %118, i8** %124, align 8
  %125 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %126 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %125, i64 0
  %127 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %126, i32 0, i32 1
  store i8* %118, i8** %127, align 8
  %128 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %129 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %128, i64 0
  %130 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %129, i32 0, i32 2
  store i8* %118, i8** %130, align 8
  br label %156

131:                                              ; preds = %46
  %132 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %133 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %132, i64 1
  %134 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %133, i32 0, i32 4
  store i8* null, i8** %134, align 8
  %135 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %136 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %135, i64 0
  %137 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %136, i32 0, i32 4
  store i8* null, i8** %137, align 8
  %138 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %139 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %138, i64 1
  %140 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %142 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %141, i64 0
  %143 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %145 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %144, i64 1
  %146 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %145, i32 0, i32 1
  store i8* null, i8** %146, align 8
  %147 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %148 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %147, i64 1
  %149 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %148, i32 0, i32 2
  store i8* null, i8** %149, align 8
  %150 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %151 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %150, i64 0
  %152 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %151, i32 0, i32 1
  store i8* null, i8** %152, align 8
  %153 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %154 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %153, i64 0
  %155 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %154, i32 0, i32 2
  store i8* null, i8** %155, align 8
  br label %156

156:                                              ; preds = %131, %103
  %157 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %158 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %157, i64 0
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @fat_set_start(%struct.msdos_dir_entry* %158, i32 %159)
  %161 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %162 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %161, i64 1
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @fat_set_start(%struct.msdos_dir_entry* %162, i32 %166)
  %168 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %169 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %168, i64 1
  %170 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %172 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %171, i64 0
  %173 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %175 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %174, i64 2
  %176 = load %struct.super_block*, %struct.super_block** %6, align 8
  %177 = getelementptr inbounds %struct.super_block, %struct.super_block* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %178, 144
  %180 = call i32 @memset(%struct.msdos_dir_entry* %175, i32 0, i64 %179)
  %181 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %182 = load %struct.buffer_head*, %struct.buffer_head** %181, align 16
  %183 = call i32 @set_buffer_uptodate(%struct.buffer_head* %182)
  %184 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %185 = load %struct.buffer_head*, %struct.buffer_head** %184, align 16
  %186 = call i32 @unlock_buffer(%struct.buffer_head* %185)
  %187 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %188 = load %struct.buffer_head*, %struct.buffer_head** %187, align 16
  %189 = load %struct.inode*, %struct.inode** %4, align 8
  %190 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %188, %struct.inode* %189)
  %191 = load %struct.inode*, %struct.inode** %4, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %194 = call i32 @fat_zeroed_cluster(%struct.inode* %191, i32 %192, i32 1, %struct.buffer_head** %26, i32 %193)
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %156
  br label %200

198:                                              ; preds = %156
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %206

200:                                              ; preds = %197, %43
  %201 = load %struct.inode*, %struct.inode** %4, align 8
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @fat_free_clusters(%struct.inode* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %31
  %205 = load i32, i32* %15, align 4
  store i32 %205, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %206

206:                                              ; preds = %204, %198
  %207 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fat_alloc_clusters(%struct.inode*, i32*, i32) #1

declare dso_local i32 @fat_clus_to_blknr(%struct.msdos_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @fat_time_unix2fat(%struct.msdos_sb_info*, %struct.timespec64*, i8**, i8**, i64*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @fat_set_start(%struct.msdos_dir_entry*, i32) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @memset(%struct.msdos_dir_entry*, i32, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @fat_zeroed_cluster(%struct.inode*, i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
