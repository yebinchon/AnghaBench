; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_cui_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_cui_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.xfs_cui_log_item = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.xfs_phys_extent* }
%struct.xfs_phys_extent = type { i64, i32, i64 }
%struct.xfs_cud_log_item = type { i32 }
%struct.xfs_btree_cur = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@XFS_CUI_RECOVERED = common dso_local global i32 0, align 4
@XFS_REFCOUNT_EXTENT_TYPE_MASK = common dso_local global i32 0, align 4
@XFS_REFCOUNT_EXTENT_FLAGS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_cui_recover(%struct.xfs_trans* %0, %struct.xfs_cui_log_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_cui_log_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_phys_extent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_cud_log_item*, align 8
  %13 = alloca %struct.xfs_trans*, align 8
  %14 = alloca %struct.xfs_btree_cur*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.xfs_bmbt_irec, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_cui_log_item* %1, %struct.xfs_cui_log_item** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %14, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %21, i32 0, i32 0
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %20, align 8
  %24 = load i32, i32* @XFS_CUI_RECOVERED, align 4
  %25 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %106, %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %32
  %40 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %43, i64 %45
  store %struct.xfs_phys_extent* %46, %struct.xfs_phys_extent** %9, align 8
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %49 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %50 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %48, i64 %51)
  %53 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %47, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %55 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @XFS_REFCOUNT_EXTENT_TYPE_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %60 [
    i32 128, label %59
    i32 130, label %59
    i32 131, label %59
    i32 129, label %59
  ]

59:                                               ; preds = %39, %39, %39, %39
  store i32 1, i32* %11, align 4
  br label %61

60:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %64
  %68 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %69 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %75 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br i1 %78, label %96, label %79

79:                                               ; preds = %72
  %80 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %81 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %84 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %82, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %90 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XFS_REFCOUNT_EXTENT_FLAGS, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %88, %79, %72, %67, %64, %61
  %97 = load i32, i32* @XFS_CUI_RECOVERED, align 4
  %98 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %99 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %98, i32 0, i32 0
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  %101 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %102 = call i32 @xfs_cui_release(%struct.xfs_cui_log_item* %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %244

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %32

109:                                              ; preds = %32
  %110 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %112 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %115 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %119 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %110, i32* %113, i32 %117, i32 0, i32 %118, %struct.xfs_trans** %13)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %244

124:                                              ; preds = %109
  %125 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %126 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %127 = call i32 @xfs_defer_move(%struct.xfs_trans* %125, %struct.xfs_trans* %126)
  %128 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %129 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %130 = call %struct.xfs_cud_log_item* @xfs_trans_get_cud(%struct.xfs_trans* %128, %struct.xfs_cui_log_item* %129)
  store %struct.xfs_cud_log_item* %130, %struct.xfs_cud_log_item** %12, align 8
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %215, %124
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %134 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %218

138:                                              ; preds = %131
  %139 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %140 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %142, i64 %144
  store %struct.xfs_phys_extent* %145, %struct.xfs_phys_extent** %9, align 8
  %146 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %147 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @XFS_REFCOUNT_EXTENT_TYPE_MASK, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  switch i32 %151, label %154 [
    i32 128, label %152
    i32 130, label %152
    i32 131, label %152
    i32 129, label %152
  ]

152:                                              ; preds = %138, %138, %138, %138
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %15, align 4
  br label %157

154:                                              ; preds = %138
  %155 = load i32, i32* @EFSCORRUPTED, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %233

157:                                              ; preds = %152
  %158 = load i32, i32* %19, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %162 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %16, align 8
  %164 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %165 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %17, align 8
  br label %178

167:                                              ; preds = %157
  %168 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %169 = load %struct.xfs_cud_log_item*, %struct.xfs_cud_log_item** %12, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %172 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.xfs_phys_extent*, %struct.xfs_phys_extent** %9, align 8
  %175 = getelementptr inbounds %struct.xfs_phys_extent, %struct.xfs_phys_extent* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @xfs_trans_log_finish_refcount_update(%struct.xfs_trans* %168, %struct.xfs_cud_log_item* %169, i32 %170, i64 %173, i64 %176, i64* %16, i64* %17, %struct.xfs_btree_cur** %14)
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %167, %160
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %233

