; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_write_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_write_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32, i32, i32, %struct.list_head, %struct.net* }
%struct.list_head = type { i32 }
%struct.net = type { i32 }

@TIPC_NOTIFY_NODE_DOWN = common dso_local global i32 0, align 4
@TIPC_NOTIFY_NODE_UP = common dso_local global i32 0, align 4
@TIPC_NOTIFY_LINK_DOWN = common dso_local global i32 0, align 4
@TIPC_NOTIFY_LINK_UP = common dso_local global i32 0, align 4
@TIPC_LINK_STATE = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*)* @tipc_node_write_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_write_unlock(%struct.tipc_node* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %2, align 8
  %9 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %9, i32 0, i32 5
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %13 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %23 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %22, i32 0, i32 3
  %24 = call i32 @write_unlock_bh(i32* %23)
  br label %103

25:                                               ; preds = %1
  %26 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %27 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %30 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %7, align 4
  %34 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %35 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %34, i32 0, i32 4
  store %struct.list_head* %35, %struct.list_head** %8, align 8
  %36 = load i32, i32* @TIPC_NOTIFY_NODE_DOWN, align 4
  %37 = load i32, i32* @TIPC_NOTIFY_NODE_UP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TIPC_NOTIFY_LINK_DOWN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TIPC_NOTIFY_LINK_UP, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %45 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %49 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %48, i32 0, i32 3
  %50 = call i32 @write_unlock_bh(i32* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @TIPC_NOTIFY_NODE_DOWN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %25
  %56 = load %struct.net*, %struct.net** %3, align 8
  %57 = load %struct.list_head*, %struct.list_head** %8, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @tipc_publ_notify(%struct.net* %56, %struct.list_head* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %25
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TIPC_NOTIFY_NODE_UP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.net*, %struct.net** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @tipc_named_node_up(%struct.net* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @TIPC_NOTIFY_LINK_UP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.net*, %struct.net** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @tipc_mon_peer_up(%struct.net* %75, i32 %76, i32 %77)
  %79 = load %struct.net*, %struct.net** %3, align 8
  %80 = load i32, i32* @TIPC_LINK_STATE, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @tipc_nametbl_publish(%struct.net* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @TIPC_NOTIFY_LINK_DOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.net*, %struct.net** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @tipc_mon_peer_down(%struct.net* %93, i32 %94, i32 %95)
  %97 = load %struct.net*, %struct.net** %3, align 8
  %98 = load i32, i32* @TIPC_LINK_STATE, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @tipc_nametbl_withdraw(%struct.net* %97, i32 %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %21, %92, %87
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @tipc_publ_notify(%struct.net*, %struct.list_head*, i32) #1

declare dso_local i32 @tipc_named_node_up(%struct.net*, i32) #1

declare dso_local i32 @tipc_mon_peer_up(%struct.net*, i32, i32) #1

declare dso_local i32 @tipc_nametbl_publish(%struct.net*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_mon_peer_down(%struct.net*, i32, i32) #1

declare dso_local i32 @tipc_nametbl_withdraw(%struct.net*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
