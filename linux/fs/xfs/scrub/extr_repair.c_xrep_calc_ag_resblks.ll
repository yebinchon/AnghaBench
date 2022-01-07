; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_calc_ag_resblks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_calc_ag_resblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.xfs_scrub_metadata*, %struct.xfs_mount* }
%struct.xfs_scrub_metadata = type { i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_perag = type { i32, i64 }
%struct.xfs_buf = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NULLAGINO = common dso_local global i32 0, align 4
@NULLAGBLOCK = common dso_local global i64 0, align 8
@XFS_SCRUB_IFLAG_REPAIR = common dso_local global i32 0, align 4
@XFS_INODES_PER_HOLEMASK_BIT = common dso_local global i32 0, align 4
@XFS_INODES_PER_CHUNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xrep_calc_ag_resblks(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_scrub_metadata*, align 8
  %6 = alloca %struct.xfs_perag*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 1
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %4, align 8
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 0
  %24 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %23, align 8
  store %struct.xfs_scrub_metadata* %24, %struct.xfs_scrub_metadata** %5, align 8
  %25 = load i32, i32* @NULLAGINO, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* @NULLAGBLOCK, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XFS_SCRUB_IFLAG_REPAIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %222

34:                                               ; preds = %1
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %36 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %35, i32 %38)
  store %struct.xfs_perag* %39, %struct.xfs_perag** %6, align 8
  %40 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  br label %63

48:                                               ; preds = %34
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %50 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xfs_ialloc_read_agi(%struct.xfs_mount* %49, i32* null, i32 %52, %struct.xfs_buf** %7)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %61 = call i32 @xfs_buf_relse(%struct.xfs_buf* %60)
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %65 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %66 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %64, i32* null, i32 %67, i32 0, %struct.xfs_buf** %7)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %63
  %72 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %73 = call %struct.TYPE_2__* @XFS_BUF_TO_AGF(%struct.xfs_buf* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @be32_to_cpu(i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %78 = call %struct.TYPE_2__* @XFS_BUF_TO_AGF(%struct.xfs_buf* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be32_to_cpu(i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %10, align 8
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %86 = call i32 @xfs_buf_relse(%struct.xfs_buf* %85)
  br label %87

87:                                               ; preds = %71, %63
  %88 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %89 = call i32 @xfs_perag_put(%struct.xfs_perag* %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @NULLAGINO, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %87
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %95 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %96 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @xfs_verify_agino(%struct.xfs_mount* %94, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %93, %87
  %102 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %103 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %104 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @xfs_agino_range(%struct.xfs_mount* %102, i32 %105, i32* %17, i32* %18)
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = sub nsw i32 %107, %108
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %101, %93
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @NULLAGBLOCK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %118 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %119 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @xfs_ag_block_count(%struct.xfs_mount* %117, i32 %120)
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123, %115, %111
  %128 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %129 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @xfs_ag_block_count(%struct.xfs_mount* %128, i32 %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %9, align 8
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %127, %123
  %136 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %137 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %138 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @trace_xrep_calc_ag_resblks(%struct.xfs_mount* %136, i32 %139, i32 %140, i64 %141, i64 %142, i64 %143)
  %145 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @xfs_allocbt_calc_size(%struct.xfs_mount* %145, i64 %146)
  %148 = mul nsw i32 2, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %12, align 8
  %150 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %151 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %150, i32 0, i32 0
  %152 = call i64 @xfs_sb_version_hassparseinodes(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %135
  %155 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @XFS_INODES_PER_HOLEMASK_BIT, align 4
  %158 = sdiv i32 %156, %157
  %159 = call i64 @xfs_iallocbt_calc_size(%struct.xfs_mount* %155, i32 %158)
  store i64 %159, i64* %13, align 8
  br label %166

160:                                              ; preds = %135
  %161 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @XFS_INODES_PER_CHUNK, align 4
  %164 = sdiv i32 %162, %163
  %165 = call i64 @xfs_iallocbt_calc_size(%struct.xfs_mount* %161, i32 %164)
  store i64 %165, i64* %13, align 8
  br label %166

166:                                              ; preds = %160, %154
  %167 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %168 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %167, i32 0, i32 0
  %169 = call i64 @xfs_sb_version_hasfinobt(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i64, i64* %13, align 8
  %173 = mul nsw i64 %172, 2
  store i64 %173, i64* %13, align 8
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %176 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %175, i32 0, i32 0
  %177 = call i64 @xfs_sb_version_hasreflink(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %181 = load i64, i64* %10, align 8
  %182 = call i64 @xfs_refcountbt_calc_size(%struct.xfs_mount* %180, i64 %181)
  store i64 %182, i64* %15, align 8
  br label %184

183:                                              ; preds = %174
  store i64 0, i64* %15, align 8
  br label %184

184:                                              ; preds = %183, %179
  %185 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %186 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %185, i32 0, i32 0
  %187 = call i64 @xfs_sb_version_hasrmapbt(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %184
  %190 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %191 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %190, i32 0, i32 0
  %192 = call i64 @xfs_sb_version_hasreflink(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %196 = load i64, i64* %9, align 8
  %197 = mul i64 %196, 2
  %198 = call i64 @xfs_rmapbt_calc_size(%struct.xfs_mount* %195, i64 %197)
  store i64 %198, i64* %14, align 8
  br label %203

199:                                              ; preds = %189
  %200 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i64 @xfs_rmapbt_calc_size(%struct.xfs_mount* %200, i64 %201)
  store i64 %202, i64* %14, align 8
  br label %203

203:                                              ; preds = %199, %194
  br label %205

204:                                              ; preds = %184
  store i64 0, i64* %14, align 8
  br label %205

205:                                              ; preds = %204, %203
  %206 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %207 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %5, align 8
  %208 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* %12, align 8
  %211 = load i64, i64* %13, align 8
  %212 = load i64, i64* %14, align 8
  %213 = load i64, i64* %15, align 8
  %214 = call i32 @trace_xrep_calc_ag_resblks_btsize(%struct.xfs_mount* %206, i32 %209, i64 %210, i64 %211, i64 %212, i64 %213)
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %13, align 8
  %217 = call i64 @max(i64 %215, i64 %216)
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* %15, align 8
  %220 = call i64 @max(i64 %218, i64 %219)
  %221 = call i64 @max(i64 %217, i64 %220)
  store i64 %221, i64* %2, align 8
  br label %222

222:                                              ; preds = %205, %33
  %223 = load i64, i64* %2, align 8
  ret i64 %223
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_ialloc_read_agi(%struct.xfs_mount*, i32*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, i32*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_verify_agino(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @xfs_agino_range(%struct.xfs_mount*, i32, i32*, i32*) #1

declare dso_local i64 @xfs_ag_block_count(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xrep_calc_ag_resblks(%struct.xfs_mount*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @xfs_allocbt_calc_size(%struct.xfs_mount*, i64) #1

declare dso_local i64 @xfs_sb_version_hassparseinodes(i32*) #1

declare dso_local i64 @xfs_iallocbt_calc_size(%struct.xfs_mount*, i32) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(i32*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i64 @xfs_refcountbt_calc_size(%struct.xfs_mount*, i64) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local i64 @xfs_rmapbt_calc_size(%struct.xfs_mount*, i64) #1

declare dso_local i32 @trace_xrep_calc_ag_resblks_btsize(%struct.xfs_mount*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
