; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_do_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_do_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode_info = type { i32, %struct.TYPE_2__, %struct.TYPE_2__*, i8*, i32, i8*, i8*, i32, i8*, i32, i64, i8*, i8**, i8* }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GC_FAILURE_PIN = common dso_local global i64 0, align 8
@F2FS_PROJINHERIT_FL = common dso_local global i32 0, align 4
@DEFAULT_INLINE_XATTR_ADDRS = common dso_local global i8* null, align 8
@EFSCORRUPTED = common dso_local global i32 0, align 4
@FI_FIRST_BLOCK_WRITTEN = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@F2FS_DEF_PROJID = common dso_local global i64 0, align 8
@init_user_ns = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @do_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.f2fs_inode_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.f2fs_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %12)
  store %struct.f2fs_inode_info* %13, %struct.f2fs_inode_info** %5, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @f2fs_check_nid_range(%struct.f2fs_sb_info* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %442

23:                                               ; preds = %1
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %24, i32 %27)
  store %struct.page* %28, %struct.page** %6, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i64 @IS_ERR(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.page* %33)
  store i32 %34, i32* %2, align 4
  br label %442

35:                                               ; preds = %23
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %36)
  store %struct.f2fs_inode* %37, %struct.f2fs_inode** %7, align 8
  %38 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %39 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %38, i32 0, i32 25
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %46 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %45, i32 0, i32 24
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = call i32 @i_uid_write(%struct.inode* %44, i8* %48)
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %52 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %51, i32 0, i32 23
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = call i32 @i_gid_write(%struct.inode* %50, i8* %54)
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %58 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %57, i32 0, i32 22
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = call i32 @set_nlink(%struct.inode* %56, i8* %60)
  %62 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %63 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %62, i32 0, i32 21
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le64_to_cpu(i32 %64)
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %69 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le64_to_cpu(i32 %70)
  %72 = getelementptr i8, i8* %71, i64 -1
  %73 = call i32 @SECTOR_FROM_BLOCK(i8* %72)
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %77 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %76, i32 0, i32 19
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le64_to_cpu(i32 %78)
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %84 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %83, i32 0, i32 18
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le64_to_cpu(i32 %85)
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %91 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le64_to_cpu(i32 %92)
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %98 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %97, i32 0, i32 16
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %105 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %112 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le32_to_cpu(i32 %113)
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  %118 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %119 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @S_ISDIR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %35
  %130 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %131 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %135 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %134, i32 0, i32 13
  store i8* %133, i8** %135, align 8
  br label %153

