; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_qinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_qinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, i8*, i32, i32, %struct.ocfs2_lock_res }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.mem_dqinfo = type { i8*, i8* }
%struct.ocfs2_qinfo_lvb = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_global_disk_dqinfo = type { i32, i32, i32, i32, i32, i32 }

@OCFS2_QINFO_LVB_VERSION = common dso_local global i64 0, align 8
@OCFS2_GLOBAL_INFO_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_mem_dqinfo*)* @ocfs2_refresh_qinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo* %0) #0 {
  %2 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %3 = alloca %struct.mem_dqinfo*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_qinfo_lvb*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_global_disk_dqinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %2, align 8
  %9 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mem_dqinfo* @sb_dqinfo(i32 %12, i32 %16)
  store %struct.mem_dqinfo* %17, %struct.mem_dqinfo** %3, align 8
  %18 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %18, i32 0, i32 4
  store %struct.ocfs2_lock_res* %19, %struct.ocfs2_lock_res** %4, align 8
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 0
  %22 = call %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32* %21)
  store %struct.ocfs2_qinfo_lvb* %22, %struct.ocfs2_qinfo_lvb** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 0
  %25 = call i64 @ocfs2_dlm_lvb_valid(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %1
  %28 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OCFS2_QINFO_LVB_VERSION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @be32_to_cpu(i32 %36)
  %38 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %39 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @be32_to_cpu(i32 %42)
  %44 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %45 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be32_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @be32_to_cpu(i32 %54)
  %56 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %64 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %67 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @be32_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %71 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %136

73:                                               ; preds = %27, %1
  %74 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %75 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %78 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ocfs2_read_quota_phys_block(i32 %76, i32 %79, %struct.buffer_head** %6)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %137

86:                                               ; preds = %73
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OCFS2_GLOBAL_INFO_OFF, align 8
  %91 = add nsw i64 %89, %90
  %92 = inttoptr i64 %91 to %struct.ocfs2_global_disk_dqinfo*
  store %struct.ocfs2_global_disk_dqinfo* %92, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %93 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %94 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %98 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %100 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le32_to_cpu(i32 %101)
  %103 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %104 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %106 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %110 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %112 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le32_to_cpu(i32 %113)
  %115 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %116 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %119 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %123 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %126 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %130 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %135 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %134)
  br label %136

136:                                              ; preds = %86, %33
  br label %137

137:                                              ; preds = %136, %83
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(i32, i32) #1

declare dso_local %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i64 @ocfs2_dlm_lvb_valid(i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_quota_phys_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
