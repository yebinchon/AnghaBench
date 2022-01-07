; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_write_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_write_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.v2_disk_dqinfo = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.quota_info = type { i32, %struct.mem_dqinfo* }
%struct.mem_dqinfo = type { i32, i32, i32, %struct.qtree_mem_dqinfo* }
%struct.qtree_mem_dqinfo = type { i32, i32, i32 }

@dq_data_lock = common dso_local global i32 0, align 4
@DQF_INFO_DIRTY = common dso_local global i32 0, align 4
@V2_DQINFOOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't write info structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v2_write_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_write_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v2_disk_dqinfo, align 8
  %7 = alloca %struct.quota_info*, align 8
  %8 = alloca %struct.mem_dqinfo*, align 8
  %9 = alloca %struct.qtree_mem_dqinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %11)
  store %struct.quota_info* %12, %struct.quota_info** %7, align 8
  %13 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %14 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %13, i32 0, i32 1
  %15 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %15, i64 %17
  store %struct.mem_dqinfo* %18, %struct.mem_dqinfo** %8, align 8
  %19 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %20 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %19, i32 0, i32 3
  %21 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %20, align 8
  store %struct.qtree_mem_dqinfo* %21, %struct.qtree_mem_dqinfo** %9, align 8
  %22 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %23 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %22, i32 0, i32 0
  %24 = call i32 @down_write(i32* %23)
  %25 = call i32 @spin_lock(i32* @dq_data_lock)
  %26 = load i32, i32* @DQF_INFO_DIRTY, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %29 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %33 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %38 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 4
  store i8* %40, i8** %41, align 8
  %42 = call i8* @cpu_to_le32(i32 0)
  %43 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = call i32 @spin_unlock(i32* @dq_data_lock)
  %45 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %46 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %51 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %56 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %6, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %63, align 8
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = bitcast %struct.v2_disk_dqinfo* %6 to i8*
  %68 = load i32, i32* @V2_DQINFOOFF, align 4
  %69 = call i32 %64(%struct.super_block* %65, i32 %66, i8* %67, i32 48, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %71 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %70, i32 0, i32 0
  %72 = call i32 @up_write(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 48
  br i1 %75, label %76, label %79

76:                                               ; preds = %2
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = call i32 @quota_error(%struct.super_block* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %80

79:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @quota_error(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
