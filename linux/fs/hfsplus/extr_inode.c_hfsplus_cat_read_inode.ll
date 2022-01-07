; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_cat_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_cat_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.hfs_find_data = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.hfsplus_cat_file, %struct.hfsplus_cat_folder }
%struct.hfsplus_cat_file = type { i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.hfsplus_cat_folder = type { i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@HFSPLUS_FOLDER = common dso_local global i64 0, align 8
@HFSPLUS_HAS_FOLDER_COUNT = common dso_local global i32 0, align 4
@hfsplus_dir_inode_operations = common dso_local global i32 0, align 4
@hfsplus_dir_operations = common dso_local global i32 0, align 4
@HFSPLUS_FILE = common dso_local global i64 0, align 8
@hfsplus_file_inode_operations = common dso_local global i32 0, align 4
@hfsplus_file_operations = common dso_local global i32 0, align 4
@hfsplus_aops = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad catalog entry used to create inode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_cat_read_inode(%struct.inode* %0, %struct.hfs_find_data* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfs_find_data*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfsplus_cat_folder*, align 8
  %9 = alloca %struct.hfsplus_cat_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %11 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %14 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @hfs_bnode_read_u16(i32 %12, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.TYPE_9__* @HFSPLUS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @HFSPLUS_FOLDER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %102

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store %struct.hfsplus_cat_folder* %24, %struct.hfsplus_cat_folder** %8, align 8
  %25 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %26 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 48
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %33 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %36 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hfs_bnode_read(i32 %34, %struct.TYPE_7__* %5, i32 %37, i32 48)
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %41 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %40, i32 0, i32 7
  %42 = call i32 @hfsplus_get_perms(%struct.inode* %39, %struct.TYPE_8__* %41, i32 1)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @set_nlink(%struct.inode* %43, i32 1)
  %45 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %46 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @be32_to_cpu(i64 %47)
  %49 = add nsw i32 2, %48
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %53 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hfsp_mt2ut(i32 %54)
  %56 = call i8* @timespec_to_timespec64(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %60 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hfsp_mt2ut(i32 %61)
  %63 = call i8* @timespec_to_timespec64(i32 %62)
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %67 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hfsp_mt2ut(i32 %68)
  %70 = call i8* @timespec_to_timespec64(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %74 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call %struct.TYPE_9__* @HFSPLUS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = call %struct.TYPE_9__* @HFSPLUS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %83 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @HFSPLUS_HAS_FOLDER_COUNT, align 4
  %86 = call i32 @cpu_to_be16(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %31
  %90 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %8, align 8
  %91 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @be32_to_cpu(i64 %92)
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call %struct.TYPE_9__* @HFSPLUS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %31
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 6
  store i32* @hfsplus_dir_inode_operations, i32** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 7
  store i32* @hfsplus_dir_operations, i32** %101, align 8
  br label %229

102:                                              ; preds = %2
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @HFSPLUS_FILE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %224

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store %struct.hfsplus_cat_file* %107, %struct.hfsplus_cat_file** %9, align 8
  %108 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %109 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %111, 32
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %106
  %115 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %116 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %119 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @hfs_bnode_read(i32 %117, %struct.TYPE_7__* %5, i32 %120, i32 32)
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = load %struct.inode*, %struct.inode** %3, align 8
  %124 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %114
  %127 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %128 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %127, i32 0, i32 6
  br label %132

129:                                              ; preds = %114
  %130 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %131 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %130, i32 0, i32 5
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i32* [ %128, %126 ], [ %131, %129 ]
  %134 = call i32 @hfsplus_inode_read_fork(%struct.inode* %122, i32* %133)
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %137 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %136, i32 0, i32 4
  %138 = call i32 @hfsplus_get_perms(%struct.inode* %135, %struct.TYPE_8__* %137, i32 0)
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = call i32 @set_nlink(%struct.inode* %139, i32 1)
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @S_ISREG(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %132
  %147 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %148 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  %154 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %155 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @be32_to_cpu(i64 %157)
  %159 = call i32 @set_nlink(%struct.inode* %153, i32 %158)
  br label %160

160:                                              ; preds = %152, %146
  %161 = load %struct.inode*, %struct.inode** %3, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 6
  store i32* @hfsplus_file_inode_operations, i32** %162, align 8
  %163 = load %struct.inode*, %struct.inode** %3, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 7
  store i32* @hfsplus_file_operations, i32** %164, align 8
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 5
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %168, align 8
  br label %196

169:                                              ; preds = %132
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @S_ISLNK(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.inode*, %struct.inode** %3, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 6
  store i32* @page_symlink_inode_operations, i32** %177, align 8
  %178 = load %struct.inode*, %struct.inode** %3, align 8
  %179 = call i32 @inode_nohighmem(%struct.inode* %178)
  %180 = load %struct.inode*, %struct.inode** %3, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 5
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %183, align 8
  br label %195

184:                                              ; preds = %169
  %185 = load %struct.inode*, %struct.inode** %3, align 8
  %186 = load %struct.inode*, %struct.inode** %3, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %190 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @be32_to_cpu(i64 %192)
  %194 = call i32 @init_special_inode(%struct.inode* %185, i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %184, %175
  br label %196

196:                                              ; preds = %195, %160
  %197 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %198 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @hfsp_mt2ut(i32 %199)
  %201 = call i8* @timespec_to_timespec64(i32 %200)
  %202 = load %struct.inode*, %struct.inode** %3, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %205 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @hfsp_mt2ut(i32 %206)
  %208 = call i8* @timespec_to_timespec64(i32 %207)
  %209 = load %struct.inode*, %struct.inode** %3, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %212 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @hfsp_mt2ut(i32 %213)
  %215 = call i8* @timespec_to_timespec64(i32 %214)
  %216 = load %struct.inode*, %struct.inode** %3, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %219 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.inode*, %struct.inode** %3, align 8
  %222 = call %struct.TYPE_9__* @HFSPLUS_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  br label %228

224:                                              ; preds = %102
  %225 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %226 = load i32, i32* @EIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %224, %196
  br label %229

229:                                              ; preds = %228, %97
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local i64 @hfs_bnode_read_u16(i32, i32) #1

declare dso_local %struct.TYPE_9__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hfsplus_get_perms(%struct.inode*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

declare dso_local i32 @hfsp_mt2ut(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @hfsplus_inode_read_fork(%struct.inode*, i32*) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
