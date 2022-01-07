; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_done_parent_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_done_parent_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { i64, i32, i32, i32, %struct.fscache_object* }

@.str = private unnamed_addr constant [17 x i8] c"OBJ%x {OBJ%x,%x}\00", align 1
@FSCACHE_OBJECT_EV_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_object*)* @fscache_done_parent_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_done_parent_op(%struct.fscache_object* %0) #0 {
  %2 = alloca %struct.fscache_object*, align 8
  %3 = alloca %struct.fscache_object*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %2, align 8
  %4 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %5 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %4, i32 0, i32 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  store %struct.fscache_object* %6, %struct.fscache_object** %3, align 8
  %7 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %8 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %11 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %14 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i64 %15)
  %17 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %18 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_nested(i32* %18, i32 1)
  %20 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %25 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %29 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %34 = load i32, i32* @FSCACHE_OBJECT_EV_CLEARED, align 4
  %35 = call i32 @fscache_raise_event(%struct.fscache_object* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %38 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32, i64) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @fscache_raise_event(%struct.fscache_object*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
