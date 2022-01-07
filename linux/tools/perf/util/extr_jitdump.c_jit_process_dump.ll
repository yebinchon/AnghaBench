; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_process_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_process_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_buf_desc = type { i32 }
%union.jr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_buf_desc*)* @jit_process_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_process_dump(%struct.jit_buf_desc* %0) #0 {
  %2 = alloca %struct.jit_buf_desc*, align 8
  %3 = alloca %union.jr_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.jit_buf_desc* %0, %struct.jit_buf_desc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %30, %1
  %6 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %2, align 8
  %7 = call %union.jr_entry* @jit_get_next_entry(%struct.jit_buf_desc* %6)
  store %union.jr_entry* %7, %union.jr_entry** %3, align 8
  %8 = icmp ne %union.jr_entry* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %union.jr_entry*, %union.jr_entry** %3, align 8
  %11 = bitcast %union.jr_entry* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 130, label %14
    i32 129, label %18
    i32 131, label %22
    i32 128, label %26
  ]

14:                                               ; preds = %9
  %15 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %2, align 8
  %16 = load %union.jr_entry*, %union.jr_entry** %3, align 8
  %17 = call i32 @jit_repipe_code_load(%struct.jit_buf_desc* %15, %union.jr_entry* %16)
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %2, align 8
  %20 = load %union.jr_entry*, %union.jr_entry** %3, align 8
  %21 = call i32 @jit_repipe_code_move(%struct.jit_buf_desc* %19, %union.jr_entry* %20)
  store i32 %21, i32* %4, align 4
  br label %31

22:                                               ; preds = %9
  %23 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %2, align 8
  %24 = load %union.jr_entry*, %union.jr_entry** %3, align 8
  %25 = call i32 @jit_repipe_debug_info(%struct.jit_buf_desc* %23, %union.jr_entry* %24)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %9
  %27 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %2, align 8
  %28 = load %union.jr_entry*, %union.jr_entry** %3, align 8
  %29 = call i32 @jit_repipe_unwinding_info(%struct.jit_buf_desc* %27, %union.jr_entry* %28)
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %5

31:                                               ; preds = %26, %22, %18, %14
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %union.jr_entry* @jit_get_next_entry(%struct.jit_buf_desc*) #1

declare dso_local i32 @jit_repipe_code_load(%struct.jit_buf_desc*, %union.jr_entry*) #1

declare dso_local i32 @jit_repipe_code_move(%struct.jit_buf_desc*, %union.jr_entry*) #1

declare dso_local i32 @jit_repipe_debug_info(%struct.jit_buf_desc*, %union.jr_entry*) #1

declare dso_local i32 @jit_repipe_unwinding_info(%struct.jit_buf_desc*, %union.jr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
