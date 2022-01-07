; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_populate_slot_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_populate_slot_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, %struct.o2hb_disk_slot* }
%struct.o2hb_disk_slot = type { i8*, i8*, i64 }
%struct.o2hb_disk_heartbeat_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_populate_slot_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_populate_slot_data(%struct.o2hb_region* %0) #0 {
  %2 = alloca %struct.o2hb_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.o2hb_disk_slot*, align 8
  %6 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %2, align 8
  %7 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %8 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %9 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @o2hb_read_slots(%struct.o2hb_region* %7, i32 0, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %19 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %24 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %23, i32 0, i32 1
  %25 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %25, i64 %27
  store %struct.o2hb_disk_slot* %28, %struct.o2hb_disk_slot** %5, align 8
  %29 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %30 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.o2hb_disk_heartbeat_block*
  store %struct.o2hb_disk_heartbeat_block* %32, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %33 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %34 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le64_to_cpu(i32 %35)
  %37 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %38 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %40 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le64_to_cpu(i32 %41)
  %43 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %44 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %16

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @o2hb_read_slots(%struct.o2hb_region*, i32, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
