; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_offloaded_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_offloaded_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_fdb_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_fdb_offloaded_set(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %15, i8* %16, i32 %17)
  store %struct.net_bridge_fdb_entry* %18, %struct.net_bridge_fdb_entry** %11, align 8
  %19 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %20 = icmp ne %struct.net_bridge_fdb_entry* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %24 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
