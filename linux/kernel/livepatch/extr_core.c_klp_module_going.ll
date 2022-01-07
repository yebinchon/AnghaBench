; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_module_going.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_module_going.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, i32 }

@MODULE_STATE_GOING = common dso_local global i64 0, align 8
@MODULE_STATE_COMING = common dso_local global i64 0, align 8
@klp_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klp_module_going(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %3 = load %struct.module*, %struct.module** %2, align 8
  %4 = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MODULE_STATE_GOING, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.module*, %struct.module** %2, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MODULE_STATE_COMING, align 8
  %13 = icmp ne i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %27

20:                                               ; preds = %14
  %21 = call i32 @mutex_lock(i32* @klp_mutex)
  %22 = load %struct.module*, %struct.module** %2, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.module*, %struct.module** %2, align 8
  %25 = call i32 @klp_cleanup_module_patches_limited(%struct.module* %24, i32* null)
  %26 = call i32 @mutex_unlock(i32* @klp_mutex)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @klp_cleanup_module_patches_limited(%struct.module*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
