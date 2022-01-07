; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_attrs_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_attrs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.devlink_port_attrs }
%struct.devlink_port_attrs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_port_attrs_set(%struct.devlink_port* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.devlink_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.devlink_port_attrs*, align 8
  %16 = alloca i32, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8 %6, i8* %14, align 1
  %17 = load %struct.devlink_port*, %struct.devlink_port** %8, align 8
  %18 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %17, i32 0, i32 0
  store %struct.devlink_port_attrs* %18, %struct.devlink_port_attrs** %15, align 8
  %19 = load %struct.devlink_port*, %struct.devlink_port** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i8, i8* %14, align 1
  %23 = call i32 @__devlink_port_attrs_set(%struct.devlink_port* %19, i32 %20, i8* %21, i8 zeroext %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %39

27:                                               ; preds = %7
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %15, align 8
  %30 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %15, align 8
  %33 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %15, align 8
  %37 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  br label %39

39:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @__devlink_port_attrs_set(%struct.devlink_port*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
