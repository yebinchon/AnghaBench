; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_fill_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32*, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.msdos_dir_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.msdos_sb_info = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i64 }

@ATTR_DIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@fat_dir_operations = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@fat_file_inode_operations = common dso_local global i32 0, align 4
@fat_file_operations = common dso_local global i32 0, align 4
@fat_aops = common dso_local global i32 0, align 4
@ATTR_SYS = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_ATIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_fill_inode(%struct.inode* %0, %struct.msdos_dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.msdos_dir_entry*, align 8
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.msdos_dir_entry* %1, %struct.msdos_dir_entry** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %10)
  store %struct.msdos_sb_info* %11, %struct.msdos_sb_info** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @inode_inc_iversion(%struct.inode* %27)
  %29 = call i32 (...) @get_seconds()
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %33 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATTR_DIR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %2
  %39 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %40 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @IS_FREE(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %101, label %44

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, -2
  store i32 %48, i32* %46, align 8
  %49 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %50 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %51 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @S_IRWXUGO, align 4
  %54 = call i8* @fat_make_mode(%struct.msdos_sb_info* %49, i32 %52, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 10
  store i8* %54, i8** %56, align 8
  %57 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 9
  store i32* %59, i32** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 8
  store i32* @fat_dir_operations, i32** %63, align 8
  %64 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %65 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %66 = call i8* @fat_get_start(%struct.msdos_sb_info* %64, %struct.msdos_dir_entry* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @fat_calc_dir_size(%struct.inode* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %44
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %254

83:                                               ; preds = %44
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call i32 @fat_subdirs(%struct.inode* %91)
  %93 = call i32 @set_nlink(%struct.inode* %90, i32 %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = call i32 @fat_validate_dir(%struct.inode* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %254

100:                                              ; preds = %83
  br label %166

101:                                              ; preds = %38, %2
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %107 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %108 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %111 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %101
  %116 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %117 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 8
  %120 = call i32 @is_exec(i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @S_IRUGO, align 4
  %124 = load i32, i32* @S_IWUGO, align 4
  %125 = or i32 %123, %124
  br label %128

126:                                              ; preds = %115, %101
  %127 = load i32, i32* @S_IRWXUGO, align 4
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i32 [ %125, %122 ], [ %127, %126 ]
  %130 = call i8* @fat_make_mode(%struct.msdos_sb_info* %106, i32 %109, i32 %129)
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 10
  store i8* %130, i8** %132, align 8
  %133 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %134 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %135 = call i8* @fat_get_start(%struct.msdos_sb_info* %133, %struct.msdos_dir_entry* %134)
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %143)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i8* %142, i8** %145, align 8
  %146 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %147 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 9
  store i32* @fat_file_inode_operations, i32** %153, align 8
  %154 = load %struct.inode*, %struct.inode** %4, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 8
  store i32* @fat_file_operations, i32** %155, align 8
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 7
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32* @fat_aops, i32** %159, align 8
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  br label %166

166:                                              ; preds = %128, %100
  %167 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %168 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ATTR_SYS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %175 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* @S_IMMUTABLE, align 4
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %173
  br label %186

186:                                              ; preds = %185, %166
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %189 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @fat_save_attrs(%struct.inode* %187, i32 %190)
  %192 = load %struct.inode*, %struct.inode** %4, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %196 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = add nsw i32 %194, %198
  %200 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %201 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %202, 1
  %204 = xor i32 %203, -1
  %205 = and i32 %199, %204
  %206 = ashr i32 %205, 9
  %207 = load %struct.inode*, %struct.inode** %4, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %210 = load %struct.inode*, %struct.inode** %4, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 3
  %212 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %213 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %216 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %209, i32* %211, i32 %214, i32 %217, i32 0)
  %219 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %220 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %186
  %225 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %226 = load %struct.inode*, %struct.inode** %4, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 5
  %228 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %229 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %232 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %235 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %225, i32* %227, i32 %230, i32 %233, i32 %236)
  %238 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %239 = load %struct.inode*, %struct.inode** %4, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 4
  %241 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %242 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %238, i32* %240, i32 0, i32 %243, i32 0)
  br label %253

245:                                              ; preds = %186
  %246 = load %struct.inode*, %struct.inode** %4, align 8
  %247 = load %struct.inode*, %struct.inode** %4, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 3
  %249 = load i32, i32* @S_ATIME, align 4
  %250 = load i32, i32* @S_CTIME, align 4
  %251 = or i32 %249, %250
  %252 = call i32 @fat_truncate_time(%struct.inode* %246, i32* %248, i32 %251)
  br label %253

253:                                              ; preds = %245, %224
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %98, %81
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local %struct.TYPE_6__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @IS_FREE(i64) #1

declare dso_local i8* @fat_make_mode(%struct.msdos_sb_info*, i32, i32) #1

declare dso_local i8* @fat_get_start(%struct.msdos_sb_info*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @fat_calc_dir_size(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @fat_subdirs(%struct.inode*) #1

declare dso_local i32 @fat_validate_dir(%struct.inode*) #1

declare dso_local i32 @is_exec(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fat_save_attrs(%struct.inode*, i32) #1

declare dso_local i32 @fat_time_fat2unix(%struct.msdos_sb_info*, i32*, i32, i32, i32) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
