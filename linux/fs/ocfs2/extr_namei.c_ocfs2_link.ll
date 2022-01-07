; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_4__, %struct.dentry* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_6__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: no old_dir_bh!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ocfs2_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_5__, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = call %struct.inode* @d_inode(%struct.dentry* %25)
  store %struct.inode* %26, %struct.inode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %15, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ocfs2_super* @OCFS2_SB(i32 %29)
  store %struct.ocfs2_super* %30, %struct.ocfs2_super** %16, align 8
  %31 = bitcast %struct.ocfs2_dir_lookup_result* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @trace_ocfs2_link(i64 %35, i32 %39, i32 %43, i32 %47, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISDIR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %322

61:                                               ; preds = %3
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @dquot_initialize(%struct.inode* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %322

70:                                               ; preds = %61
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i32 @ocfs2_double_lock(%struct.ocfs2_super* %71, %struct.buffer_head** %13, %struct.inode* %72, %struct.buffer_head** %14, %struct.inode* %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %322

87:                                               ; preds = %70
  %88 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %89 = icmp ne %struct.buffer_head* %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %87
  %91 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %92 = icmp ne %struct.buffer_head* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %14, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %96 = call i32 @get_bh(%struct.buffer_head* %95)
  br label %105

97:                                               ; preds = %90
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %100 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mlog(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %304

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @ENOENT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %304

114:                                              ; preds = %106
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = load %struct.dentry*, %struct.dentry** %5, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dentry*, %struct.dentry** %5, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %115, i32 %119, i32 %123, i64* %19)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %11, align 4
  br label %304

130:                                              ; preds = %114
  %131 = load i64, i64* %19, align 8
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %131, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOENT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %304

140:                                              ; preds = %130
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = load %struct.dentry*, %struct.dentry** %7, align 8
  %143 = getelementptr inbounds %struct.dentry, %struct.dentry* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dentry*, %struct.dentry** %7, align 8
  %147 = getelementptr inbounds %struct.dentry, %struct.dentry* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %141, i32 %145, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %304

154:                                              ; preds = %140
  %155 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %156 = load %struct.inode*, %struct.inode** %6, align 8
  %157 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %158 = load %struct.dentry*, %struct.dentry** %7, align 8
  %159 = getelementptr inbounds %struct.dentry, %struct.dentry* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dentry*, %struct.dentry** %7, align 8
  %163 = getelementptr inbounds %struct.dentry, %struct.dentry* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %155, %struct.inode* %156, %struct.buffer_head* %157, i32 %161, i32 %165, %struct.ocfs2_dir_lookup_result* %17)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %154
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @mlog_errno(i32 %170)
  br label %304

172:                                              ; preds = %154
  %173 = load %struct.inode*, %struct.inode** %9, align 8
  %174 = call i32 @ocfs2_inode_lock(%struct.inode* %173, %struct.buffer_head** %12, i32 1)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ENOENT, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp ne i32 %178, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @mlog_errno(i32 %183)
  br label %185

185:                                              ; preds = %182, %177
  br label %304

186:                                              ; preds = %172
  %187 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %188 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %190, %struct.ocfs2_dinode** %15, align 8
  %191 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %192 = call i64 @ocfs2_read_links_count(%struct.ocfs2_dinode* %191)
  %193 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %194 = call i64 @ocfs2_link_max(%struct.ocfs2_super* %193)
  %195 = icmp sge i64 %192, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load i32, i32* @EMLINK, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %11, align 4
  br label %301

199:                                              ; preds = %186
  %200 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %201 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %202 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ocfs2_link_credits(i32 %203)
  %205 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %200, i32 %204)
  store i32* %205, i32** %8, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = call i64 @IS_ERR(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %199
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @PTR_ERR(i32* %210)
  store i32 %211, i32* %11, align 4
  store i32* null, i32** %8, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @mlog_errno(i32 %212)
  br label %301

214:                                              ; preds = %199
  %215 = call i32 @ocfs2_block_signals(i32* %18)
  %216 = load i32*, i32** %8, align 8
  %217 = load %struct.inode*, %struct.inode** %9, align 8
  %218 = call i32 @INODE_CACHE(%struct.inode* %217)
  %219 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %220 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %221 = call i32 @ocfs2_journal_access_di(i32* %216, i32 %218, %struct.buffer_head* %219, i32 %220)
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @mlog_errno(i32 %225)
  br label %296

227:                                              ; preds = %214
  %228 = load %struct.inode*, %struct.inode** %9, align 8
  %229 = call i32 @inc_nlink(%struct.inode* %228)
  %230 = load %struct.inode*, %struct.inode** %9, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 0
  %232 = load %struct.inode*, %struct.inode** %9, align 8
  %233 = call i64 @current_time(%struct.inode* %232)
  %234 = bitcast %struct.TYPE_5__* %20 to i64*
  store i64 %233, i64* %234, align 4
  %235 = bitcast %struct.TYPE_5__* %231 to i8*
  %236 = bitcast %struct.TYPE_5__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %235, i8* align 4 %236, i64 8, i1 false)
  %237 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %238 = load %struct.inode*, %struct.inode** %9, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %237, i32 %240)
  %242 = load %struct.inode*, %struct.inode** %9, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @cpu_to_le64(i32 %245)
  %247 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %248 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load %struct.inode*, %struct.inode** %9, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @cpu_to_le32(i32 %252)
  %254 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %255 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %258 = call i32 @ocfs2_journal_dirty(i32* %256, %struct.buffer_head* %257)
  %259 = load i32*, i32** %8, align 8
  %260 = load %struct.dentry*, %struct.dentry** %7, align 8
  %261 = load %struct.inode*, %struct.inode** %9, align 8
  %262 = load %struct.inode*, %struct.inode** %9, align 8
  %263 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %262)
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %267 = call i32 @ocfs2_add_entry(i32* %259, %struct.dentry* %260, %struct.inode* %261, i64 %265, %struct.buffer_head* %266, %struct.ocfs2_dir_lookup_result* %17)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %227
  %271 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %272 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %271, i32 -1)
  %273 = load %struct.inode*, %struct.inode** %9, align 8
  %274 = call i32 @drop_nlink(%struct.inode* %273)
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @mlog_errno(i32 %275)
  br label %296

