; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_insert_dummy_bb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_insert_dummy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bb_node = type { i32, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"OOM when allocating BB node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bb_node* (%struct.list_head*)* @func_insert_dummy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bb_node* @func_insert_dummy_bb(%struct.list_head* %0) #0 {
  %2 = alloca %struct.bb_node*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.bb_node*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %5 = call %struct.bb_node* @calloc(i32 1, i32 12)
  store %struct.bb_node* %5, %struct.bb_node** %4, align 8
  %6 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %7 = icmp ne %struct.bb_node* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @p_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.bb_node* null, %struct.bb_node** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %12 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %15 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %18 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = call i32 @list_add(i32* %18, %struct.list_head* %19)
  %21 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  store %struct.bb_node* %21, %struct.bb_node** %2, align 8
  br label %22

22:                                               ; preds = %10, %8
  %23 = load %struct.bb_node*, %struct.bb_node** %2, align 8
  ret %struct.bb_node* %23
}

declare dso_local %struct.bb_node* @calloc(i32, i32) #1

declare dso_local i32 @p_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
