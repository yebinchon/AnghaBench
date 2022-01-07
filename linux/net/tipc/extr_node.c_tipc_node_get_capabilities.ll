; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_node = type { i32 }

@TIPC_NODE_CAPABILITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_get_capabilities(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.tipc_node* @tipc_node_find(%struct.net* %8, i32 %9)
  store %struct.tipc_node* %10, %struct.tipc_node** %6, align 8
  %11 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %12 = icmp ne %struct.tipc_node* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TIPC_NODE_CAPABILITIES, align 4
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %21 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %24 = call i32 @tipc_node_put(%struct.tipc_node* %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
