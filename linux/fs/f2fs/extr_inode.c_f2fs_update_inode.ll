; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.extent_tree = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, %struct.TYPE_3__, %struct.TYPE_3__*, i32, i32, i32, i32, i32*, i32, %struct.extent_tree* }

@NODE = common dso_local global i32 0, align 4
@GC_FAILURE_PIN = common dso_local global i64 0, align 8
@i_projid = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_inode(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_inode*, align 8
  %6 = alloca %struct.extent_tree*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 12
  %11 = load %struct.extent_tree*, %struct.extent_tree** %10, align 8
  store %struct.extent_tree* %11, %struct.extent_tree** %6, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = load i32, i32* @NODE, align 4
  %14 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %12, i32 %13, i32 1, i32 1)
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @set_page_dirty(%struct.page* %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @f2fs_inode_synced(%struct.inode* %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %19)
  store %struct.f2fs_inode* %20, %struct.f2fs_inode** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %25, i32 0, i32 25
  store i8* %24, i8** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %31, i32 0, i32 24
  store i32 %30, i32* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i64 @i_uid_read(%struct.inode* %33)
  %35 = call i8* @cpu_to_le32(i64 %34)
  %36 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %37 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %36, i32 0, i32 23
  store i8* %35, i8** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i64 @i_gid_read(%struct.inode* %38)
  %40 = call i8* @cpu_to_le32(i64 %39)
  %41 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %42 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %41, i32 0, i32 22
  store i8* %40, i8** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_le32(i64 %45)
  %47 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %48 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %47, i32 0, i32 21
  store i8* %46, i8** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i64 @i_size_read(%struct.inode* %49)
  %51 = call i8* @cpu_to_le64(i64 %50)
  %52 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %53 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %52, i32 0, i32 20
  store i8* %51, i8** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @SECTOR_TO_BLOCK(i32 %56)
  %58 = add nsw i64 %57, 1
  %59 = call i8* @cpu_to_le64(i64 %58)
  %60 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %61 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %60, i32 0, i32 19
  store i8* %59, i8** %61, align 8
  %62 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %63 = icmp ne %struct.extent_tree* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %2
  %65 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %66 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %65, i32 0, i32 0
  %67 = call i32 @read_lock(i32* %66)
  %68 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %69 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %68, i32 0, i32 1
  %70 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %71 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %70, i32 0, i32 18
  %72 = call i32 @set_raw_extent(i32* %69, i32* %71)
  %73 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %74 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %73, i32 0, i32 0
  %75 = call i32 @read_unlock(i32* %74)
  br label %80

76:                                               ; preds = %2
  %77 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %78 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %77, i32 0, i32 18
  %79 = call i32 @memset(i32* %78, i32 0, i32 4)
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %83 = call i32 @set_raw_inline(%struct.inode* %81, %struct.f2fs_inode* %82)
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_le64(i64 %87)
  %89 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %90 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %89, i32 0, i32 17
  store i8* %88, i8** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @cpu_to_le64(i64 %94)
  %96 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %97 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %96, i32 0, i32 16
  store i8* %95, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @cpu_to_le64(i64 %101)
  %103 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %104 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %103, i32 0, i32 15
  store i8* %102, i8** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @cpu_to_le32(i64 %108)
  %110 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %111 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %110, i32 0, i32 14
  store i8* %109, i8** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @cpu_to_le32(i64 %115)
  %117 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %118 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %117, i32 0, i32 13
  store i8* %116, i8** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @cpu_to_le32(i64 %122)
  %124 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %125 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %124, i32 0, i32 12
  store i8* %123, i8** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @S_ISDIR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %80
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @cpu_to_le32(i64 %135)
  %137 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %138 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %137, i32 0, i32 11
  store i8* %136, i8** %138, align 8
  br label %157

139:                                              ; preds = %80
  %140 = load %struct.inode*, %struct.inode** %3, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @S_ISREG(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 10
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @GC_FAILURE_PIN, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %155 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %154, i32 0, i32 10
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %145, %139
  br label %157

157:                                              ; preds = %156, %131
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %158)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @cpu_to_le32(i64 %161)
  %163 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %164 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @cpu_to_le32(i64 %168)
  %170 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %171 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %170, i32 0, i32 8
  store i8* %169, i8** %171, align 8
  %172 = load %struct.inode*, %struct.inode** %3, align 8
  %173 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @cpu_to_le32(i64 %175)
  %177 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %178 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %177, i32 0, i32 7
  store i8* %176, i8** %178, align 8
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @cpu_to_le32(i64 %181)
  %183 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %184 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load %struct.inode*, %struct.inode** %3, align 8
  %186 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %190 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 8
  %191 = load %struct.inode*, %struct.inode** %3, align 8
  %192 = call i64 @f2fs_has_extra_attr(%struct.inode* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %270

194:                                              ; preds = %157
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @cpu_to_le16(i32 %198)
  %200 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %201 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  %202 = load %struct.inode*, %struct.inode** %3, align 8
  %203 = call i32 @F2FS_I_SB(%struct.inode* %202)
  %204 = call i64 @f2fs_sb_has_flexible_inline_xattr(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %194
  %207 = load %struct.inode*, %struct.inode** %3, align 8
  %208 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %207)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @cpu_to_le16(i32 %210)
  %212 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %213 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %206, %194
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = call i32 @F2FS_I_SB(%struct.inode* %215)
  %217 = call i64 @f2fs_sb_has_project_quota(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %214
  %220 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %221 = load %struct.inode*, %struct.inode** %3, align 8
  %222 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @i_projid, align 4
  %226 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %220, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %219
  %229 = load %struct.inode*, %struct.inode** %3, align 8
  %230 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %229)
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @from_kprojid(i32* @init_user_ns, i32 %232)
  store i64 %233, i64* %7, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i8* @cpu_to_le32(i64 %234)
  %236 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %237 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %228, %219, %214
  %239 = load %struct.inode*, %struct.inode** %3, align 8
  %240 = call i32 @F2FS_I_SB(%struct.inode* %239)
  %241 = call i64 @f2fs_sb_has_inode_crtime(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %238
  %244 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %245 = load %struct.inode*, %struct.inode** %3, align 8
  %246 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @i_crtime, align 4
  %250 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %244, i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %243
  %253 = load %struct.inode*, %struct.inode** %3, align 8
  %254 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %253)
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i8* @cpu_to_le64(i64 %257)
  %259 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %260 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load %struct.inode*, %struct.inode** %3, align 8
  %262 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %261)
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i8* @cpu_to_le32(i64 %265)
  %267 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %268 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %252, %243, %238
  br label %270

270:                                              ; preds = %269, %157
  %271 = load %struct.inode*, %struct.inode** %3, align 8
  %272 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %273 = call i32 @__set_inode_rdev(%struct.inode* %271, %struct.f2fs_inode* %272)
  %274 = load %struct.inode*, %struct.inode** %3, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load %struct.page*, %struct.page** %4, align 8
  %280 = call i32 @clear_inline_node(%struct.page* %279)
  br label %281

281:                                              ; preds = %278, %270
  %282 = load %struct.inode*, %struct.inode** %3, align 8
  %283 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %282)
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 0
  %287 = load %struct.inode*, %struct.inode** %3, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 4
  %289 = bitcast %struct.TYPE_3__* %286 to i8*
  %290 = bitcast %struct.TYPE_3__* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 %290, i64 16, i1 false)
  %291 = load %struct.inode*, %struct.inode** %3, align 8
  %292 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %291)
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 1
  %296 = load %struct.inode*, %struct.inode** %3, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 3
  %298 = bitcast %struct.TYPE_3__* %295 to i8*
  %299 = bitcast %struct.TYPE_3__* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 16, i1 false)
  %300 = load %struct.inode*, %struct.inode** %3, align 8
  %301 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %300)
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 5
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i64 2
  %305 = load %struct.inode*, %struct.inode** %3, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 2
  %307 = bitcast %struct.TYPE_3__* %304 to i8*
  %308 = bitcast %struct.TYPE_3__* %306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %307, i8* align 8 %308, i64 16, i1 false)
  %309 = load %struct.inode*, %struct.inode** %3, align 8
  %310 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %309)
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i64 3
  %314 = load %struct.inode*, %struct.inode** %3, align 8
  %315 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %314)
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 4
  %317 = bitcast %struct.TYPE_3__* %313 to i8*
  %318 = bitcast %struct.TYPE_3__* %316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %317, i8* align 8 %318, i64 16, i1 false)
  ret void
}

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_inode_synced(%struct.inode*) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @i_uid_read(%struct.inode*) #1

declare dso_local i64 @i_gid_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @SECTOR_TO_BLOCK(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @set_raw_extent(i32*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_raw_inline(%struct.inode*, %struct.f2fs_inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @f2fs_has_extra_attr(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_flexible_inline_xattr(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_project_quota(i32) #1

declare dso_local i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i32, i32) #1

declare dso_local i64 @from_kprojid(i32*, i32) #1

declare dso_local i64 @f2fs_sb_has_inode_crtime(i32) #1

declare dso_local i32 @__set_inode_rdev(%struct.inode*, %struct.f2fs_inode*) #1

declare dso_local i32 @clear_inline_node(%struct.page*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
