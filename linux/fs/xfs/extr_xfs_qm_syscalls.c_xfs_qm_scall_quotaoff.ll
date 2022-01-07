; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_quotaoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_quotaoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.xfs_quotainfo* }
%struct.TYPE_11__ = type { i32 }
%struct.xfs_quotainfo = type { i32, i32*, i32*, i32* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_ALL_QUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_UQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_UQUOTA = common dso_local global i32 0, align 4
@XFS_UQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_UQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_UQUOTA_ACTIVE = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_GQUOTA = common dso_local global i32 0, align 4
@XFS_GQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACTIVE = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_PQUOTA = common dso_local global i32 0, align 4
@XFS_PQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_PQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACTIVE = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_quotaoff(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_quotainfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  store %struct.xfs_quotainfo* %13, %struct.xfs_quotainfo** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %225

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %25 = load i32, i32* @XFS_ALL_QUOTA_ENFD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %30 = call i32 @ASSERT(%struct.xfs_quotainfo* %29)
  %31 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %32 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i32 @xfs_sync_sb(%struct.TYPE_12__* %60, i32 0)
  store i32 %61, i32* %3, align 4
  br label %225

62:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @XFS_UQUOTA_ACCT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @XFS_UQUOTA_CHKD, align 4
  %72 = load i32, i32* @XFS_UQUOTA_ENFD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @XFS_UQUOTA_ACTIVE, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @XFS_GQUOTA_ACCT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @XFS_GQUOTA_CHKD, align 4
  %89 = load i32, i32* @XFS_GQUOTA_ENFD, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @XFS_GQUOTA_ACTIVE, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %84, %79
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @XFS_PQUOTA_CHKD, align 4
  %106 = load i32, i32* @XFS_PQUOTA_ENFD, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @XFS_PQUOTA_ACTIVE, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %101, %96
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %220

121:                                              ; preds = %113
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @xfs_qm_log_quotaoff(%struct.TYPE_12__* %122, i32** %10, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %220

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @xfs_qm_dqrele_all_inodes(%struct.TYPE_12__* %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @xfs_qm_dqpurge_all(%struct.TYPE_12__* %144, i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @xfs_qm_log_quotaoff_end(%struct.TYPE_12__* %147, i32* %148, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %128
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %156 = call i32 @xfs_force_shutdown(%struct.TYPE_12__* %154, i32 %155)
  br label %220

157:                                              ; preds = %128
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %164 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = call i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_12__* %166)
  store i32 0, i32* %3, align 4
  br label %225

168:                                              ; preds = %157
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %175 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %180 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @xfs_irele(i32* %181)
  %183 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %184 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %183, i32 0, i32 3
  store i32* null, i32** %184, align 8
  br label %185

185:                                              ; preds = %178, %173, %168
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %192 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %197 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @xfs_irele(i32* %198)
  %200 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %201 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %200, i32 0, i32 2
  store i32* null, i32** %201, align 8
  br label %202

202:                                              ; preds = %195, %190, %185
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %209 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %214 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @xfs_irele(i32* %215)
  %217 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %218 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %217, i32 0, i32 1
  store i32* null, i32** %218, align 8
  br label %219

219:                                              ; preds = %212, %207, %202
  br label %220

220:                                              ; preds = %219, %153, %127, %120
  %221 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %222 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %221, i32 0, i32 0
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %220, %162, %38, %20
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @ASSERT(%struct.xfs_quotainfo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xfs_sync_sb(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_log_quotaoff(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i32 @xfs_qm_dqrele_all_inodes(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_dqpurge_all(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_log_quotaoff_end(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @xfs_force_shutdown(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_12__*) #1

declare dso_local i32 @xfs_irele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