182:                                              ; preds = %178
  %183 = load i64, i64* %17, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  %186 = load i64, i64* %16, align 8
  %187 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 1
  store i64 %186, i64* %187, align 8
  %188 = load i64, i64* %17, align 8
  %189 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  store i64 %188, i64* %189, align 8
  %190 = load i32, i32* %15, align 4
  switch i32 %190, label %211 [
    i32 128, label %191
    i32 130, label %194
    i32 131, label %197
    i32 129, label %204
  ]

191:                                              ; preds = %185
  %192 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %193 = call i32 @xfs_refcount_increase_extent(%struct.xfs_trans* %192, %struct.xfs_bmbt_irec* %18)
  br label %213

194:                                              ; preds = %185
  %195 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %196 = call i32 @xfs_refcount_decrease_extent(%struct.xfs_trans* %195, %struct.xfs_bmbt_irec* %18)
  br label %213

197:                                              ; preds = %185
  %198 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %199 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @xfs_refcount_alloc_cow_extent(%struct.xfs_trans* %198, i64 %200, i64 %202)
  br label %213

204:                                              ; preds = %185
  %205 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %206 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @xfs_refcount_free_cow_extent(%struct.xfs_trans* %205, i64 %207, i64 %209)
  br label %213

211:                                              ; preds = %185
  %212 = call i32 @ASSERT(i32 0)
  br label %213

213:                                              ; preds = %211, %204, %197, %194, %191
  store i32 1, i32* %19, align 4
  br label %214

214:                                              ; preds = %213, %182
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %131

218:                                              ; preds = %131
  %219 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %220 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %14, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @xfs_refcount_finish_one_cleanup(%struct.xfs_trans* %219, %struct.xfs_btree_cur* %220, i32 %221)
  %223 = load i32, i32* @XFS_CUI_RECOVERED, align 4
  %224 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %225 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %224, i32 0, i32 0
  %226 = call i32 @set_bit(i32 %223, i32* %225)
  %227 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %228 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %229 = call i32 @xfs_defer_move(%struct.xfs_trans* %227, %struct.xfs_trans* %228)
  %230 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %231 = call i32 @xfs_trans_commit(%struct.xfs_trans* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %3, align 4
  br label %244

233:                                              ; preds = %181, %154
  %234 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %235 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %14, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @xfs_refcount_finish_one_cleanup(%struct.xfs_trans* %234, %struct.xfs_btree_cur* %235, i32 %236)
  %238 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %239 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %240 = call i32 @xfs_defer_move(%struct.xfs_trans* %238, %struct.xfs_trans* %239)
  %241 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %242 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %241)
  %243 = load i32, i32* %7, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %233, %218, %122, %96
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xfs_cui_release(%struct.xfs_cui_log_item*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_6__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_defer_move(%struct.xfs_trans*, %struct.xfs_trans*) #1

declare dso_local %struct.xfs_cud_log_item* @xfs_trans_get_cud(%struct.xfs_trans*, %struct.xfs_cui_log_item*) #1

declare dso_local i32 @xfs_trans_log_finish_refcount_update(%struct.xfs_trans*, %struct.xfs_cud_log_item*, i32, i64, i64, i64*, i64*, %struct.xfs_btree_cur**) #1

declare dso_local i32 @xfs_refcount_increase_extent(%struct.xfs_trans*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_refcount_decrease_extent(%struct.xfs_trans*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_refcount_alloc_cow_extent(%struct.xfs_trans*, i64, i64) #1

declare dso_local i32 @xfs_refcount_free_cow_extent(%struct.xfs_trans*, i64, i64) #1

declare dso_local i32 @xfs_refcount_finish_one_cleanup(%struct.xfs_trans*, %struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
