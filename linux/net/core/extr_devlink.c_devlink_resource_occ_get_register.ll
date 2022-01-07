; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_occ_get_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_occ_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_resource = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_resource_occ_get_register(%struct.devlink* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.devlink_resource*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.devlink*, %struct.devlink** %5, align 8
  %11 = getelementptr inbounds %struct.devlink, %struct.devlink* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.devlink*, %struct.devlink** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %13, i32* null, i32 %14)
  store %struct.devlink_resource* %15, %struct.devlink_resource** %9, align 8
  %16 = load %struct.devlink_resource*, %struct.devlink_resource** %9, align 8
  %17 = icmp ne %struct.devlink_resource* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.devlink_resource*, %struct.devlink_resource** %9, align 8
  %25 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = load %struct.devlink_resource*, %struct.devlink_resource** %9, align 8
  %31 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.devlink_resource*, %struct.devlink_resource** %9, align 8
  %34 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %23, %22
  %36 = load %struct.devlink*, %struct.devlink** %5, align 8
  %37 = getelementptr inbounds %struct.devlink, %struct.devlink* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
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
