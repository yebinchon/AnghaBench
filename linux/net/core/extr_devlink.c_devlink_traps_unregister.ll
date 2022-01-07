; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_traps_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_traps_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_traps_unregister(%struct.devlink* %0, %struct.devlink_trap* %1, i64 %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_trap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.devlink*, %struct.devlink** %4, align 8
  %9 = getelementptr inbounds %struct.devlink, %struct.devlink* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 1
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.devlink*, %struct.devlink** %4, align 8
  %19 = load %struct.devlink_trap*, %struct.devlink_trap** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %19, i64 %21
  %23 = call i32 @devlink_trap_disable(%struct.devlink* %18, %struct.devlink_trap* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  br label %14

27:                                               ; preds = %14
  %28 = call i32 (...) @synchronize_rcu()
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %42, %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.devlink*, %struct.devlink** %4, align 8
  %37 = load %struct.devlink_trap*, %struct.devlink_trap** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %37, i64 %39
  %41 = call i32 @devlink_trap_unregister(%struct.devlink* %36, %struct.devlink_trap* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.devlink*, %struct.devlink** %4, align 8
  %47 = getelementptr inbounds %struct.devlink, %struct.devlink* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_trap_disable(%struct.devlink*, %struct.devlink_trap*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @devlink_trap_unregister(%struct.devlink*, %struct.devlink_trap*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
