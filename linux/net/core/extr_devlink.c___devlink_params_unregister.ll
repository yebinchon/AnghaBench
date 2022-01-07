; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_params_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_params_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.list_head = type { i32 }
%struct.devlink_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i64, i32)* @__devlink_params_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__devlink_params_unregister(%struct.devlink* %0, i32 %1, %struct.list_head* %2, %struct.devlink_param* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.devlink_param*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.devlink_param*, align 8
  %14 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store %struct.devlink_param* %3, %struct.devlink_param** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  store %struct.devlink_param* %15, %struct.devlink_param** %13, align 8
  %16 = load %struct.devlink*, %struct.devlink** %7, align 8
  %17 = getelementptr inbounds %struct.devlink, %struct.devlink* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %30, %6
  %20 = load i32, i32* %14, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.devlink*, %struct.devlink** %7, align 8
  %26 = load %struct.list_head*, %struct.list_head** %9, align 8
  %27 = load %struct.devlink_param*, %struct.devlink_param** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @devlink_param_unregister_one(%struct.devlink* %25, i32 0, %struct.list_head* %26, %struct.devlink_param* %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = load %struct.devlink_param*, %struct.devlink_param** %13, align 8
  %34 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %33, i32 1
  store %struct.devlink_param* %34, %struct.devlink_param** %13, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.devlink*, %struct.devlink** %7, align 8
  %37 = getelementptr inbounds %struct.devlink, %struct.devlink* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_param_unregister_one(%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
