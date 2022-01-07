; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_stackleak_plugin.c_stackleak_add_track_stack.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_stackleak_plugin.c_stackleak_add_track_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@track_function_decl = common dso_local global i32 0, align 4
@GSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@GSI_SAME_STMT = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @stackleak_add_track_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stackleak_add_track_stack(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @track_function_decl, align 4
  %11 = call i32 @gimple_build_call(i32 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @as_a_gcall(i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @GSI_CONTINUE_LINKING, align 4
  %20 = call i32 @gsi_insert_after(i32* %17, i32* %18, i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @GSI_SAME_STMT, align 4
  %25 = call i32 @gsi_insert_before(i32* %22, i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.TYPE_4__* @gimple_bb(i32* %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  %29 = load i32, i32* @track_function_decl, align 4
  %30 = call i32 @cgraph_get_create_node(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i32, i32* @current_function_decl, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = call i32 @compute_call_stmt_bb_frequency(i32 %33, %struct.TYPE_4__* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @current_function_decl, align 4
  %37 = call i32 @cgraph_get_node(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @cgraph_create_edge(i32 %37, i32 %38, i32* %39, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @gimple_build_call(i32, i32) #1

declare dso_local i32* @as_a_gcall(i32) #1

declare dso_local i32 @gsi_insert_after(i32*, i32*, i32) #1

declare dso_local i32 @gsi_insert_before(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @gimple_bb(i32*) #1

declare dso_local i32 @cgraph_get_create_node(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @compute_call_stmt_bb_frequency(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cgraph_create_edge(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cgraph_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
