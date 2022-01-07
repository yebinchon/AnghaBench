; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_inplace_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_inplace_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_6__, i32, %struct.gfs2_blkreserv }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_blkreserv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, i64, i32 }
%struct.gfs2_alloc_parms = type { i64, i32, i64, i64 }
%struct.gfs2_sbd = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NO_BLOCK = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFS2_AF_ORLOV = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GFS2_RGF_NOALLOC = common dso_local global i32 0, align 4
@GFS2_RDF_ERROR = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_INPLACE_RESERVE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %0, %struct.gfs2_alloc_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_alloc_parms*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca %struct.gfs2_blkreserv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_alloc_parms* %1, %struct.gfs2_alloc_parms** %5, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 2
  %18 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_rgrpd* null, %struct.gfs2_rgrpd** %7, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 4
  store %struct.gfs2_blkreserv* %20, %struct.gfs2_blkreserv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @NO_BLOCK, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @GL_SKIP, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %33 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %389

41:                                               ; preds = %31
  %42 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %43 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %47 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %48, align 8
  store %struct.gfs2_rgrpd* %49, %struct.gfs2_rgrpd** %7, align 8
  br label %83

50:                                               ; preds = %41
  %51 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %52 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %53, align 8
  %55 = icmp ne %struct.gfs2_rgrpd* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %58 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %59, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @rgrp_contains_block(%struct.gfs2_rgrpd* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %68 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %69, align 8
  store %struct.gfs2_rgrpd* %70, %struct.gfs2_rgrpd** %7, align 8
  br label %82

71:                                               ; preds = %56, %50
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = call i32 @check_and_update_goal(%struct.gfs2_inode* %72)
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %76 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %74, i32 %77, i32 1)
  store %struct.gfs2_rgrpd* %78, %struct.gfs2_rgrpd** %7, align 8
  %79 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %80 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.gfs2_rgrpd* %78, %struct.gfs2_rgrpd** %81, align 8
  br label %82

82:                                               ; preds = %71, %66
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %85 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %92 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GFS2_AF_ORLOV, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %99 = call i64 @gfs2_orlov_skip(%struct.gfs2_inode* %98)
  store i64 %99, i64* %15, align 8
  br label %100

100:                                              ; preds = %97, %90, %83
  %101 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %102 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %103, align 8
  %105 = icmp eq %struct.gfs2_rgrpd* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @EBADSLT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %389

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %385, %353, %349, %109
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %386

113:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  %114 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %115 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %116, align 8
  %118 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @gfs2_glock_is_locked_by_me(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %217, label %122

122:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  %123 = load i64, i64* %15, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i64, i64* %15, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %15, align 8
  %128 = icmp ne i64 %126, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %342

130:                                              ; preds = %125, %122
  %131 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %132 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %162, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %139 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %140, align 8
  %142 = call i32 @fast_to_acquire(%struct.gfs2_rgrpd* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  br label %342

145:                                              ; preds = %137, %134
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %150 = call i64 @gfs2_rgrp_used_recently(%struct.gfs2_blkreserv* %149, i32 1000)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %154 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i64 @gfs2_rgrp_congested(%struct.gfs2_rgrpd* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %342

161:                                              ; preds = %152, %148, %145
  br label %162

162:                                              ; preds = %161, %130
  %163 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %164 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %165, align 8
  %167 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %172 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %171, i32 0, i32 0
  %173 = call i32 @gfs2_glock_nq_init(i32 %168, i32 %169, i32 %170, i32* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %162
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %3, align 4
  br label %389

179:                                              ; preds = %162
  %180 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %181 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %188 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i64 @gfs2_rgrp_congested(%struct.gfs2_rgrpd* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %327

195:                                              ; preds = %186, %183, %179
  %196 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %197 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %195
  %202 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %203 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %204, align 8
  %206 = call i32 @update_rgrp_lvb(%struct.gfs2_rgrpd* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %212 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %211, i32 0, i32 0
  %213 = call i32 @gfs2_glock_dq_uninit(i32* %212)
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %3, align 4
  br label %389

215:                                              ; preds = %201
  br label %216

216:                                              ; preds = %215, %195
  br label %217

217:                                              ; preds = %216, %113
  %218 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %219 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %220, align 8
  %222 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @GFS2_RGF_NOALLOC, align 4
  %225 = load i32, i32* @GFS2_RDF_ERROR, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %223, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %217
  %230 = load i32, i32* %13, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %229
  %233 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %234 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %237 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %238, align 8
  %240 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %235, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %232, %217
  br label %327

244:                                              ; preds = %232, %229
  %245 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %246 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %252 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %253, align 8
  %255 = call i32 @gfs2_rgrp_bh_get(%struct.gfs2_rgrpd* %254)
  br label %256

256:                                              ; preds = %250, %244
  %257 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %258 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %262 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %263, align 8
  %265 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %266 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %267 = call i32 @rg_mblk_search(%struct.gfs2_rgrpd* %264, %struct.gfs2_inode* %265, %struct.gfs2_alloc_parms* %266)
  br label %268

268:                                              ; preds = %260, %256
  %269 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %270 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* %13, align 4
  %274 = icmp slt i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %307

276:                                              ; preds = %272, %268
  %277 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %278 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %279, align 8
  %281 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %282 = call i64 @rgd_free(%struct.gfs2_rgrpd* %280, %struct.gfs2_blkreserv* %281)
  store i64 %282, i64* %14, align 8
  %283 = load i64, i64* %14, align 8
  %284 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %285 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp sge i64 %283, %286
  br i1 %287, label %302, label %288

288:                                              ; preds = %276
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %291, label %306

291:                                              ; preds = %288
  %292 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %293 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load i64, i64* %14, align 8
  %298 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %299 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp sge i64 %297, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296, %276
  %303 = load i64, i64* %14, align 8
  %304 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %305 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %304, i32 0, i32 3
  store i64 %303, i64* %305, align 8
  store i32 0, i32* %3, align 4
  br label %389

306:                                              ; preds = %296, %291, %288
  br label %307

307:                                              ; preds = %306, %275
  %308 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %309 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %310, align 8
  %312 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %307
  %318 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %319 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %320, align 8
  %322 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %323 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @try_rgrp_unlink(%struct.gfs2_rgrpd* %321, i32* %12, i32 %324)
  br label %326

326:                                              ; preds = %317, %307
  br label %327

327:                                              ; preds = %326, %243, %194
  %328 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %329 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %333 = call i32 @gfs2_rs_deltree(%struct.gfs2_blkreserv* %332)
  br label %334

334:                                              ; preds = %331, %327
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %334
  %338 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %339 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %338, i32 0, i32 0
  %340 = call i32 @gfs2_glock_dq_uninit(i32* %339)
  br label %341

341:                                              ; preds = %337, %334
  br label %342

342:                                              ; preds = %341, %160, %144, %129
  %343 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %344 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  %346 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %347 = call i64 @gfs2_select_rgrp(%struct.gfs2_rgrpd** %345, %struct.gfs2_rgrpd* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %342
  br label %110

350:                                              ; preds = %342
  %351 = load i64, i64* %15, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  br label %110

354:                                              ; preds = %350
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  %357 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %358 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %359 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call %struct.gfs2_inode* @GFS2_I(i32 %360)
  %362 = icmp eq %struct.gfs2_inode* %357, %361
  br i1 %362, label %363, label %376

363:                                              ; preds = %354
  %364 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %365 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %376, label %368

368:                                              ; preds = %363
  %369 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %370 = call i32 @gfs2_ri_update(%struct.gfs2_inode* %369)
  store i32 %370, i32* %9, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = load i32, i32* %9, align 4
  store i32 %374, i32* %3, align 4
  br label %389

375:                                              ; preds = %368
  br label %376

376:                                              ; preds = %375, %363, %354
  %377 = load i32, i32* %13, align 4
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  %380 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %381 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %382 = load i32, i32* @GFS2_LFC_INPLACE_RESERVE, align 4
  %383 = or i32 %381, %382
  %384 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %380, i32* null, i32 %383)
  br label %385

385:                                              ; preds = %379, %376
  br label %110

386:                                              ; preds = %110
  %387 = load i32, i32* @ENOSPC, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %386, %373, %302, %210, %177, %106, %38
  %390 = load i32, i32* %3, align 4
  ret i32 %390
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i64) #1

declare dso_local i64 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i64 @rgrp_contains_block(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @check_and_update_goal(%struct.gfs2_inode*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @gfs2_orlov_skip(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @fast_to_acquire(%struct.gfs2_rgrpd*) #1

declare dso_local i64 @gfs2_rgrp_used_recently(%struct.gfs2_blkreserv*, i32) #1

declare dso_local i64 @gfs2_rgrp_congested(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @update_rgrp_lvb(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i32 @gfs2_rgrp_bh_get(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @rg_mblk_search(%struct.gfs2_rgrpd*, %struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @rgd_free(%struct.gfs2_rgrpd*, %struct.gfs2_blkreserv*) #1

declare dso_local i32 @try_rgrp_unlink(%struct.gfs2_rgrpd*, i32*, i32) #1

declare dso_local i32 @gfs2_rs_deltree(%struct.gfs2_blkreserv*) #1

declare dso_local i64 @gfs2_select_rgrp(%struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_ri_update(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
