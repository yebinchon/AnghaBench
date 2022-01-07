; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.kobj_ns_type_operations = type { i64 }

@KOBJ_NS_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kobject_namespace(%struct.kobject* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.kobj_ns_type_operations*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  %5 = load %struct.kobject*, %struct.kobject** %3, align 8
  %6 = call %struct.kobj_ns_type_operations* @kobj_ns_ops(%struct.kobject* %5)
  store %struct.kobj_ns_type_operations* %6, %struct.kobj_ns_type_operations** %4, align 8
  %7 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %4, align 8
  %8 = icmp ne %struct.kobj_ns_type_operations* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %4, align 8
  %11 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KOBJ_NS_TYPE_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i8* null, i8** %2, align 8
  br label %25

16:                                               ; preds = %9
  %17 = load %struct.kobject*, %struct.kobject** %3, align 8
  %18 = getelementptr inbounds %struct.kobject, %struct.kobject* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i8* (%struct.kobject*)**
  %22 = load i8* (%struct.kobject*)*, i8* (%struct.kobject*)** %21, align 8
  %23 = load %struct.kobject*, %struct.kobject** %3, align 8
  %24 = call i8* %22(%struct.kobject* %23)
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local %struct.kobj_ns_type_operations* @kobj_ns_ops(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
