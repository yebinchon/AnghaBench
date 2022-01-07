; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_delete_by_addr_and_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_delete_by_addr_and_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_fdb_entry = type { %struct.net_bridge_port* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i32*, i32)* @fdb_delete_by_addr_and_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_delete_by_addr_and_port(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %11, i32* %12, i32 %13)
  store %struct.net_bridge_fdb_entry* %14, %struct.net_bridge_fdb_entry** %10, align 8
  %15 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %16 = icmp ne %struct.net_bridge_fdb_entry* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %19 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %18, i32 0, i32 0
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %19, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %22 = icmp ne %struct.net_bridge_port* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %28 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %29 = call i32 @fdb_delete(%struct.net_bridge* %27, %struct.net_bridge_fdb_entry* %28, i32 1)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i32*, i32) #1

declare dso_local i32 @fdb_delete(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
