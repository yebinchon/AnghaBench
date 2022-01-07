; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { %struct.address_space, i32, i64, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_inode = type { i32, %struct.gfs2_holder, %struct.gfs2_glock*, i32, i32, i64, i32 }
%struct.gfs2_holder = type { i32, %struct.gfs2_glock*, i32 }
%struct.gfs2_glock = type { i32 }

@GIF_FREE_VFS_INODE = common dso_local global i32 0, align 4
@GIF_ALLOC_FAILED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@HIF_HOLDER = common dso_local global i32 0, align 4
@LM_FLAG_TRY_1CB = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_EVICT_INODE = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@GLR_TRYFAILED = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gfs2_evict_inode: %d\0A\00", align 1
@GIF_GLOP_PENDING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_holder, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_glock*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 3
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %3, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %5, align 8
  %18 = load i32, i32* @GIF_FREE_VFS_INODE, align 4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 3
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @clear_inode(%struct.inode* %24)
  br label %379

26:                                               ; preds = %1
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = call i64 @sb_rdonly(%struct.super_block* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %26
  br label %322

36:                                               ; preds = %31
  %37 = load i32, i32* @GIF_ALLOC_FAILED, align 4
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 3
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %44 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %43, i32 0, i32 2
  %45 = load %struct.gfs2_glock*, %struct.gfs2_glock** %44, align 8
  %46 = call i32 @gfs2_glock_is_locked_by_me(%struct.gfs2_glock* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %6)
  br label %117

52:                                               ; preds = %36
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PF_MEMALLOC, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @WARN_ON_ONCE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %322

61:                                               ; preds = %52
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 2
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %63, align 8
  %65 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %66 = load i32, i32* @GL_SKIP, align 4
  %67 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %64, i32 %65, i32 %66, %struct.gfs2_holder* %6)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %61
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %73, i32 0, i32 1
  %75 = load %struct.gfs2_glock*, %struct.gfs2_glock** %74, align 8
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %77 = call i32 @glock_clear_object(%struct.gfs2_glock* %75, %struct.gfs2_inode* %76)
  %78 = load i32, i32* @GL_NOCACHE, align 4
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %80 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %85 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %84, i32 0, i32 1
  %86 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %85)
  br label %322

87:                                               ; preds = %61
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %93 = call i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %88, i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %204

