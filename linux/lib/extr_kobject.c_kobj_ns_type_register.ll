; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_type_register.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobj_ns_type_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_ns_type_operations = type { i32 }

@kobj_ns_type_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KOBJ_NS_TYPES = common dso_local global i32 0, align 4
@KOBJ_NS_TYPE_NONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@kobj_ns_ops_tbl = common dso_local global %struct.kobj_ns_type_operations** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobj_ns_type_register(%struct.kobj_ns_type_operations* %0) #0 {
  %2 = alloca %struct.kobj_ns_type_operations*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kobj_ns_type_operations* %0, %struct.kobj_ns_type_operations** %2, align 8
  %5 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %2, align 8
  %6 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @spin_lock(i32* @kobj_ns_type_lock)
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @KOBJ_NS_TYPES, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @KOBJ_NS_TYPE_NONE, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %38

22:                                               ; preds = %15
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.kobj_ns_type_operations**, %struct.kobj_ns_type_operations*** @kobj_ns_ops_tbl, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %25, i64 %27
  %29 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %28, align 8
  %30 = icmp ne %struct.kobj_ns_type_operations* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %38

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  %33 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %2, align 8
  %34 = load %struct.kobj_ns_type_operations**, %struct.kobj_ns_type_operations*** @kobj_ns_ops_tbl, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %34, i64 %36
  store %struct.kobj_ns_type_operations* %33, %struct.kobj_ns_type_operations** %37, align 8
  br label %38

38:                                               ; preds = %32, %31, %21, %14
  %39 = call i32 @spin_unlock(i32* @kobj_ns_type_lock)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
