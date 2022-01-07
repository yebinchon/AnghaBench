; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_xskmap.c_xsk_map_node_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_xskmap.c_xsk_map_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_map_node = type { %struct.xdp_sock**, %struct.xsk_map* }
%struct.xsk_map = type { i32 }
%struct.xdp_sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xsk_map_node* (%struct.xsk_map*, %struct.xdp_sock**)* @xsk_map_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xsk_map_node* @xsk_map_node_alloc(%struct.xsk_map* %0, %struct.xdp_sock** %1) #0 {
  %3 = alloca %struct.xsk_map_node*, align 8
  %4 = alloca %struct.xsk_map*, align 8
  %5 = alloca %struct.xdp_sock**, align 8
  %6 = alloca %struct.xsk_map_node*, align 8
  %7 = alloca i32, align 4
  store %struct.xsk_map* %0, %struct.xsk_map** %4, align 8
  store %struct.xdp_sock** %1, %struct.xdp_sock*** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = load i32, i32* @__GFP_NOWARN, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.xsk_map_node* @kzalloc(i32 16, i32 %10)
  store %struct.xsk_map_node* %11, %struct.xsk_map_node** %6, align 8
  %12 = load %struct.xsk_map_node*, %struct.xsk_map_node** %6, align 8
  %13 = icmp ne %struct.xsk_map_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.xsk_map_node* @ERR_PTR(i32 %16)
  store %struct.xsk_map_node* %17, %struct.xsk_map_node** %3, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %20 = call i32 @xsk_map_inc(%struct.xsk_map* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.xsk_map_node*, %struct.xsk_map_node** %6, align 8
  %25 = call i32 @kfree(%struct.xsk_map_node* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.xsk_map_node* @ERR_PTR(i32 %26)
  store %struct.xsk_map_node* %27, %struct.xsk_map_node** %3, align 8
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.xsk_map*, %struct.xsk_map** %4, align 8
  %30 = load %struct.xsk_map_node*, %struct.xsk_map_node** %6, align 8
  %31 = getelementptr inbounds %struct.xsk_map_node, %struct.xsk_map_node* %30, i32 0, i32 1
  store %struct.xsk_map* %29, %struct.xsk_map** %31, align 8
  %32 = load %struct.xdp_sock**, %struct.xdp_sock*** %5, align 8
  %33 = load %struct.xsk_map_node*, %struct.xsk_map_node** %6, align 8
  %34 = getelementptr inbounds %struct.xsk_map_node, %struct.xsk_map_node* %33, i32 0, i32 0
  store %struct.xdp_sock** %32, %struct.xdp_sock*** %34, align 8
  %35 = load %struct.xsk_map_node*, %struct.xsk_map_node** %6, align 8
  store %struct.xsk_map_node* %35, %struct.xsk_map_node** %3, align 8
  br label %36

36:                                               ; preds = %28, %23, %14
  %37 = load %struct.xsk_map_node*, %struct.xsk_map_node** %3, align 8
  ret %struct.xsk_map_node* %37
}

declare dso_local %struct.xsk_map_node* @kzalloc(i32, i32) #1

declare dso_local %struct.xsk_map_node* @ERR_PTR(i32) #1

declare dso_local i32 @xsk_map_inc(%struct.xsk_map*) #1

declare dso_local i32 @kfree(%struct.xsk_map_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
