; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_generic_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_generic_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.devlink_trap = type { i64, i64, i32 }

@DEVLINK_TRAP_GENERIC_ID_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@devlink_trap_generic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_trap*)* @devlink_trap_generic_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_trap_generic_verify(%struct.devlink_trap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink_trap*, align 8
  store %struct.devlink_trap* %0, %struct.devlink_trap** %3, align 8
  %4 = load %struct.devlink_trap*, %struct.devlink_trap** %3, align 8
  %5 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DEVLINK_TRAP_GENERIC_ID_MAX, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.devlink_trap*, %struct.devlink_trap** %3, align 8
  %14 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devlink_trap_generic, align 8
  %17 = load %struct.devlink_trap*, %struct.devlink_trap** %3, align 8
  %18 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i32 %15, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %12
  %29 = load %struct.devlink_trap*, %struct.devlink_trap** %3, align 8
  %30 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devlink_trap_generic, align 8
  %33 = load %struct.devlink_trap*, %struct.devlink_trap** %3, align 8
  %34 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %31, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %25, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
