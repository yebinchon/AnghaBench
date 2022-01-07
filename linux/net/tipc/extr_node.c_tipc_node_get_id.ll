; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_node = type { i32 }

@TIPC_NODEID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_get_id(%struct.net* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tipc_node*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = call i32* @tipc_own_id(%struct.net* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = call i64 @tipc_own_addr(%struct.net* %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @TIPC_NODEID_LEN, align 4
  %24 = call i32 @memcpy(i32* %21, i32* %22, i32 %23)
  store i32 1, i32* %4, align 4
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call %struct.tipc_node* @tipc_node_find(%struct.net* %26, i64 %27)
  store %struct.tipc_node* %28, %struct.tipc_node** %9, align 8
  %29 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %30 = icmp ne %struct.tipc_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %35 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %34, i32 0, i32 0
  %36 = load i32, i32* @TIPC_NODEID_LEN, align 4
  %37 = call i32 @memcpy(i32* %33, i32* %35, i32 %36)
  %38 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %39 = call i32 @tipc_node_put(%struct.tipc_node* %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %31, %20, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @tipc_own_id(%struct.net*) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i64) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
