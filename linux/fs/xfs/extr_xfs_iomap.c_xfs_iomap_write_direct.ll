; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_iomap_write_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_iomap_write_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i64, i64, i64, i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XFS_QMOPT_RES_RTBLKS = common dso_local global i32 0, align 4
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4
@XFS_BMAPI_CONVERT = common dso_local global i32 0, align 4
@XFS_BMAPI_ZERO = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iomap_write_direct(%struct.TYPE_36__* %0, i64 %1, i64 %2, %struct.TYPE_37__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %10, align 8
  store i32 %4, i32* %11, align 4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  store %struct.TYPE_34__* %31, %struct.TYPE_34__** %12, align 8
  %32 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  store i32 %32, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %34 = call i32 @XFS_IS_REALTIME_INODE(%struct.TYPE_36__* %33)
  store i32 %34, i32* %20, align 4
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %36 = call i32 @xfs_get_extsz_hint(%struct.TYPE_36__* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  store i32 %37, i32* %26, align 4
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %39 = load i32, i32* %26, align 4
  %40 = call i32 @xfs_isilocked(%struct.TYPE_36__* %38, i32 %39)
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @XFS_B_TO_FSBT(%struct.TYPE_34__* %42, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @XFS_B_TO_FSB(%struct.TYPE_34__* %45, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %55 = call i64 @XFS_ISIZE(%struct.TYPE_36__* %54)
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %5
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %59 = load i32, i32* @XFS_DATA_FORK, align 4
  %60 = call %struct.TYPE_33__* @XFS_IFORK_PTR(%struct.TYPE_36__* %58, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @XFS_IFEXTENTS, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @xfs_iomap_eof_align_last_fsb(%struct.TYPE_36__* %66, i32 %67, i64* %14)
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %226

72:                                               ; preds = %57
  br label %93

73:                                               ; preds = %5
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HOLESTARTBLOCK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = call i64 @min(i64 %83, i64 %90)
  store i64 %91, i64* %14, align 8
  br label %92

92:                                               ; preds = %82, %76, %73
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sgt i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i64 @xfs_aligned_fsb_count(i64 %101, i64 %102, i32 %103)
  store i64 %104, i64* %16, align 8
  %105 = load i32, i32* %20, align 4
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %93
  %109 = load i64, i64* %16, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %22, align 4
  store i32 %110, i32* %24, align 4
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %24, align 4
  %116 = sdiv i32 %115, %114
  store i32 %116, i32* %24, align 4
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %118 = call i32 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_34__* %117, i64 0)
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* @XFS_QMOPT_RES_RTBLKS, align 4
  store i32 %119, i32* %19, align 4
  br label %125

120:                                              ; preds = %93
  store i32 0, i32* %24, align 4
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_34__* %121, i64 %122)
  store i32 %123, i32* %22, align 4
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %120, %108
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %127 = load i32, i32* %26, align 4
  %128 = call i32 @xfs_iunlock(%struct.TYPE_36__* %126, i32 %127)
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %130 = call i32 @xfs_qm_dqattach(%struct.TYPE_36__* %129)
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %25, align 4
  store i32 %134, i32* %6, align 4
  br label %241

135:                                              ; preds = %125
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %137 = call i32 @VFS_I(%struct.TYPE_36__* %136)
  %138 = call i64 @IS_DAX(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load i32, i32* @XFS_BMAPI_CONVERT, align 4
  %142 = load i32, i32* @XFS_BMAPI_ZERO, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %27, align 4
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %151 = load i32, i32* %28, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %28, align 4
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %154 = call i32 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_34__* %153, i64 0)
  %155 = shl i32 %154, 1
  store i32 %155, i32* %23, align 4
  br label %156

156:                                              ; preds = %149, %140
  br label %157

157:                                              ; preds = %156, %135
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %160 = call %struct.TYPE_35__* @M_RES(%struct.TYPE_34__* %159)
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 0
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %28, align 4
  %165 = call i32 @xfs_trans_alloc(%struct.TYPE_34__* %158, i32* %161, i32 %162, i32 %163, i32 %164, i32** %21)
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %25, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* %25, align 4
  store i32 %169, i32* %6, align 4
  br label %241

170:                                              ; preds = %157
  %171 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  store i32 %171, i32* %26, align 4
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %173 = load i32, i32* %26, align 4
  %174 = call i32 @xfs_ilock(%struct.TYPE_36__* %172, i32 %173)
  %175 = load i32*, i32** %21, align 8
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @xfs_trans_reserve_quota_nblks(i32* %175, %struct.TYPE_36__* %176, i32 %177, i32 0, i32 %178)
  store i32 %179, i32* %25, align 4
  %180 = load i32, i32* %25, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  br label %238

183:                                              ; preds = %170
  %184 = load i32*, i32** %21, align 8
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %186 = call i32 @xfs_trans_ijoin(i32* %184, %struct.TYPE_36__* %185, i32 0)
  store i32 1, i32* %18, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %15, align 8
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %194 = call i32 @xfs_bmapi_write(i32* %187, %struct.TYPE_36__* %188, i64 %189, i64 %190, i32 %191, i32 %192, %struct.TYPE_37__* %193, i32* %18)
  store i32 %194, i32* %25, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %231

198:                                              ; preds = %183
  %199 = load i32*, i32** %21, align 8
  %200 = call i32 @xfs_trans_commit(i32* %199)
  store i32 %200, i32* %25, align 4
  %201 = load i32, i32* %25, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %226

204:                                              ; preds = %198
  %205 = load i32, i32* %18, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* @ENOSPC, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %25, align 4
  br label %226

210:                                              ; preds = %204
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @xfs_valid_startblock(%struct.TYPE_36__* %211, i64 %214)
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %210
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %224 = call i32 @xfs_alert_fsblock_zero(%struct.TYPE_36__* %222, %struct.TYPE_37__* %223)
  store i32 %224, i32* %25, align 4
  br label %225

225:                                              ; preds = %221, %210
  br label %226

226:                                              ; preds = %238, %225, %207, %203, %71
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %228 = load i32, i32* %26, align 4
  %229 = call i32 @xfs_iunlock(%struct.TYPE_36__* %227, i32 %228)
  %230 = load i32, i32* %25, align 4
  store i32 %230, i32* %6, align 4
  br label %241

231:                                              ; preds = %197
  %232 = load i32*, i32** %21, align 8
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @xfs_trans_unreserve_quota_nblks(i32* %232, %struct.TYPE_36__* %233, i64 %235, i32 0, i32 %236)
  br label %238

238:                                              ; preds = %231, %182
  %239 = load i32*, i32** %21, align 8
  %240 = call i32 @xfs_trans_cancel(i32* %239)
  br label %226

241:                                              ; preds = %226, %168, %133
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i32 @XFS_IS_REALTIME_INODE(%struct.TYPE_36__*) #1

declare dso_local i32 @xfs_get_extsz_hint(%struct.TYPE_36__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.TYPE_36__*, i32) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.TYPE_34__*, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_33__* @XFS_IFORK_PTR(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @xfs_iomap_eof_align_last_fsb(%struct.TYPE_36__*, i32, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @xfs_aligned_fsb_count(i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_36__*) #1

declare dso_local i64 @IS_DAX(i32) #1

declare dso_local i32 @VFS_I(%struct.TYPE_36__*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.TYPE_34__*, i32*, i32, i32, i32, i32**) #1

declare dso_local %struct.TYPE_35__* @M_RES(%struct.TYPE_34__*) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @xfs_trans_reserve_quota_nblks(i32*, %struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @xfs_bmapi_write(i32*, %struct.TYPE_36__*, i64, i64, i32, i32, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*) #1

declare dso_local i32 @xfs_valid_startblock(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @xfs_alert_fsblock_zero(%struct.TYPE_36__*, %struct.TYPE_37__*) #1

declare dso_local i32 @xfs_trans_unreserve_quota_nblks(i32*, %struct.TYPE_36__*, i64, i32, i32) #1

declare dso_local i32 @xfs_trans_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
