; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj = type { i32 }

@obj_freeing = common dso_local global i32 0, align 4
@obj_nr_tofree = common dso_local global i64 0, align 8
@debug_obj_work = common dso_local global i32 0, align 4
@ODEBUG_FREE_WORK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_obj*)* @free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_object(%struct.debug_obj* %0) #0 {
  %2 = alloca %struct.debug_obj*, align 8
  store %struct.debug_obj* %0, %struct.debug_obj** %2, align 8
  %3 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %4 = call i32 @__free_object(%struct.debug_obj* %3)
  %5 = load i32, i32* @obj_freeing, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @obj_nr_tofree, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* @obj_freeing, align 4
  %12 = call i32 @WRITE_ONCE(i32 %11, i32 1)
  %13 = load i32, i32* @ODEBUG_FREE_WORK_DELAY, align 4
  %14 = call i32 @schedule_delayed_work(i32* @debug_obj_work, i32 %13)
  br label %15

15:                                               ; preds = %10, %7, %1
  ret void
}

declare dso_local i32 @__free_object(%struct.debug_obj*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
