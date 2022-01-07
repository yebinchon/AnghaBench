; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_try_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_try_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i64 }
%struct.tipc_node = type { i64, i32 }

@NODE_ID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tipc_node_try_addr(%struct.net* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tipc_net*, align 8
  %9 = alloca %struct.tipc_node*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = call %struct.tipc_net* @tipc_net(%struct.net* %10)
  store %struct.tipc_net* %11, %struct.tipc_net** %8, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.tipc_node* @tipc_node_find(%struct.net* %12, i64 %13)
  store %struct.tipc_node* %14, %struct.tipc_node** %9, align 8
  %15 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %16 = icmp ne %struct.tipc_node* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %19 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @NODE_ID_LEN, align 4
  %23 = call i32 @memcmp(i32 %20, i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %28 = call i32 @tipc_node_put(%struct.tipc_node* %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %60

32:                                               ; preds = %26
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @tipc_node_suggest_addr(%struct.net* %33, i64 %34)
  store i64 %35, i64* %4, align 8
  br label %60

36:                                               ; preds = %3
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.tipc_node* @tipc_node_find_by_id(%struct.net* %37, i32* %38)
  store %struct.tipc_node* %39, %struct.tipc_node** %9, align 8
  %40 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %41 = icmp ne %struct.tipc_node* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %44 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %47 = call i32 @tipc_node_put(%struct.tipc_node* %46)
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %4, align 8
  br label %60

49:                                               ; preds = %36
  %50 = load %struct.tipc_net*, %struct.tipc_net** %8, align 8
  %51 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.net*, %struct.net** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @tipc_node_suggest_addr(%struct.net* %56, i64 %57)
  store i64 %58, i64* %4, align 8
  br label %60

59:                                               ; preds = %49
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %59, %55, %42, %32, %31
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i64) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

declare dso_local i64 @tipc_node_suggest_addr(%struct.net*, i64) #1

declare dso_local %struct.tipc_node* @tipc_node_find_by_id(%struct.net*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
