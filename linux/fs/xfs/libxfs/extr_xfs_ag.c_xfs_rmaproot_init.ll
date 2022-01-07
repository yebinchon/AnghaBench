; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_rmaproot_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_rmaproot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i32 }
%struct.xfs_btree_block = type { i32 }
%struct.xfs_rmap_rec = type { i64, i8*, i8*, i8* }

@XFS_BTNUM_RMAP = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_FS = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_AG = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_INOBT = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_REFC = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_rmaproot_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_rmaproot_init(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  %8 = alloca %struct.xfs_rmap_rec*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %10 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %9)
  store %struct.xfs_btree_block* %10, %struct.xfs_btree_block** %7, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %13 = load i32, i32* @XFS_BTNUM_RMAP, align 4
  %14 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %15 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xfs_btree_init_block(%struct.xfs_mount* %11, %struct.xfs_buf* %12, i32 %13, i32 0, i32 4, i32 %16)
  %18 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %19 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %18, i32 1)
  store %struct.xfs_rmap_rec* %19, %struct.xfs_rmap_rec** %8, align 8
  %20 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %21 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %20, i32 0, i32 3
  store i8* null, i8** %21, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %23 = call i32 @XFS_BNO_BLOCK(%struct.xfs_mount* %22)
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %26 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @XFS_RMAP_OWN_FS, align 4
  %28 = call i8* @cpu_to_be64(i32 %27)
  %29 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %30 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %32 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %34 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %33, i32 2)
  store %struct.xfs_rmap_rec* %34, %struct.xfs_rmap_rec** %8, align 8
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %36 = call i32 @XFS_BNO_BLOCK(%struct.xfs_mount* %35)
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = call i8* @cpu_to_be32(i32 2)
  %41 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %42 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @XFS_RMAP_OWN_AG, align 4
  %44 = call i8* @cpu_to_be64(i32 %43)
  %45 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %46 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %48 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %50 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %49, i32 3)
  store %struct.xfs_rmap_rec* %50, %struct.xfs_rmap_rec** %8, align 8
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %52 = call i32 @XFS_IBT_BLOCK(%struct.xfs_mount* %51)
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %55 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %57 = call i32 @XFS_RMAP_BLOCK(%struct.xfs_mount* %56)
  %58 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %59 = call i32 @XFS_IBT_BLOCK(%struct.xfs_mount* %58)
  %60 = sub nsw i32 %57, %59
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %63 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @XFS_RMAP_OWN_INOBT, align 4
  %65 = call i8* @cpu_to_be64(i32 %64)
  %66 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %67 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %69 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %71 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %70, i32 4)
  store %struct.xfs_rmap_rec* %71, %struct.xfs_rmap_rec** %8, align 8
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %73 = call i32 @XFS_RMAP_BLOCK(%struct.xfs_mount* %72)
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = call i8* @cpu_to_be32(i32 1)
  %78 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %79 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @XFS_RMAP_OWN_AG, align 4
  %81 = call i8* @cpu_to_be64(i32 %80)
  %82 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %83 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %85 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %87 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %86, i32 0, i32 0
  %88 = call i64 @xfs_sb_version_hasreflink(%struct.TYPE_2__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %3
  %91 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %92 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %91, i32 5)
  store %struct.xfs_rmap_rec* %92, %struct.xfs_rmap_rec** %8, align 8
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %94 = call i32 @xfs_refc_block(%struct.xfs_mount* %93)
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %97 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = call i8* @cpu_to_be32(i32 1)
  %99 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %100 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @XFS_RMAP_OWN_REFC, align 4
  %102 = call i8* @cpu_to_be64(i32 %101)
  %103 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %104 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %106 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %108 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %107, i32 0, i32 0
  %109 = call i32 @be16_add_cpu(i32* %108, i32 1)
  br label %110

110:                                              ; preds = %90, %3
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %112 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %113 = call i64 @is_log_ag(%struct.xfs_mount* %111, %struct.aghdr_init_data* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %148

115:                                              ; preds = %110
  %116 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %117 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %118 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @be16_to_cpu(i32 %119)
  %121 = add nsw i32 %120, 1
  %122 = call %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block* %116, i32 %121)
  store %struct.xfs_rmap_rec* %122, %struct.xfs_rmap_rec** %8, align 8
  %123 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %124 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %123, i32 %127)
  %129 = call i8* @cpu_to_be32(i32 %128)
  %130 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %131 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %133 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %138 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @XFS_RMAP_OWN_LOG, align 4
  %140 = call i8* @cpu_to_be64(i32 %139)
  %141 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %142 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.xfs_rmap_rec*, %struct.xfs_rmap_rec** %8, align 8
  %144 = getelementptr inbounds %struct.xfs_rmap_rec, %struct.xfs_rmap_rec* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %146 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %145, i32 0, i32 0
  %147 = call i32 @be16_add_cpu(i32* %146, i32 1)
  br label %148

148:                                              ; preds = %115, %110
  ret void
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_btree_init_block(%struct.xfs_mount*, %struct.xfs_buf*, i32, i32, i32, i32) #1

declare dso_local %struct.xfs_rmap_rec* @XFS_RMAP_REC_ADDR(%struct.xfs_btree_block*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @XFS_BNO_BLOCK(%struct.xfs_mount*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @XFS_IBT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_RMAP_BLOCK(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_refc_block(%struct.xfs_mount*) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i64 @is_log_ag(%struct.xfs_mount*, %struct.aghdr_init_data*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