97:                                               ; preds = %87
  %98 = load i32, i32* @GIF_INVALID, align 4
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 3
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %105 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %204

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %97
  %111 = load %struct.inode*, %struct.inode** %2, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %204

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %42
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %119 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %118, i32 0, i32 1
  %120 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %117
  %123 = load i32, i32* @HIF_HOLDER, align 4
  %124 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %125 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %125, i32 0, i32 2
  %127 = call i64 @test_bit(i32 %123, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %122
  %130 = load i32, i32* @GL_NOCACHE, align 4
  %131 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %132 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %137 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %136, i32 0, i32 1
  %138 = call i32 @gfs2_glock_dq_wait(%struct.gfs2_holder* %137)
  %139 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %140 = load i32, i32* @LM_FLAG_TRY_1CB, align 4
  %141 = load i32, i32* @GL_NOCACHE, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %144 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %143, i32 0, i32 1
  %145 = call i32 @gfs2_holder_reinit(i32 %139, i32 %142, %struct.gfs2_holder* %144)
  %146 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %147 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %146, i32 0, i32 1
  %148 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %129
  br label %204

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %152, %122, %117
  %154 = load %struct.inode*, %struct.inode** %2, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @S_ISDIR(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %161 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %168 = call i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %254

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %159, %153
  %174 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %175 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %180 = call i32 @gfs2_ea_dealloc(%struct.gfs2_inode* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %254

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184, %173
  %186 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %187 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %191 = call i32 @gfs2_file_dealloc(%struct.gfs2_inode* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %254

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %185
  %197 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %198 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %197, i32 0, i32 2
  %199 = load %struct.gfs2_glock*, %struct.gfs2_glock** %198, align 8
  %200 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %201 = call i32 @glock_clear_object(%struct.gfs2_glock* %199, %struct.gfs2_inode* %200)
  %202 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %203 = call i32 @gfs2_dinode_dealloc(%struct.gfs2_inode* %202)
  store i32 %203, i32* %8, align 4
  br label %254

204:                                              ; preds = %151, %115, %108, %96
  %205 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %206 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %207 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %206, i32 0, i32 2
  %208 = load %struct.gfs2_glock*, %struct.gfs2_glock** %207, align 8
  %209 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %210 = load i32, i32* @GFS2_LFC_EVICT_INODE, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %205, %struct.gfs2_glock* %208, i32 %211)
  %213 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %214 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %213, i32 0, i32 2
  %215 = load %struct.gfs2_glock*, %struct.gfs2_glock** %214, align 8
  %216 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %215)
  store %struct.address_space* %216, %struct.address_space** %7, align 8
  %217 = load i32, i32* @GLF_DIRTY, align 4
  %218 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %219 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %218, i32 0, i32 2
  %220 = load %struct.gfs2_glock*, %struct.gfs2_glock** %219, align 8
  %221 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %220, i32 0, i32 0
  %222 = call i64 @test_bit(i32 %217, i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %204
  %225 = load %struct.address_space*, %struct.address_space** %7, align 8
  %226 = call i32 @filemap_fdatawrite(%struct.address_space* %225)
  %227 = load %struct.address_space*, %struct.address_space** %7, align 8
  %228 = call i32 @filemap_fdatawait(%struct.address_space* %227)
  br label %229

229:                                              ; preds = %224, %204
  %230 = load %struct.inode*, %struct.inode** %2, align 8
  %231 = call i32 @write_inode_now(%struct.inode* %230, i32 1)
  %232 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %233 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %232, i32 0, i32 2
  %234 = load %struct.gfs2_glock*, %struct.gfs2_glock** %233, align 8
  %235 = call i32 @gfs2_ail_flush(%struct.gfs2_glock* %234, i32 0)
  %236 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %237 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %238 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %237, i32 0, i32 0
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %236, i32 0, i32 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %229
  br label %254

246:                                              ; preds = %229
  %247 = load %struct.inode*, %struct.inode** %2, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 0
  %249 = call i32 @truncate_inode_pages(%struct.address_space* %248, i32 0)
  %250 = load %struct.address_space*, %struct.address_space** %7, align 8
  %251 = call i32 @truncate_inode_pages(%struct.address_space* %250, i32 0)
  %252 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %253 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %252)
  br label %254

254:                                              ; preds = %246, %245, %196, %194, %183, %171
  %255 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %256 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %255, i32 0, i32 4
  %257 = call i64 @gfs2_rs_active(i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %261 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %260, i32 0, i32 4
  %262 = call i32 @gfs2_rs_deltree(i32* %261)
  br label %263

263:                                              ; preds = %259, %254
  %264 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %265 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %264, i32 0, i32 1
  %266 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %295

268:                                              ; preds = %263
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %270 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %270, i32 0, i32 1
  %272 = load %struct.gfs2_glock*, %struct.gfs2_glock** %271, align 8
  %273 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %274 = call i32 @glock_clear_object(%struct.gfs2_glock* %272, %struct.gfs2_inode* %273)
  %275 = load i32, i32* @HIF_HOLDER, align 4
  %276 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %277 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %277, i32 0, i32 2
  %279 = call i64 @test_bit(i32 %275, i32* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %268
  %282 = load i32, i32* @GL_NOCACHE, align 4
  %283 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %284 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %282
  store i32 %287, i32* %285, align 8
  %288 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %289 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %288, i32 0, i32 1
  %290 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %289)
  br label %291

291:                                              ; preds = %281, %268
  %292 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %293 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %292, i32 0, i32 1
  %294 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %293)
  br label %295

295:                                              ; preds = %291, %263
  %296 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %6)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %300 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %299, i32 0, i32 2
  %301 = load %struct.gfs2_glock*, %struct.gfs2_glock** %300, align 8
  %302 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %303 = call i32 @glock_clear_object(%struct.gfs2_glock* %301, %struct.gfs2_inode* %302)
  %304 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  br label %305

305:                                              ; preds = %298, %295
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %305
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* @GLR_TRYFAILED, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* @EROFS, align 4
  %315 = sub nsw i32 0, %314
  %316 = icmp ne i32 %313, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @fs_warn(%struct.gfs2_sbd* %318, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %319)
  br label %321

321:                                              ; preds = %317, %312, %308, %305
  br label %322

322:                                              ; preds = %321, %71, %60, %35
  %323 = load %struct.inode*, %struct.inode** %2, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 0
  %325 = call i32 @truncate_inode_pages_final(%struct.address_space* %324)
  %326 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %327 = call i32 @gfs2_rsqa_delete(%struct.gfs2_inode* %326, i32* null)
  %328 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %329 = call i32 @gfs2_ordered_del_inode(%struct.gfs2_inode* %328)
  %330 = load %struct.inode*, %struct.inode** %2, align 8
  %331 = call i32 @clear_inode(%struct.inode* %330)
  %332 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %333 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %332)
  %334 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %335 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %334, i32 0, i32 2
  %336 = load %struct.gfs2_glock*, %struct.gfs2_glock** %335, align 8
  %337 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %338 = call i32 @glock_clear_object(%struct.gfs2_glock* %336, %struct.gfs2_inode* %337)
  %339 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %340 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %339, i32 0, i32 3
  %341 = load i32, i32* @GIF_GLOP_PENDING, align 4
  %342 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %343 = call i32 @wait_on_bit_io(i32* %340, i32 %341, i32 %342)
  %344 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %345 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %344, i32 0, i32 2
  %346 = load %struct.gfs2_glock*, %struct.gfs2_glock** %345, align 8
  %347 = call i32 @gfs2_glock_add_to_lru(%struct.gfs2_glock* %346)
  %348 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %349 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %348, i32 0, i32 2
  %350 = load %struct.gfs2_glock*, %struct.gfs2_glock** %349, align 8
  %351 = call i32 @gfs2_glock_put_eventually(%struct.gfs2_glock* %350)
  %352 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %353 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %352, i32 0, i32 2
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %353, align 8
  %354 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %355 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %354, i32 0, i32 1
  %356 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %379

