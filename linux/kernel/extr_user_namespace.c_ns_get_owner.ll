; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_ns_get_owner.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_ns_get_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.user_namespace* (%struct.ns_common*)* }
%struct.user_namespace = type { %struct.user_namespace* }
%struct.TYPE_4__ = type { %struct.ns_common }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ns_common* @ns_get_owner(%struct.ns_common* %0) #0 {
  %2 = alloca %struct.ns_common*, align 8
  %3 = alloca %struct.ns_common*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  store %struct.ns_common* %0, %struct.ns_common** %3, align 8
  %7 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %7, %struct.user_namespace** %4, align 8
  %8 = load %struct.ns_common*, %struct.ns_common** %3, align 8
  %9 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.user_namespace* (%struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)** %11, align 8
  %13 = load %struct.ns_common*, %struct.ns_common** %3, align 8
  %14 = call %struct.user_namespace* %12(%struct.ns_common* %13)
  store %struct.user_namespace* %14, %struct.user_namespace** %6, align 8
  store %struct.user_namespace* %14, %struct.user_namespace** %5, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %17 = icmp ne %struct.user_namespace* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ns_common* @ERR_PTR(i32 %20)
  store %struct.ns_common* %21, %struct.ns_common** %2, align 8
  br label %35

22:                                               ; preds = %15
  %23 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %24 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %25 = icmp eq %struct.user_namespace* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %29 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %28, i32 0, i32 0
  %30 = load %struct.user_namespace*, %struct.user_namespace** %29, align 8
  store %struct.user_namespace* %30, %struct.user_namespace** %6, align 8
  br label %15

31:                                               ; preds = %26
  %32 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %33 = call %struct.TYPE_4__* @get_user_ns(%struct.user_namespace* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.ns_common* %34, %struct.ns_common** %2, align 8
  br label %35

35:                                               ; preds = %31, %18
  %36 = load %struct.ns_common*, %struct.ns_common** %2, align 8
  ret %struct.ns_common* %36
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local %struct.ns_common* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_4__* @get_user_ns(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
