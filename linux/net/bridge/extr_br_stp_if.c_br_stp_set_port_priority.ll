; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_port_priority.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_port_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.TYPE_2__*, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BR_MAX_PORT_PRIORITY = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_stp_set_port_priority(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @BR_MAX_PORT_PRIORITY, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ERANGE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %16 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @br_make_port_id(i64 %14, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %20 = call i64 @br_is_designated_port(%struct.net_bridge_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %38 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %37, i32 0, i32 4
  %39 = call i32 @memcmp(i32* %36, i32* %38, i32 8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %26
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %43 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ult i8* %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %51 = call i32 @br_become_designated_port(%struct.net_bridge_port* %50)
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @br_port_state_selection(%struct.TYPE_2__* %54)
  br label %56

56:                                               ; preds = %49, %41, %26
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @br_make_port_id(i64, i32) #1

declare dso_local i64 @br_is_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @br_become_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_port_state_selection(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
