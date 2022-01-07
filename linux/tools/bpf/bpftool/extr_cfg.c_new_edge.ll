; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_new_edge.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_new_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_node = type { i32, %struct.bb_node*, %struct.bb_node* }
%struct.bb_node = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"OOM when allocating edge node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.edge_node* (%struct.bb_node*, %struct.bb_node*, i32)* @new_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.edge_node* @new_edge(%struct.bb_node* %0, %struct.bb_node* %1, i32 %2) #0 {
  %4 = alloca %struct.edge_node*, align 8
  %5 = alloca %struct.bb_node*, align 8
  %6 = alloca %struct.bb_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.edge_node*, align 8
  store %struct.bb_node* %0, %struct.bb_node** %5, align 8
  store %struct.bb_node* %1, %struct.bb_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call %struct.edge_node* @calloc(i32 1, i32 24)
  store %struct.edge_node* %9, %struct.edge_node** %8, align 8
  %10 = load %struct.edge_node*, %struct.edge_node** %8, align 8
  %11 = icmp ne %struct.edge_node* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.edge_node* null, %struct.edge_node** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.bb_node*, %struct.bb_node** %5, align 8
  %16 = icmp ne %struct.bb_node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.bb_node*, %struct.bb_node** %5, align 8
  %19 = load %struct.edge_node*, %struct.edge_node** %8, align 8
  %20 = getelementptr inbounds %struct.edge_node, %struct.edge_node* %19, i32 0, i32 2
  store %struct.bb_node* %18, %struct.bb_node** %20, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.bb_node*, %struct.bb_node** %6, align 8
  %23 = icmp ne %struct.bb_node* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.bb_node*, %struct.bb_node** %6, align 8
  %26 = load %struct.edge_node*, %struct.edge_node** %8, align 8
  %27 = getelementptr inbounds %struct.edge_node, %struct.edge_node* %26, i32 0, i32 1
  store %struct.bb_node* %25, %struct.bb_node** %27, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.edge_node*, %struct.edge_node** %8, align 8
  %31 = getelementptr inbounds %struct.edge_node, %struct.edge_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.edge_node*, %struct.edge_node** %8, align 8
  store %struct.edge_node* %34, %struct.edge_node** %4, align 8
  br label %35

35:                                               ; preds = %28, %12
  %36 = load %struct.edge_node*, %struct.edge_node** %4, align 8
  ret %struct.edge_node* %36
}

declare dso_local %struct.edge_node* @calloc(i32, i32) #1

declare dso_local i32 @p_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
