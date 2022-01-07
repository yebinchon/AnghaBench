; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_dqinfo = type { i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32, i32, i32, %struct.buffer_head*, i32, i32, %struct.buffer_head*, i8*, i8*, i32* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_quota_recovery = type { i32* }
%struct.TYPE_4__ = type { %struct.inode** }
%struct.TYPE_5__ = type { %struct.ocfs2_quota_recovery* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to allocate memory for ocfs2 quota info.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to read quota file info header (type=%d)\0A\00", align 1
@OCFS2_LOCAL_INFO_OFF = common dso_local global i64 0, align 8
@OLQF_CLEAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@olq_update_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ocfs2_local_read_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_read_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_local_disk_dqinfo*, align 8
  %7 = alloca %struct.mem_dqinfo*, align 8
  %8 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_quota_recovery*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block* %14, i32 %15)
  store %struct.mem_dqinfo* %16, %struct.mem_dqinfo** %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode**, %struct.inode*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.inode*, %struct.inode** %20, i64 %22
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %26 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %28 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call %struct.ocfs2_mem_dqinfo* @kmalloc(i32 64, i32 %29)
  store %struct.ocfs2_mem_dqinfo* %30, %struct.ocfs2_mem_dqinfo** %8, align 8
  %31 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %32 = icmp ne %struct.ocfs2_mem_dqinfo* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ML_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @mlog(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %181

36:                                               ; preds = %2
  %37 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %38 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %39 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %38, i32 0, i32 2
  store %struct.ocfs2_mem_dqinfo* %37, %struct.ocfs2_mem_dqinfo** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %46, i32 0, i32 9
  store i32* null, i32** %47, align 8
  %48 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %49 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %48, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %49, align 8
  %50 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %50, i32 0, i32 6
  store %struct.buffer_head* null, %struct.buffer_head** %51, align 8
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ocfs2_global_read_info(%struct.super_block* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %181

58:                                               ; preds = %36
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %60, i32 0, i32 3
  %62 = call i32 @ocfs2_inode_lock(%struct.inode* %59, %struct.buffer_head** %61, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %181

68:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = call i32 @ocfs2_read_quota_block(%struct.inode* %69, i32 0, %struct.buffer_head** %11)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  %76 = load i32, i32* @ML_ERROR, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i32, i8*, ...) @mlog(i32 %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %181

79:                                               ; preds = %68
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OCFS2_LOCAL_INFO_OFF, align 8
  %84 = add nsw i64 %82, %83
  %85 = inttoptr i64 %84 to %struct.ocfs2_local_disk_dqinfo*
  store %struct.ocfs2_local_disk_dqinfo* %85, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %86 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %87 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %92 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %94 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %98 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %100 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le32_to_cpu(i32 %101)
  %103 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %104 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %106 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %107 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %106, i32 0, i32 6
  store %struct.buffer_head* %105, %struct.buffer_head** %107, align 8
  %108 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %109 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @OLQF_CLEAN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %152, label %114

114:                                              ; preds = %79
  %115 = load %struct.super_block*, %struct.super_block** %4, align 8
  %116 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %117, align 8
  store %struct.ocfs2_quota_recovery* %118, %struct.ocfs2_quota_recovery** %12, align 8
  %119 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %120 = icmp ne %struct.ocfs2_quota_recovery* %119, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %114
  %122 = call %struct.ocfs2_quota_recovery* (...) @ocfs2_alloc_quota_recovery()
  store %struct.ocfs2_quota_recovery* %122, %struct.ocfs2_quota_recovery** %12, align 8
  %123 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %124 = icmp ne %struct.ocfs2_quota_recovery* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @mlog_errno(i32 %128)
  br label %181

130:                                              ; preds = %121
  %131 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %132 = load %struct.super_block*, %struct.super_block** %4, align 8
  %133 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %132)
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store %struct.ocfs2_quota_recovery* %131, %struct.ocfs2_quota_recovery** %134, align 8
  br label %135

135:                                              ; preds = %130, %114
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %140 = getelementptr inbounds %struct.ocfs2_quota_recovery, %struct.ocfs2_quota_recovery* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @ocfs2_recovery_load_quota(%struct.inode* %136, %struct.ocfs2_local_disk_dqinfo* %137, i32 %138, i32* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @mlog_errno(i32 %149)
  br label %181

151:                                              ; preds = %135
  br label %152

152:                                              ; preds = %151, %79
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %155 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %156 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %155, i32 0, i32 2
  %157 = call i32 @ocfs2_load_local_quota_bitmaps(%struct.inode* %153, %struct.ocfs2_local_disk_dqinfo* %154, i32* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %181

163:                                              ; preds = %152
  %164 = load i32, i32* @OLQF_CLEAN, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %167 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %172 = load i32, i32* @olq_update_info, align 4
  %173 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %174 = call i32 @ocfs2_modify_bh(%struct.inode* %170, %struct.buffer_head* %171, i32 %172, %struct.mem_dqinfo* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %181

180:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %215

181:                                              ; preds = %177, %160, %148, %125, %73, %65, %57, %33
  %182 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %183 = icmp ne %struct.ocfs2_mem_dqinfo* %182, null
  br i1 %183, label %184, label %212

184:                                              ; preds = %181
  %185 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %186 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @iput(i32 %187)
  %189 = load %struct.super_block*, %struct.super_block** %4, align 8
  %190 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %189)
  %191 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %192 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %191, i32 0, i32 4
  %193 = call i32 @ocfs2_simple_drop_lockres(%struct.TYPE_5__* %190, i32* %192)
  %194 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %195 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %194, i32 0, i32 4
  %196 = call i32 @ocfs2_lock_res_free(i32* %195)
  %197 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %198 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %197, i32 0, i32 3
  %199 = load %struct.buffer_head*, %struct.buffer_head** %198, align 8
  %200 = call i32 @brelse(%struct.buffer_head* %199)
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %184
  %204 = load %struct.inode*, %struct.inode** %9, align 8
  %205 = call i32 @ocfs2_inode_unlock(%struct.inode* %204, i32 1)
  br label %206

206:                                              ; preds = %203, %184
  %207 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %208 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %207, i32 0, i32 2
  %209 = call i32 @ocfs2_release_local_quota_bitmaps(i32* %208)
  %210 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %211 = call i32 @kfree(%struct.ocfs2_mem_dqinfo* %210)
  br label %212

212:                                              ; preds = %206, %181
  %213 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %214 = call i32 @brelse(%struct.buffer_head* %213)
  store i32 -1, i32* %3, align 4
  br label %215

215:                                              ; preds = %212, %180
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(%struct.super_block*) #1

declare dso_local %struct.ocfs2_mem_dqinfo* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ocfs2_global_read_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_quota_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.ocfs2_quota_recovery* @ocfs2_alloc_quota_recovery(...) #1

declare dso_local i32 @ocfs2_recovery_load_quota(%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, i32, i32*) #1

declare dso_local i32 @ocfs2_load_local_quota_bitmaps(%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, i32*) #1

declare dso_local i32 @ocfs2_modify_bh(%struct.inode*, %struct.buffer_head*, i32, %struct.mem_dqinfo*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_release_local_quota_bitmaps(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_mem_dqinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
