; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_from_xfs_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_from_xfs_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qc_dqblk = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8* }
%struct.fs_disk_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FS_DQ_ISOFT = common dso_local global i32 0, align 4
@QC_INO_SOFT = common dso_local global i32 0, align 4
@FS_DQ_IHARD = common dso_local global i32 0, align 4
@QC_INO_HARD = common dso_local global i32 0, align 4
@FS_DQ_BSOFT = common dso_local global i32 0, align 4
@QC_SPC_SOFT = common dso_local global i32 0, align 4
@FS_DQ_BHARD = common dso_local global i32 0, align 4
@QC_SPC_HARD = common dso_local global i32 0, align 4
@FS_DQ_RTBSOFT = common dso_local global i32 0, align 4
@QC_RT_SPC_SOFT = common dso_local global i32 0, align 4
@FS_DQ_RTBHARD = common dso_local global i32 0, align 4
@QC_RT_SPC_HARD = common dso_local global i32 0, align 4
@FS_DQ_BTIMER = common dso_local global i32 0, align 4
@QC_SPC_TIMER = common dso_local global i32 0, align 4
@FS_DQ_ITIMER = common dso_local global i32 0, align 4
@QC_INO_TIMER = common dso_local global i32 0, align 4
@FS_DQ_RTBTIMER = common dso_local global i32 0, align 4
@QC_RT_SPC_TIMER = common dso_local global i32 0, align 4
@FS_DQ_BWARNS = common dso_local global i32 0, align 4
@QC_SPC_WARNS = common dso_local global i32 0, align 4
@FS_DQ_IWARNS = common dso_local global i32 0, align 4
@QC_INO_WARNS = common dso_local global i32 0, align 4
@FS_DQ_RTBWARNS = common dso_local global i32 0, align 4
@QC_RT_SPC_WARNS = common dso_local global i32 0, align 4
@FS_DQ_BCOUNT = common dso_local global i32 0, align 4
@QC_SPACE = common dso_local global i32 0, align 4
@FS_DQ_ICOUNT = common dso_local global i32 0, align 4
@QC_INO_COUNT = common dso_local global i32 0, align 4
@FS_DQ_RTBCOUNT = common dso_local global i32 0, align 4
@QC_RT_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qc_dqblk*, %struct.fs_disk_quota*)* @copy_from_xfs_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_xfs_dqblk(%struct.qc_dqblk* %0, %struct.fs_disk_quota* %1) #0 {
  %3 = alloca %struct.qc_dqblk*, align 8
  %4 = alloca %struct.fs_disk_quota*, align 8
  store %struct.qc_dqblk* %0, %struct.qc_dqblk** %3, align 8
  store %struct.fs_disk_quota* %1, %struct.fs_disk_quota** %4, align 8
  %5 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %6 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @quota_bbtob(i32 %7)
  %9 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %10 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 15
  store i8* %8, i8** %10, align 8
  %11 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %12 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @quota_bbtob(i32 %13)
  %15 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %16 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %15, i32 0, i32 14
  store i8* %14, i8** %16, align 8
  %17 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %18 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %21 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %23 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %26 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %28 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @quota_bbtob(i32 %29)
  %31 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %32 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  %33 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %34 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %37 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %39 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %42 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %44 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %47 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %49 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %52 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %54 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %57 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %59 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @quota_bbtob(i32 %60)
  %62 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %63 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %65 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @quota_bbtob(i32 %66)
  %68 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %69 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %71 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @quota_bbtob(i32 %72)
  %74 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %75 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %77 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %80 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %82 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %85 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %87 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %89 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FS_DQ_ISOFT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %2
  %95 = load i32, i32* @QC_INO_SOFT, align 4
  %96 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %97 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %2
  %101 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %102 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FS_DQ_IHARD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @QC_INO_HARD, align 4
  %109 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %110 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %115 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FS_DQ_BSOFT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* @QC_SPC_SOFT, align 4
  %122 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %123 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %128 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FS_DQ_BHARD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i32, i32* @QC_SPC_HARD, align 4
  %135 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %136 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %126
  %140 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %141 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FS_DQ_RTBSOFT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @QC_RT_SPC_SOFT, align 4
  %148 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %149 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %139
  %153 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %154 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FS_DQ_RTBHARD, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* @QC_RT_SPC_HARD, align 4
  %161 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %162 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %167 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @FS_DQ_BTIMER, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load i32, i32* @QC_SPC_TIMER, align 4
  %174 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %175 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %165
  %179 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %180 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @FS_DQ_ITIMER, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i32, i32* @QC_INO_TIMER, align 4
  %187 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %188 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %178
  %192 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %193 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @FS_DQ_RTBTIMER, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @QC_RT_SPC_TIMER, align 4
  %200 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %201 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %191
  %205 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %206 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @FS_DQ_BWARNS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @QC_SPC_WARNS, align 4
  %213 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %214 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %204
  %218 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %219 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @FS_DQ_IWARNS, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %217
  %225 = load i32, i32* @QC_INO_WARNS, align 4
  %226 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %227 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %224, %217
  %231 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %232 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @FS_DQ_RTBWARNS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %230
  %238 = load i32, i32* @QC_RT_SPC_WARNS, align 4
  %239 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %240 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %237, %230
  %244 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %245 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @FS_DQ_BCOUNT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %243
  %251 = load i32, i32* @QC_SPACE, align 4
  %252 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %253 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %243
  %257 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %258 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @FS_DQ_ICOUNT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %256
  %264 = load i32, i32* @QC_INO_COUNT, align 4
  %265 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %266 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %256
  %270 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %271 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @FS_DQ_RTBCOUNT, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %269
  %277 = load i32, i32* @QC_RT_SPACE, align 4
  %278 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %279 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %276, %269
  ret void
}

declare dso_local i8* @quota_bbtob(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
