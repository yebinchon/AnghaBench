; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_pagefault_out_of_memory.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_pagefault_out_of_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oom_control = type { i32, i32, i32*, i32*, i32* }

@oom_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pagefault_out_of_memory() #0 {
  %1 = alloca %struct.oom_control, align 8
  %2 = bitcast %struct.oom_control* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 32, i1 false)
  %3 = call i64 @mem_cgroup_oom_synchronize(i32 1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %13

6:                                                ; preds = %0
  %7 = call i32 @mutex_trylock(i32* @oom_lock)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %13

10:                                               ; preds = %6
  %11 = call i32 @out_of_memory(%struct.oom_control* %1)
  %12 = call i32 @mutex_unlock(i32* @oom_lock)
  br label %13

13:                                               ; preds = %10, %9, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mem_cgroup_oom_synchronize(i32) #2

declare dso_local i32 @mutex_trylock(i32*) #2

declare dso_local i32 @out_of_memory(%struct.oom_control*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
