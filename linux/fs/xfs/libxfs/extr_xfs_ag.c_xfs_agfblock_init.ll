; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agfblock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agfblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i32, i32 }
%struct.xfs_agf = type { i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8* }

@XFS_AGF_MAGIC = common dso_local global i32 0, align 4
@XFS_AGF_VERSION = common dso_local global i32 0, align 4
@XFS_BTNUM_BNOi = common dso_local global i64 0, align 8
@XFS_BTNUM_CNTi = common dso_local global i64 0, align 8
@XFS_BTNUM_RMAPi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_agfblock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agfblock_init(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_agf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %11 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %10)
  store %struct.xfs_agf* %11, %struct.xfs_agf** %7, align 8
  %12 = load i32, i32* @XFS_AGF_MAGIC, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %14, i32 0, i32 15
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @XFS_AGF_VERSION, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %19 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %21 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %25 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %24, i32 0, i32 13
  store i8* %23, i8** %25, align 8
  %26 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %27 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %33 = call i32 @XFS_BNO_BLOCK(%struct.xfs_mount* %32)
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %35, i32 0, i32 11
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %41 = call i32 @XFS_CNT_BLOCK(%struct.xfs_mount* %40)
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %43, i32 0, i32 11
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  %48 = call i8* @cpu_to_be32(i32 1)
  %49 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %49, i32 0, i32 10
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = call i8* @cpu_to_be32(i32 1)
  %55 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %56 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %55, i32 0, i32 10
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %61 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %60, i32 0, i32 1
  %62 = call i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %3
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %66 = call i32 @XFS_RMAP_BLOCK(%struct.xfs_mount* %65)
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %68, i32 0, i32 11
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @XFS_BTNUM_RMAPi, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = call i8* @cpu_to_be32(i32 1)
  %74 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %75 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %74, i32 0, i32 10
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @XFS_BTNUM_RMAPi, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = call i8* @cpu_to_be32(i32 1)
  %80 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %81 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %80, i32 0, i32 9
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %64, %3
  %83 = call i8* @cpu_to_be32(i32 1)
  %84 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %85 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %84, i32 0, i32 8
  store i8* %83, i8** %85, align 8
  %86 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %87 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %86, i32 0, i32 7
  store i64 0, i64* %87, align 8
  %88 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %89 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %91 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %100 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @cpu_to_be32(i32 %101)
  %103 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %104 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %106 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %105, i32 0, i32 1
  %107 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_4__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %82
  %110 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %111 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %110, i32 0, i32 5
  %112 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %113 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = call i32 @uuid_copy(i32* %111, i32* %114)
  br label %116

116:                                              ; preds = %109, %82
  %117 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %118 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %117, i32 0, i32 1
  %119 = call i64 @xfs_sb_version_hasreflink(%struct.TYPE_4__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %123 = call i32 @xfs_refc_block(%struct.xfs_mount* %122)
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %126 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = call i8* @cpu_to_be32(i32 1)
  %128 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %129 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = call i8* @cpu_to_be32(i32 1)
  %131 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %132 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %121, %116
  %134 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %135 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %136 = call i64 @is_log_ag(%struct.xfs_mount* %134, %struct.aghdr_init_data* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %133
  %139 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %140 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  %143 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %144 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %143, i32 0, i32 1
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @be32_add_cpu(i8** %144, i32 %146)
  %148 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %149 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %152 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %153 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %151, i32 %155)
  %157 = sub nsw i32 %150, %156
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %157, %158
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.xfs_agf*, %struct.xfs_agf** %7, align 8
  %162 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %138, %133
  ret void
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @XFS_BNO_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_CNT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__*) #1

declare dso_local i32 @XFS_RMAP_BLOCK(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_4__*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.TYPE_4__*) #1

declare dso_local i32 @xfs_refc_block(%struct.xfs_mount*) #1

declare dso_local i64 @is_log_ag(%struct.xfs_mount*, %struct.aghdr_init_data*) #1

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
