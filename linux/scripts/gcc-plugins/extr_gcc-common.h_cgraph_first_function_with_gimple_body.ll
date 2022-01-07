; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_first_function_with_gimple_body.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_first_function_with_gimple_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgraph_node* ()* @cgraph_first_function_with_gimple_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgraph_node* @cgraph_first_function_with_gimple_body() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %3, %struct.cgraph_node** %2, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %6 = icmp ne %struct.cgraph_node* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %9 = call i64 @cgraph_function_with_gimple_body_p(%struct.cgraph_node* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  store %struct.cgraph_node* %12, %struct.cgraph_node** %1, align 8
  br label %19

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %15, i32 0, i32 0
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  store %struct.cgraph_node* %17, %struct.cgraph_node** %2, align 8
  br label %4

18:                                               ; preds = %4
  store %struct.cgraph_node* null, %struct.cgraph_node** %1, align 8
  br label %19

19:                                               ; preds = %18, %11
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  ret %struct.cgraph_node* %20
}

declare dso_local i64 @cgraph_function_with_gimple_body_p(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
