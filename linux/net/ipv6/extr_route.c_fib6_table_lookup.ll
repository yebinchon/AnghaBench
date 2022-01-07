; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_table_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fib6_table = type { i32 }
%struct.flowi6 = type { i32, i32, i32 }
%struct.fib6_result = type { i64 }
%struct.fib6_node = type { i32 }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_REACHABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib6_table_lookup(%struct.net* %0, %struct.fib6_table* %1, i32 %2, %struct.flowi6* %3, %struct.fib6_result* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib6_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi6*, align 8
  %11 = alloca %struct.fib6_result*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib6_node*, align 8
  %14 = alloca %struct.fib6_node*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.flowi6* %3, %struct.flowi6** %10, align 8
  store %struct.fib6_result* %4, %struct.fib6_result** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %16 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %15, i32 0, i32 0
  %17 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %18 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %17, i32 0, i32 2
  %19 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 1
  %21 = call %struct.fib6_node* @fib6_node_lookup(i32* %16, i32* %18, i32* %20)
  store %struct.fib6_node* %21, %struct.fib6_node** %13, align 8
  %22 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  store %struct.fib6_node* %22, %struct.fib6_node** %14, align 8
  %23 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %24 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %6
  br label %31

31:                                               ; preds = %59, %53, %30
  %32 = load %struct.net*, %struct.net** %7, align 8
  %33 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.fib6_result*, %struct.fib6_result** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @rt6_select(%struct.net* %32, %struct.fib6_node* %33, i32 %34, %struct.fib6_result* %35, i32 %36)
  %38 = load %struct.fib6_result*, %struct.fib6_result** %11, align 8
  %39 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %31
  %47 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  %48 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %49 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %48, i32 0, i32 1
  %50 = call %struct.fib6_node* @fib6_backtrack(%struct.fib6_node* %47, i32* %49)
  store %struct.fib6_node* %50, %struct.fib6_node** %13, align 8
  %51 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  %52 = icmp ne %struct.fib6_node* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %31

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load %struct.fib6_node*, %struct.fib6_node** %14, align 8
  store %struct.fib6_node* %64, %struct.fib6_node** %13, align 8
  br label %31

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.net*, %struct.net** %7, align 8
  %69 = load %struct.fib6_result*, %struct.fib6_result** %11, align 8
  %70 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %71 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %72 = call i32 @trace_fib6_table_lookup(%struct.net* %68, %struct.fib6_result* %69, %struct.fib6_table* %70, %struct.flowi6* %71)
  ret i32 0
}

declare dso_local %struct.fib6_node* @fib6_node_lookup(i32*, i32*, i32*) #1

declare dso_local i32 @rt6_select(%struct.net*, %struct.fib6_node*, i32, %struct.fib6_result*, i32) #1

declare dso_local %struct.fib6_node* @fib6_backtrack(%struct.fib6_node*, i32*) #1

declare dso_local i32 @trace_fib6_table_lookup(%struct.net*, %struct.fib6_result*, %struct.fib6_table*, %struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
