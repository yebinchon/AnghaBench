; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_raw_nat_from_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_raw_nat_from_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_nat_entry = type { i32, i8*, i8* }
%struct.node_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_nat_entry*, %struct.node_info*)* @raw_nat_from_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_nat_from_node_info(%struct.f2fs_nat_entry* %0, %struct.node_info* %1) #0 {
  %3 = alloca %struct.f2fs_nat_entry*, align 8
  %4 = alloca %struct.node_info*, align 8
  store %struct.f2fs_nat_entry* %0, %struct.f2fs_nat_entry** %3, align 8
  store %struct.node_info* %1, %struct.node_info** %4, align 8
  %5 = load %struct.node_info*, %struct.node_info** %4, align 8
  %6 = getelementptr inbounds %struct.node_info, %struct.node_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_le32(i32 %7)
  %9 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %3, align 8
  %10 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.node_info*, %struct.node_info** %4, align 8
  %12 = getelementptr inbounds %struct.node_info, %struct.node_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.node_info*, %struct.node_info** %4, align 8
  %18 = getelementptr inbounds %struct.node_info, %struct.node_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %3, align 8
  %21 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
