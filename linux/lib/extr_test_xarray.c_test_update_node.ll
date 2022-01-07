; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_xarray.c_test_update_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_xarray.c_test_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i64, i64, i32 }

@shadow_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_node*)* @test_update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_update_node(%struct.xa_node* %0) #0 {
  %2 = alloca %struct.xa_node*, align 8
  store %struct.xa_node* %0, %struct.xa_node** %2, align 8
  %3 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %4 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %9 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %12 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %17 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %16, i32 0, i32 2
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %22 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %21, i32 0, i32 2
  %23 = call i32 @list_add(i32* @shadow_nodes, i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  br label %35

25:                                               ; preds = %7, %1
  %26 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %27 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %26, i32 0, i32 2
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %32 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %31, i32 0, i32 2
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %24
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
