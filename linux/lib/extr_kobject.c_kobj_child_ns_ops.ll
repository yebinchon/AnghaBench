; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_child_ns_ops.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_child_ns_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_ns_type_operations = type { i32 }
%struct.kobject = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kobj_ns_type_operations* (%struct.kobject*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.kobj_ns_type_operations*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  store %struct.kobj_ns_type_operations* null, %struct.kobj_ns_type_operations** %3, align 8
  %4 = load %struct.kobject*, %struct.kobject** %2, align 8
  %5 = icmp ne %struct.kobject* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load %struct.kobject*, %struct.kobject** %2, align 8
  %8 = getelementptr inbounds %struct.kobject, %struct.kobject* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.kobject*, %struct.kobject** %2, align 8
  %13 = getelementptr inbounds %struct.kobject, %struct.kobject* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kobj_ns_type_operations* (%struct.kobject*)*, %struct.kobj_ns_type_operations* (%struct.kobject*)** %15, align 8
  %17 = icmp ne %struct.kobj_ns_type_operations* (%struct.kobject*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.kobject*, %struct.kobject** %2, align 8
  %20 = getelementptr inbounds %struct.kobject, %struct.kobject* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.kobj_ns_type_operations* (%struct.kobject*)*, %struct.kobj_ns_type_operations* (%struct.kobject*)** %22, align 8
  %24 = load %struct.kobject*, %struct.kobject** %2, align 8
  %25 = call %struct.kobj_ns_type_operations* %23(%struct.kobject* %24)
  store %struct.kobj_ns_type_operations* %25, %struct.kobj_ns_type_operations** %3, align 8
  br label %26

26:                                               ; preds = %18, %11, %6, %1
  %27 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %3, align 8
  ret %struct.kobj_ns_type_operations* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
