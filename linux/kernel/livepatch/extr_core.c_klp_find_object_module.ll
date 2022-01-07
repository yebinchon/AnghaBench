; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_object_module.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_object_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_object = type { %struct.module*, i32 }
%struct.module = type { i64 }

@module_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.klp_object*)* @klp_find_object_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @klp_find_object_module(%struct.klp_object* %0) #0 {
  %2 = alloca %struct.klp_object*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.klp_object* %0, %struct.klp_object** %2, align 8
  %4 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %5 = call i32 @klp_is_module(%struct.klp_object* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @module_mutex)
  %10 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %11 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.module* @find_module(i32 %12)
  store %struct.module* %13, %struct.module** %3, align 8
  %14 = load %struct.module*, %struct.module** %3, align 8
  %15 = icmp ne %struct.module* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.module*, %struct.module** %3, align 8
  %18 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.module*, %struct.module** %3, align 8
  %23 = load %struct.klp_object*, %struct.klp_object** %2, align 8
  %24 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %23, i32 0, i32 0
  store %struct.module* %22, %struct.module** %24, align 8
  br label %25

25:                                               ; preds = %21, %16, %8
  %26 = call i32 @mutex_unlock(i32* @module_mutex)
  br label %27

27:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @klp_is_module(%struct.klp_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.module* @find_module(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
