; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param = type { i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)*, i32 }
%struct.devlink.0 = type opaque
%struct.devlink_param_gset_ctx = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_param*, %struct.devlink_param_gset_ctx*)* @devlink_param_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_set(%struct.devlink* %0, %struct.devlink_param* %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_param*, align 8
  %7 = alloca %struct.devlink_param_gset_ctx*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_param* %1, %struct.devlink_param** %6, align 8
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %7, align 8
  %8 = load %struct.devlink_param*, %struct.devlink_param** %6, align 8
  %9 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %8, i32 0, i32 0
  %10 = load i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)*, i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)** %9, align 8
  %11 = icmp ne i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.devlink_param*, %struct.devlink_param** %6, align 8
  %17 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %16, i32 0, i32 0
  %18 = load i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)*, i32 (%struct.devlink.0*, i32, %struct.devlink_param_gset_ctx*)** %17, align 8
  %19 = load %struct.devlink*, %struct.devlink** %5, align 8
  %20 = bitcast %struct.devlink* %19 to %struct.devlink.0*
  %21 = load %struct.devlink_param*, %struct.devlink_param** %6, align 8
  %22 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %7, align 8
  %25 = call i32 %18(%struct.devlink.0* %20, i32 %23, %struct.devlink_param_gset_ctx* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
