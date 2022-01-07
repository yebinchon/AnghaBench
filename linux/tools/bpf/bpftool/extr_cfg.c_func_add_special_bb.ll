; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_add_special_bb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_add_special_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_node = type { i32 }
%struct.bb_node = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENTRY_BLOCK_INDEX = common dso_local global i32 0, align 4
@EXIT_BLOCK_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.func_node*)* @func_add_special_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_add_special_bb(%struct.func_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.func_node*, align 8
  %4 = alloca %struct.bb_node*, align 8
  store %struct.func_node* %0, %struct.func_node** %3, align 8
  %5 = load %struct.func_node*, %struct.func_node** %3, align 8
  %6 = getelementptr inbounds %struct.func_node, %struct.func_node* %5, i32 0, i32 0
  %7 = call %struct.bb_node* @func_insert_dummy_bb(i32* %6)
  store %struct.bb_node* %7, %struct.bb_node** %4, align 8
  %8 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %9 = icmp ne %struct.bb_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @ENTRY_BLOCK_INDEX, align 4
  %13 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %14 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.func_node*, %struct.func_node** %3, align 8
  %16 = call %struct.TYPE_2__* @func_last_bb(%struct.func_node* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call %struct.bb_node* @func_insert_dummy_bb(i32* %17)
  store %struct.bb_node* %18, %struct.bb_node** %4, align 8
  %19 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %20 = icmp ne %struct.bb_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @EXIT_BLOCK_INDEX, align 4
  %24 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %25 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.bb_node* @func_insert_dummy_bb(i32*) #1

declare dso_local %struct.TYPE_2__* @func_last_bb(%struct.func_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
