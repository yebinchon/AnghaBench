; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_prepare_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_prepare_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, %struct.o2hb_disk_slot* }
%struct.o2hb_disk_slot = type { i64 }
%struct.o2hb_disk_heartbeat_block = type { i32, i8*, i8*, i8*, i8* }

@o2hb_dead_threshold = common dso_local global i32 0, align 4
@O2HB_REGION_TIMEOUT_MS = common dso_local global i32 0, align 4
@ML_HB_BIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"our node generation = 0x%llx, cksum = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_region*, i32)* @o2hb_prepare_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_prepare_block(%struct.o2hb_region* %0, i32 %1) #0 {
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.o2hb_disk_slot*, align 8
  %8 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @o2nm_this_node()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %11 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %10, i32 0, i32 1
  %12 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %12, i64 %14
  store %struct.o2hb_disk_slot* %15, %struct.o2hb_disk_slot** %7, align 8
  %16 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %7, align 8
  %17 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.o2hb_disk_heartbeat_block*
  store %struct.o2hb_disk_heartbeat_block* %19, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %20 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %21 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %22 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(%struct.o2hb_disk_heartbeat_block* %20, i32 0, i32 %23)
  %25 = call i32 (...) @ktime_get_real_seconds()
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %33 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %36 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @cpu_to_le64(i32 %37)
  %39 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %40 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @o2hb_dead_threshold, align 4
  %42 = load i32, i32* @O2HB_REGION_TIMEOUT_MS, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %46 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %48 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %49 = call i32 @o2hb_compute_block_crc_le(%struct.o2hb_region* %47, %struct.o2hb_disk_heartbeat_block* %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %52 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @ML_HB_BIO, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %8, align 8
  %57 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @le32_to_cpu(i8* %58)
  %60 = call i32 @mlog(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %59)
  ret void
}

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @memset(%struct.o2hb_disk_heartbeat_block*, i32, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @o2hb_compute_block_crc_le(%struct.o2hb_region*, %struct.o2hb_disk_heartbeat_block*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
