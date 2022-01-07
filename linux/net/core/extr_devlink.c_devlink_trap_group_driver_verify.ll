; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_group_driver_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_group_driver_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.devlink_trap_group = type { i64, i32 }

@DEVLINK_TRAP_GROUP_GENERIC_ID_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@devlink_trap_group_generic = common dso_local global %struct.TYPE_3__* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_trap_group*)* @devlink_trap_group_driver_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_trap_group_driver_verify(%struct.devlink_trap_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink_trap_group*, align 8
  %4 = alloca i32, align 4
  store %struct.devlink_trap_group* %0, %struct.devlink_trap_group** %3, align 8
  %5 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %3, align 8
  %6 = getelementptr inbounds %struct.devlink_trap_group, %struct.devlink_trap_group* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DEVLINK_TRAP_GROUP_GENERIC_ID_MAX, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devlink_trap_group_generic, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %3, align 8
  %21 = getelementptr inbounds %struct.devlink_trap_group, %struct.devlink_trap_group* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devlink_trap_group_generic, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %22, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
