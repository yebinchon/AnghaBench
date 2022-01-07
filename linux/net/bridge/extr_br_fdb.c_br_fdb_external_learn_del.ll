; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_external_learn_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_external_learn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_fdb_entry = type { i64 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_fdb_external_learn_del(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_bridge_fdb_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %16, i8* %17, i32 %18)
  store %struct.net_bridge_fdb_entry* %19, %struct.net_bridge_fdb_entry** %11, align 8
  %20 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %21 = icmp ne %struct.net_bridge_fdb_entry* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %24 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %29 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @fdb_delete(%struct.net_bridge* %28, %struct.net_bridge_fdb_entry* %29, i32 %30)
  br label %35

32:                                               ; preds = %22, %5
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %37 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @fdb_delete(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