136:                                              ; preds = %35
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @S_ISREG(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %144 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @le16_to_cpu(i32 %145)
  %147 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %148 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %147, i32 0, i32 12
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* @GC_FAILURE_PIN, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  store i8* %146, i8** %151, align 8
  br label %152

152:                                              ; preds = %142, %136
  br label %153

153:                                              ; preds = %152, %129
  %154 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %155 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @le32_to_cpu(i32 %156)
  %158 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %159 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %158, i32 0, i32 11
  store i8* %157, i8** %159, align 8
  %160 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %161 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @le32_to_cpu(i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %166 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @S_ISREG(i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %153
  %173 = load i32, i32* @F2FS_PROJINHERIT_FL, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %176 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %172, %153
  %180 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %181 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %180, i32 0, i32 10
  store i64 0, i64* %181, align 8
  %182 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %183 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %186 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %188 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @le32_to_cpu(i32 %189)
  %191 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %192 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %191, i32 0, i32 8
  store i8* %190, i8** %192, align 8
  %193 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %194 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %197 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 8
  %198 = load %struct.inode*, %struct.inode** %3, align 8
  %199 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %200 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %199, i32 0, i32 5
  %201 = call i64 @f2fs_init_extent_tree(%struct.inode* %198, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %179
  %204 = load %struct.page*, %struct.page** %6, align 8
  %205 = call i32 @set_page_dirty(%struct.page* %204)
  br label %206

206:                                              ; preds = %203, %179
  %207 = load %struct.inode*, %struct.inode** %3, align 8
  %208 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %209 = call i32 @get_inline_info(%struct.inode* %207, %struct.f2fs_inode* %208)
  %210 = load %struct.inode*, %struct.inode** %3, align 8
  %211 = call i64 @f2fs_has_extra_attr(%struct.inode* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %215 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @le16_to_cpu(i32 %216)
  br label %219

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %213
  %220 = phi i8* [ %217, %213 ], [ null, %218 ]
  %221 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %222 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %221, i32 0, i32 3
  store i8* %220, i8** %222, align 8
  %223 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %224 = call i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %228 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @le16_to_cpu(i32 %229)
  %231 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %232 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %231, i32 0, i32 6
  store i8* %230, i8** %232, align 8
  br label %249

233:                                              ; preds = %219
  %234 = load %struct.inode*, %struct.inode** %3, align 8
  %235 = call i64 @f2fs_has_inline_xattr(%struct.inode* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load %struct.inode*, %struct.inode** %3, align 8
  %239 = call i64 @f2fs_has_inline_dentry(%struct.inode* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %237, %233
  %242 = load i8*, i8** @DEFAULT_INLINE_XATTR_ADDRS, align 8
  %243 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %244 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %243, i32 0, i32 6
  store i8* %242, i8** %244, align 8
  br label %248

245:                                              ; preds = %237
  %246 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %247 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %246, i32 0, i32 6
  store i8* null, i8** %247, align 8
  br label %248

248:                                              ; preds = %245, %241
  br label %249

249:                                              ; preds = %248, %226
  %250 = load %struct.inode*, %struct.inode** %3, align 8
  %251 = load %struct.page*, %struct.page** %6, align 8
  %252 = call i32 @sanity_check_inode(%struct.inode* %250, %struct.page* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load %struct.page*, %struct.page** %6, align 8
  %256 = call i32 @f2fs_put_page(%struct.page* %255, i32 1)
  %257 = load i32, i32* @EFSCORRUPTED, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %442

259:                                              ; preds = %249
  %260 = load %struct.inode*, %struct.inode** %3, align 8
  %261 = call i64 @f2fs_has_inline_data(%struct.inode* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %259
  %264 = load %struct.inode*, %struct.inode** %3, align 8
  %265 = call i32 @f2fs_exist_data(%struct.inode* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load %struct.inode*, %struct.inode** %3, align 8
  %269 = load %struct.page*, %struct.page** %6, align 8
  %270 = call i32 @__recover_inline_status(%struct.inode* %268, %struct.page* %269)
  br label %271

271:                                              ; preds = %267, %263, %259
  %272 = load %struct.inode*, %struct.inode** %3, align 8
  %273 = getelementptr inbounds %struct.inode, %struct.inode* %272, i32 0, i32 5
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @S_ISDIR(i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %271
  %278 = load %struct.page*, %struct.page** %6, align 8
  %279 = call i32 @is_cold_node(%struct.page* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %277
  %282 = load %struct.page*, %struct.page** %6, align 8
  %283 = call i32 @set_cold_node(%struct.page* %282, i32 0)
  %284 = load %struct.page*, %struct.page** %6, align 8
  %285 = call i32 @set_page_dirty(%struct.page* %284)
  br label %286

286:                                              ; preds = %281, %277, %271
  %287 = load %struct.inode*, %struct.inode** %3, align 8
  %288 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %289 = call i32 @__get_inode_rdev(%struct.inode* %287, %struct.f2fs_inode* %288)
  %290 = load %struct.inode*, %struct.inode** %3, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @S_ISREG(i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %313

295:                                              ; preds = %286
  %296 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %297 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %298 = call i32 @__written_first_block(%struct.f2fs_sb_info* %296, %struct.f2fs_inode* %297)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load %struct.page*, %struct.page** %6, align 8
  %303 = call i32 @f2fs_put_page(%struct.page* %302, i32 1)
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %2, align 4
  br label %442

305:                                              ; preds = %295
  %306 = load i32, i32* %9, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %305
  %309 = load %struct.inode*, %struct.inode** %3, align 8
  %310 = load i32, i32* @FI_FIRST_BLOCK_WRITTEN, align 4
  %311 = call i32 @set_inode_flag(%struct.inode* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %305
  br label %313

313:                                              ; preds = %312, %286
  %314 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %315 = load %struct.inode*, %struct.inode** %3, align 8
  %316 = getelementptr inbounds %struct.inode, %struct.inode* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @f2fs_need_inode_block_update(%struct.f2fs_sb_info* %314, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %313
  %321 = load %struct.inode*, %struct.inode** %3, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 3
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %325 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %324, i32 0, i32 5
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %320, %313
  %327 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %328 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @F2FS_PROJINHERIT_FL, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load %struct.inode*, %struct.inode** %3, align 8
  %335 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %336 = call i32 @set_inode_flag(%struct.inode* %334, i32 %335)
  br label %337

337:                                              ; preds = %333, %326
  %338 = load %struct.inode*, %struct.inode** %3, align 8
  %339 = call i64 @f2fs_has_extra_attr(%struct.inode* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %359

341:                                              ; preds = %337
  %342 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %343 = call i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %341
  %346 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %347 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %348 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %347, i32 0, i32 3
  %349 = load i8*, i8** %348, align 8
  %350 = load i64, i64* %8, align 8
  %351 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %346, i8* %349, i64 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %345
  %354 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %355 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @le32_to_cpu(i32 %356)
  %358 = ptrtoint i8* %357 to i64
  store i64 %358, i64* %8, align 8
  br label %361

359:                                              ; preds = %345, %341, %337
  %360 = load i64, i64* @F2FS_DEF_PROJID, align 8
  store i64 %360, i64* %8, align 8
  br label %361

361:                                              ; preds = %359, %353
  %362 = load i64, i64* %8, align 8
  %363 = call i32 @make_kprojid(i32* @init_user_ns, i64 %362)
  %364 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %365 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 8
  %366 = load %struct.inode*, %struct.inode** %3, align 8
  %367 = call i64 @f2fs_has_extra_attr(%struct.inode* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %396

369:                                              ; preds = %361
  %370 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %371 = call i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %396

373:                                              ; preds = %369
  %374 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %375 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %376 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %375, i32 0, i32 3
  %377 = load i8*, i8** %376, align 8
  %378 = load i64, i64* @i_crtime, align 8
  %379 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %374, i8* %377, i64 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %373
  %382 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %383 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i8* @le64_to_cpu(i32 %384)
  %386 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %387 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  store i8* %385, i8** %388, align 8
  %389 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %390 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i8* @le32_to_cpu(i32 %391)
  %393 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %5, align 8
  %394 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i32 0, i32 0
  store i8* %392, i8** %395, align 8
  br label %396

396:                                              ; preds = %381, %373, %369, %361
  %397 = load %struct.inode*, %struct.inode** %3, align 8
  %398 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %397)
  %399 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %398, i32 0, i32 2
  %400 = load %struct.TYPE_2__*, %struct.TYPE_2__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i64 0
  %402 = load %struct.inode*, %struct.inode** %3, align 8
  %403 = getelementptr inbounds %struct.inode, %struct.inode* %402, i32 0, i32 2
  %404 = bitcast %struct.TYPE_2__* %401 to i8*
  %405 = bitcast %struct.TYPE_2__* %403 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %404, i8* align 8 %405, i64 16, i1 false)
  %406 = load %struct.inode*, %struct.inode** %3, align 8
  %407 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %406)
  %408 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %407, i32 0, i32 2
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i64 1
  %411 = load %struct.inode*, %struct.inode** %3, align 8
  %412 = getelementptr inbounds %struct.inode, %struct.inode* %411, i32 0, i32 1
  %413 = bitcast %struct.TYPE_2__* %410 to i8*
  %414 = bitcast %struct.TYPE_2__* %412 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %413, i8* align 8 %414, i64 16, i1 false)
  %415 = load %struct.inode*, %struct.inode** %3, align 8
  %416 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %415)
  %417 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %416, i32 0, i32 2
  %418 = load %struct.TYPE_2__*, %struct.TYPE_2__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i64 2
  %420 = load %struct.inode*, %struct.inode** %3, align 8
  %421 = getelementptr inbounds %struct.inode, %struct.inode* %420, i32 0, i32 0
  %422 = bitcast %struct.TYPE_2__* %419 to i8*
  %423 = bitcast %struct.TYPE_2__* %421 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %422, i8* align 8 %423, i64 16, i1 false)
  %424 = load %struct.inode*, %struct.inode** %3, align 8
  %425 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %424)
  %426 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %425, i32 0, i32 2
  %427 = load %struct.TYPE_2__*, %struct.TYPE_2__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i64 3
  %429 = load %struct.inode*, %struct.inode** %3, align 8
  %430 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %429)
  %431 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %430, i32 0, i32 1
  %432 = bitcast %struct.TYPE_2__* %428 to i8*
  %433 = bitcast %struct.TYPE_2__* %431 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %432, i8* align 8 %433, i64 16, i1 false)
  %434 = load %struct.page*, %struct.page** %6, align 8
  %435 = call i32 @f2fs_put_page(%struct.page* %434, i32 1)
  %436 = load %struct.inode*, %struct.inode** %3, align 8
  %437 = call i32 @stat_inc_inline_xattr(%struct.inode* %436)
  %438 = load %struct.inode*, %struct.inode** %3, align 8
  %439 = call i32 @stat_inc_inline_inode(%struct.inode* %438)
  %440 = load %struct.inode*, %struct.inode** %3, align 8
  %441 = call i32 @stat_inc_inline_dir(%struct.inode* %440)
  store i32 0, i32* %2, align 4
  br label %442

442:                                              ; preds = %396, %301, %254, %32, %20
  %443 = load i32, i32* %2, align 4
  ret i32 %443
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @f2fs_check_nid_range(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @SECTOR_FROM_BLOCK(i8*) #1

declare dso_local i64 @S_ISDIR(i8*) #1

declare dso_local i64 @S_ISREG(i8*) #1

declare dso_local i64 @f2fs_init_extent_tree(%struct.inode*, i32*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @get_inline_info(%struct.inode*, %struct.f2fs_inode*) #1

declare dso_local i64 @f2fs_has_extra_attr(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_has_inline_xattr(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @sanity_check_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_exist_data(%struct.inode*) #1

declare dso_local i32 @__recover_inline_status(%struct.inode*, %struct.page*) #1

declare dso_local i32 @is_cold_node(%struct.page*) #1

declare dso_local i32 @set_cold_node(%struct.page*, i32) #1

declare dso_local i32 @__get_inode_rdev(%struct.inode*, %struct.f2fs_inode*) #1

declare dso_local i32 @__written_first_block(%struct.f2fs_sb_info*, %struct.f2fs_inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_need_inode_block_update(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i8*, i64) #1

declare dso_local i32 @make_kprojid(i32*, i64) #1

declare dso_local i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stat_inc_inline_xattr(%struct.inode*) #1

declare dso_local i32 @stat_inc_inline_inode(%struct.inode*) #1

declare dso_local i32 @stat_inc_inline_dir(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
