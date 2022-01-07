; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_initial.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (...)* }

@kobj_ns_type_lock = common dso_local global i32 0, align 4
@KOBJ_NS_TYPE_NONE = common dso_local global i32 0, align 4
@KOBJ_NS_TYPES = common dso_local global i32 0, align 4
@kobj_ns_ops_tbl = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kobj_ns_initial(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = call i32 @spin_lock(i32* @kobj_ns_type_lock)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @KOBJ_NS_TYPE_NONE, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @KOBJ_NS_TYPES, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8* (...)*, i8* (...)** %25, align 8
  %27 = call i8* (...) %26()
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %19, %12, %8, %1
  %29 = call i32 @spin_unlock(i32* @kobj_ns_type_lock)
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
