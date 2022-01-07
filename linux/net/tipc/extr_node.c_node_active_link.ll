; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_node_active_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_node_active_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32 }
%struct.tipc_node = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tipc_link* }

@INVALID_BEARER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_link* (%struct.tipc_node*, i32)* @node_active_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_link* @node_active_link(%struct.tipc_node* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %8 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INVALID_BEARER_ID, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.tipc_link* null, %struct.tipc_link** %3, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %24 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.tipc_link*, %struct.tipc_link** %29, align 8
  store %struct.tipc_link* %30, %struct.tipc_link** %3, align 8
  br label %31

31:                                               ; preds = %22, %21
  %32 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  ret %struct.tipc_link* %32
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
