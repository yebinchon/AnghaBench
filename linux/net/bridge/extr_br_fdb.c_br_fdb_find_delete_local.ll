; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_find_delete_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_find_delete_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_fdb_entry = type { %struct.net_bridge_port*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_fdb_find_delete_local(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %13, i8* %14, i32 %15)
  store %struct.net_bridge_fdb_entry* %16, %struct.net_bridge_fdb_entry** %9, align 8
  %17 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %9, align 8
  %18 = icmp ne %struct.net_bridge_fdb_entry* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %9, align 8
  %21 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %9, align 8
  %26 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %9, align 8
  %31 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %30, i32 0, i32 0
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %31, align 8
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %34 = icmp eq %struct.net_bridge_port* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %38 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %9, align 8
  %39 = call i32 @fdb_delete_local(%struct.net_bridge* %36, %struct.net_bridge_port* %37, %struct.net_bridge_fdb_entry* %38)
  br label %40

40:                                               ; preds = %35, %29, %24, %19, %4
  %41 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @fdb_delete_local(%struct.net_bridge*, %struct.net_bridge_port*, %struct.net_bridge_fdb_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