358:                                              ; preds = %322
  %359 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %360 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %360, i32 0, i32 1
  %362 = load %struct.gfs2_glock*, %struct.gfs2_glock** %361, align 8
  store %struct.gfs2_glock* %362, %struct.gfs2_glock** %9, align 8
  %363 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %364 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %365 = call i32 @glock_clear_object(%struct.gfs2_glock* %363, %struct.gfs2_inode* %364)
  %366 = load i32, i32* @GL_NOCACHE, align 4
  %367 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %368 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = or i32 %370, %366
  store i32 %371, i32* %369, align 8
  %372 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %373 = call i32 @gfs2_glock_hold(%struct.gfs2_glock* %372)
  %374 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %375 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %374, i32 0, i32 1
  %376 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %375)
  %377 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %378 = call i32 @gfs2_glock_put_eventually(%struct.gfs2_glock* %377)
  br label %379

379:                                              ; preds = %23, %358, %322
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @glock_clear_object(%struct.gfs2_glock*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_wait(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_reinit(i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ea_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_file_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, %struct.gfs2_glock*, i32) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_ail_flush(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_rs_active(i32*) #1

declare dso_local i32 @gfs2_rs_deltree(i32*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @truncate_inode_pages_final(%struct.address_space*) #1

declare dso_local i32 @gfs2_rsqa_delete(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @gfs2_ordered_del_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local i32 @wait_on_bit_io(i32*, i32, i32) #1

declare dso_local i32 @gfs2_glock_add_to_lru(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_glock_put_eventually(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_glock_hold(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
