; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_node_links.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_node_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32 }
%struct.tipc_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_BEARERS = common dso_local global i64 0, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tipc_nl_msg*, %struct.tipc_node*, i64*)* @__tipc_nl_add_node_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_node_links(%struct.net* %0, %struct.tipc_nl_msg* %1, %struct.tipc_node* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_nl_msg*, align 8
  %8 = alloca %struct.tipc_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %7, align 8
  store %struct.tipc_node* %2, %struct.tipc_node** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MAX_BEARERS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i64, i64* %10, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  %21 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %22 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %47

30:                                               ; preds = %18
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %33 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NLM_F_MULTI, align 4
  %41 = call i32 @__tipc_nl_add_link(%struct.net* %31, %struct.tipc_nl_msg* %32, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %52

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load i64*, i64** %9, align 8
  store i64 0, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @__tipc_nl_add_link(%struct.net*, %struct.tipc_nl_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
