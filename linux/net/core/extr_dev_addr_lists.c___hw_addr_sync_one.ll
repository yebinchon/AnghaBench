; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c___hw_addr_sync_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c___hw_addr_sync_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_hw_addr_list = type { i32 }
%struct.netdev_hw_addr = type { i32, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdev_hw_addr_list*, %struct.netdev_hw_addr*, i32)* @__hw_addr_sync_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_addr_sync_one(%struct.netdev_hw_addr_list* %0, %struct.netdev_hw_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_hw_addr_list*, align 8
  %6 = alloca %struct.netdev_hw_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netdev_hw_addr_list* %0, %struct.netdev_hw_addr_list** %5, align 8
  store %struct.netdev_hw_addr* %1, %struct.netdev_hw_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.netdev_hw_addr_list*, %struct.netdev_hw_addr_list** %5, align 8
  %10 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %6, align 8
  %11 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %6, align 8
  %15 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %6, align 8
  %18 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__hw_addr_add_ex(%struct.netdev_hw_addr_list* %9, i32 %12, i32 %13, i32 %16, i32 0, i32 1, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %23, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %6, align 8
  %35 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %6, align 8
  %39 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %33, %30
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @__hw_addr_add_ex(%struct.netdev_hw_addr_list*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
