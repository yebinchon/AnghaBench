; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_get_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_cgraph_get_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgraph_node* (i32)* @cgraph_get_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgraph_node* @cgraph_get_create_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cgraph_node* @cgraph_get_node(i32 %4)
  store %struct.cgraph_node* %5, %struct.cgraph_node** %3, align 8
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %7 = icmp ne %struct.cgraph_node* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.cgraph_node* @cgraph_node(i32 %11)
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi %struct.cgraph_node* [ %9, %8 ], [ %12, %10 ]
  ret %struct.cgraph_node* %14
}

declare dso_local %struct.cgraph_node* @cgraph_get_node(i32) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
