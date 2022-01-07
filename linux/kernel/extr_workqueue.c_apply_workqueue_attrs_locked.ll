; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_apply_workqueue_attrs_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_apply_workqueue_attrs_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32, i32 }
%struct.workqueue_attrs = type { i32 }
%struct.apply_wqattrs_ctx = type { i32 }

@WQ_UNBOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__WQ_ORDERED_EXPLICIT = common dso_local global i32 0, align 4
@__WQ_ORDERED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue_struct*, %struct.workqueue_attrs*)* @apply_workqueue_attrs_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* %0, %struct.workqueue_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca %struct.workqueue_attrs*, align 8
  %6 = alloca %struct.apply_wqattrs_ctx*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %4, align 8
  store %struct.workqueue_attrs* %1, %struct.workqueue_attrs** %5, align 8
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %8 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WQ_UNBOUND, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %22 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %27 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @__WQ_ORDERED_EXPLICIT, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %25
  %37 = load i32, i32* @__WQ_ORDERED, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %40 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %20
  %44 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %45 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %5, align 8
  %46 = call %struct.apply_wqattrs_ctx* @apply_wqattrs_prepare(%struct.workqueue_struct* %44, %struct.workqueue_attrs* %45)
  store %struct.apply_wqattrs_ctx* %46, %struct.apply_wqattrs_ctx** %6, align 8
  %47 = load %struct.apply_wqattrs_ctx*, %struct.apply_wqattrs_ctx** %6, align 8
  %48 = icmp ne %struct.apply_wqattrs_ctx* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.apply_wqattrs_ctx*, %struct.apply_wqattrs_ctx** %6, align 8
  %54 = call i32 @apply_wqattrs_commit(%struct.apply_wqattrs_ctx* %53)
  %55 = load %struct.apply_wqattrs_ctx*, %struct.apply_wqattrs_ctx** %6, align 8
  %56 = call i32 @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %49, %33, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.apply_wqattrs_ctx* @apply_wqattrs_prepare(%struct.workqueue_struct*, %struct.workqueue_attrs*) #1

declare dso_local i32 @apply_wqattrs_commit(%struct.apply_wqattrs_ctx*) #1

declare dso_local i32 @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