277:                                              ; preds = %227
  %278 = load %struct.dentry*, %struct.dentry** %7, align 8
  %279 = load %struct.inode*, %struct.inode** %9, align 8
  %280 = load %struct.inode*, %struct.inode** %6, align 8
  %281 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %280)
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %278, %struct.inode* %279, i64 %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %277
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @mlog_errno(i32 %288)
  br label %296

290:                                              ; preds = %277
  %291 = load %struct.inode*, %struct.inode** %9, align 8
  %292 = call i32 @ihold(%struct.inode* %291)
  %293 = load %struct.dentry*, %struct.dentry** %7, align 8
  %294 = load %struct.inode*, %struct.inode** %9, align 8
  %295 = call i32 @d_instantiate(%struct.dentry* %293, %struct.inode* %294)
  br label %296

296:                                              ; preds = %290, %287, %270, %224
  %297 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %298 = load i32*, i32** %8, align 8
  %299 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %297, i32* %298)
  %300 = call i32 @ocfs2_unblock_signals(i32* %18)
  br label %301

301:                                              ; preds = %296, %209, %196
  %302 = load %struct.inode*, %struct.inode** %9, align 8
  %303 = call i32 @ocfs2_inode_unlock(%struct.inode* %302, i32 1)
  br label %304

304:                                              ; preds = %301, %185, %169, %153, %137, %127, %111, %97
  %305 = load %struct.inode*, %struct.inode** %10, align 8
  %306 = load %struct.inode*, %struct.inode** %6, align 8
  %307 = call i32 @ocfs2_double_unlock(%struct.inode* %305, %struct.inode* %306)
  %308 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %309 = call i32 @brelse(%struct.buffer_head* %308)
  %310 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %311 = call i32 @brelse(%struct.buffer_head* %310)
  %312 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %313 = call i32 @brelse(%struct.buffer_head* %312)
  %314 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %17)
  %315 = load i32, i32* %11, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %304
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @mlog_errno(i32 %318)
  br label %320

320:                                              ; preds = %317, %304
  %321 = load i32, i32* %11, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %320, %85, %66, %58
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @trace_ocfs2_link(i64, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_double_lock(%struct.ocfs2_super*, %struct.buffer_head**, %struct.inode*, %struct.buffer_head**, %struct.inode*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i32, i32, i64*) #1

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i64 @ocfs2_link_max(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_link_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_block_signals(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_add_entry(i32*, %struct.dentry*, %struct.inode*, i64, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i64) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unblock_signals(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_double_unlock(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
