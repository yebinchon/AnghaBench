; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_occ_get_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_occ_get_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_resource = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_resource_occ_get_unregister(%struct.devlink* %0, i32 %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_resource*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.devlink*, %struct.devlink** %3, align 8
  %7 = getelementptr inbounds %struct.devlink, %struct.devlink* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.devlink*, %struct.devlink** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %9, i32* null, i32 %10)
  store %struct.devlink_resource* %11, %struct.devlink_resource** %5, align 8
  %12 = load %struct.devlink_resource*, %struct.devlink_resource** %5, align 8
  %13 = icmp ne %struct.devlink_resource* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.devlink_resource*, %struct.devlink_resource** %5, align 8
  %21 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = load %struct.devlink_resource*, %struct.devlink_resource** %5, align 8
  %28 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.devlink_resource*, %struct.devlink_resource** %5, align 8
  %30 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %19, %18
  %32 = load %struct.devlink*, %struct.devlink** %3, align 8
  %33 = getelementptr inbounds %struct.devlink, %struct.devlink* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink_resource* @devlink_resource_find(%struct.devlink*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
