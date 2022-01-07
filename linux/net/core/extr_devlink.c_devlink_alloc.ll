; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.devlink_ops* }
%struct.devlink_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devlink* @devlink_alloc(%struct.devlink_ops* %0, i64 %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.devlink_ops*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.devlink*, align 8
  store %struct.devlink_ops* %0, %struct.devlink_ops** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.devlink_ops*, %struct.devlink_ops** %4, align 8
  %8 = icmp ne %struct.devlink_ops* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.devlink* null, %struct.devlink** %3, align 8
  br label %63

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = add i64 56, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.devlink* @kzalloc(i32 %17, i32 %18)
  store %struct.devlink* %19, %struct.devlink** %6, align 8
  %20 = load %struct.devlink*, %struct.devlink** %6, align 8
  %21 = icmp ne %struct.devlink* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store %struct.devlink* null, %struct.devlink** %3, align 8
  br label %63

23:                                               ; preds = %14
  %24 = load %struct.devlink_ops*, %struct.devlink_ops** %4, align 8
  %25 = load %struct.devlink*, %struct.devlink** %6, align 8
  %26 = getelementptr inbounds %struct.devlink, %struct.devlink* %25, i32 0, i32 11
  store %struct.devlink_ops* %24, %struct.devlink_ops** %26, align 8
  %27 = load %struct.devlink*, %struct.devlink** %6, align 8
  %28 = call i32 @devlink_net_set(%struct.devlink* %27, i32* @init_net)
  %29 = load %struct.devlink*, %struct.devlink** %6, align 8
  %30 = getelementptr inbounds %struct.devlink, %struct.devlink* %29, i32 0, i32 10
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.devlink*, %struct.devlink** %6, align 8
  %33 = getelementptr inbounds %struct.devlink, %struct.devlink* %32, i32 0, i32 9
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.devlink*, %struct.devlink** %6, align 8
  %36 = getelementptr inbounds %struct.devlink, %struct.devlink* %35, i32 0, i32 8
  %37 = call i32 @INIT_LIST_HEAD_RCU(i32* %36)
  %38 = load %struct.devlink*, %struct.devlink** %6, align 8
  %39 = getelementptr inbounds %struct.devlink, %struct.devlink* %38, i32 0, i32 7
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.devlink*, %struct.devlink** %6, align 8
  %42 = getelementptr inbounds %struct.devlink, %struct.devlink* %41, i32 0, i32 6
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.devlink*, %struct.devlink** %6, align 8
  %45 = getelementptr inbounds %struct.devlink, %struct.devlink* %44, i32 0, i32 5
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.devlink*, %struct.devlink** %6, align 8
  %48 = getelementptr inbounds %struct.devlink, %struct.devlink* %47, i32 0, i32 4
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.devlink*, %struct.devlink** %6, align 8
  %51 = getelementptr inbounds %struct.devlink, %struct.devlink* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.devlink*, %struct.devlink** %6, align 8
  %54 = getelementptr inbounds %struct.devlink, %struct.devlink* %53, i32 0, i32 2
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.devlink*, %struct.devlink** %6, align 8
  %57 = getelementptr inbounds %struct.devlink, %struct.devlink* %56, i32 0, i32 1
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.devlink*, %struct.devlink** %6, align 8
  %60 = getelementptr inbounds %struct.devlink, %struct.devlink* %59, i32 0, i32 0
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.devlink*, %struct.devlink** %6, align 8
  store %struct.devlink* %62, %struct.devlink** %3, align 8
  br label %63

63:                                               ; preds = %23, %22, %13
  %64 = load %struct.devlink*, %struct.devlink** %3, align 8
  ret %struct.devlink* %64
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.devlink* @kzalloc(i32, i32) #1

declare dso_local i32 @devlink_net_set(%struct.devlink*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
