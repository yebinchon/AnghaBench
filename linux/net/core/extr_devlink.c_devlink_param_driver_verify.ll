; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_driver_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_driver_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.devlink_param = type { i32, i32 }

@DEVLINK_PARAM_GENERIC_ID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@devlink_param_generic = common dso_local global %struct.TYPE_2__* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_param*)* @devlink_param_driver_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_driver_verify(%struct.devlink_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink_param*, align 8
  %4 = alloca i32, align 4
  store %struct.devlink_param* %0, %struct.devlink_param** %3, align 8
  %5 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %6 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_MAX, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_MAX, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %20 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devlink_param_generic, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i32 %21, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %14

37:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
