; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_netlink.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (%struct.sock*)* }
%struct.sock = type { i32 }

@kobj_ns_type_lock = common dso_local global i32 0, align 4
@KOBJ_NS_TYPE_NONE = common dso_local global i32 0, align 4
@KOBJ_NS_TYPES = common dso_local global i32 0, align 4
@kobj_ns_ops_tbl = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kobj_ns_netlink(i32 %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sock* %1, %struct.sock** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = call i32 @spin_lock(i32* @kobj_ns_type_lock)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @KOBJ_NS_TYPE_NONE, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @KOBJ_NS_TYPES, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kobj_ns_ops_tbl, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8* (%struct.sock*)*, i8* (%struct.sock*)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i8* %28(%struct.sock* %29)
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %21, %14, %10, %2
  %32 = call i32 @spin_unlock(i32* @kobj_ns_type_lock)
  %33 = load i8*, i8** %5, align 8
  ret i8* %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
