; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_drop.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }

@kobj_ns_type_lock = common dso_local global i32 0, align 4
@KOBJ_NS_TYPE_NONE = common dso_local global i32 0, align 4
@KOBJ_NS_TYPES = common dso_local global i32 0, align 4
@kobj_ns_ops_tbl = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobj_ns_drop(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = call i32 @spin_lock(i32* @kobj_ns_type_lock)
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @KOBJ_NS_TYPE_NONE, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @KOBJ_NS_TYPES, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i8*)*, i32 (i8*)** %26, align 8
  %28 = icmp ne i32 (i8*)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i8*)*, i32 (i8*)** %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 %36(i8* %37)
  br label %39

39:                                               ; preds = %29, %20, %13, %9, %2
  %40 = call i32 @spin_unlock(i32* @kobj_ns_type_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
