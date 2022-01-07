; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i32*, i32, %struct.devlink_port }
%struct.devlink_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_port*)* @dsa_port_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_port_teardown(%struct.dsa_port* %0) #0 {
  %2 = alloca %struct.dsa_port*, align 8
  %3 = alloca %struct.devlink_port*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %2, align 8
  %4 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %5 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %4, i32 0, i32 3
  store %struct.devlink_port* %5, %struct.devlink_port** %3, align 8
  %6 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %7 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %43 [
    i32 129, label %9
    i32 131, label %10
    i32 130, label %21
    i32 128, label %28
  ]

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %12 = call i32 @dsa_port_disable(%struct.dsa_port* %11)
  %13 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dsa_tag_driver_put(i32 %15)
  %17 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %18 = call i32 @devlink_port_unregister(%struct.devlink_port* %17)
  %19 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %20 = call i32 @dsa_port_link_unregister_of(%struct.dsa_port* %19)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %23 = call i32 @dsa_port_disable(%struct.dsa_port* %22)
  %24 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %25 = call i32 @devlink_port_unregister(%struct.devlink_port* %24)
  %26 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %27 = call i32 @dsa_port_link_unregister_of(%struct.dsa_port* %26)
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %30 = call i32 @devlink_port_unregister(%struct.devlink_port* %29)
  %31 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %37 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dsa_slave_destroy(i32* %38)
  %40 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %41 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %1, %42, %21, %10, %9
  ret void
}

declare dso_local i32 @dsa_port_disable(%struct.dsa_port*) #1

declare dso_local i32 @dsa_tag_driver_put(i32) #1

declare dso_local i32 @devlink_port_unregister(%struct.devlink_port*) #1

declare dso_local i32 @dsa_port_link_unregister_of(%struct.dsa_port*) #1

declare dso_local i32 @dsa_slave_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
