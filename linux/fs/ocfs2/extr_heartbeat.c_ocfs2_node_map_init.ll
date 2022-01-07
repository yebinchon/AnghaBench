; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_heartbeat.c_ocfs2_node_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_heartbeat.c_ocfs2_node_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_node_map = type { i32, i32 }

@OCFS2_NODE_MAP_MAX_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_node_map*)* @ocfs2_node_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_node_map_init(%struct.ocfs2_node_map* %0) #0 {
  %2 = alloca %struct.ocfs2_node_map*, align 8
  store %struct.ocfs2_node_map* %0, %struct.ocfs2_node_map** %2, align 8
  %3 = load i32, i32* @OCFS2_NODE_MAP_MAX_NODES, align 4
  %4 = load %struct.ocfs2_node_map*, %struct.ocfs2_node_map** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_node_map, %struct.ocfs2_node_map* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.ocfs2_node_map*, %struct.ocfs2_node_map** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_node_map, %struct.ocfs2_node_map* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @OCFS2_NODE_MAP_MAX_NODES, align 4
  %10 = call i32 @BITS_TO_LONGS(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32 %8, i32 0, i32 %13)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
