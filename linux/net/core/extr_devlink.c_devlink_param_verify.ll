; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_param = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_param*)* @devlink_param_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_verify(%struct.devlink_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink_param*, align 8
  store %struct.devlink_param* %0, %struct.devlink_param** %3, align 8
  %4 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %5 = icmp ne %struct.devlink_param* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %8 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %13 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %6, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %11
  %20 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %21 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %26 = call i32 @devlink_param_generic_verify(%struct.devlink_param* %25)
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.devlink_param*, %struct.devlink_param** %3, align 8
  %29 = call i32 @devlink_param_driver_verify(%struct.devlink_param* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @devlink_param_generic_verify(%struct.devlink_param*) #1

declare dso_local i32 @devlink_param_driver_verify(%struct.devlink_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
