; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_init_region_params.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_init_region_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@O2HB_REGION_TIMEOUT_MS = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hr_start_block = %llu, hr_blocks = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"hr_block_bytes = %u, hr_block_bits = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hr_timeout_ms = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"dead threshold = %u\0A\00", align 1
@o2hb_dead_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_region*)* @o2hb_init_region_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_init_region_params(%struct.o2hb_region* %0) #0 {
  %2 = alloca %struct.o2hb_region*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %2, align 8
  %3 = load i32, i32* @PAGE_SIZE, align 4
  %4 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %5 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %3, %6
  %8 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %9 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @O2HB_REGION_TIMEOUT_MS, align 4
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ML_HEARTBEAT, align 4
  %14 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %15 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %18 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, i32, ...) @mlog(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @ML_HEARTBEAT, align 4
  %22 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %23 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %26 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, i32, ...) @mlog(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @ML_HEARTBEAT, align 4
  %30 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %31 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @mlog(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ML_HEARTBEAT, align 4
  %35 = load i32, i32* @o2hb_dead_threshold, align 4
  %36 = call i32 (i32, i8*, i32, ...) @mlog(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
