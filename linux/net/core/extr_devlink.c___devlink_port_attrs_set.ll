; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_port_attrs_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_port_attrs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32, %struct.devlink_port_attrs }
%struct.devlink_port_attrs = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32 }

@EEXIST = common dso_local global i32 0, align 4
@MAX_PHYS_ITEM_ID_LEN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i8*, i8)* @__devlink_port_attrs_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_port_attrs_set(%struct.devlink_port* %0, i32 %1, i8* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.devlink_port_attrs*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %11 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %12 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %11, i32 0, i32 1
  store %struct.devlink_port_attrs* %12, %struct.devlink_port_attrs** %10, align 8
  %13 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %23 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %26 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %31 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @MAX_PHYS_ITEM_ID_LEN, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sgt i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i8, i8* @MAX_PHYS_ITEM_ID_LEN, align 1
  store i8 %41, i8* %9, align 1
  br label %42

42:                                               ; preds = %40, %29
  %43 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %44 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %9, align 1
  %49 = call i32 @memcpy(i32 %46, i8* %47, i8 zeroext %48)
  %50 = load i8, i8* %9, align 1
  %51 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %52 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8 %50, i8* %53, align 4
  br label %57

54:                                               ; preds = %21
  %55 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %10, align 8
  %56 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %42
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
