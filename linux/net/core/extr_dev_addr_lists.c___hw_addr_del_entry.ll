; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c___hw_addr_del_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c___hw_addr_del_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_hw_addr_list = type { i32 }
%struct.netdev_hw_addr = type { i32, i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdev_hw_addr_list*, %struct.netdev_hw_addr*, i32, i32)* @__hw_addr_del_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_addr_del_entry(%struct.netdev_hw_addr_list* %0, %struct.netdev_hw_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_hw_addr_list*, align 8
  %7 = alloca %struct.netdev_hw_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netdev_hw_addr_list* %0, %struct.netdev_hw_addr_list** %6, align 8
  store %struct.netdev_hw_addr* %1, %struct.netdev_hw_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %14 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %12, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %25 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %63

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %36 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %42 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %47 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %63

52:                                               ; preds = %45
  %53 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %54 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %53, i32 0, i32 1
  %55 = call i32 @list_del_rcu(i32* %54)
  %56 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %7, align 8
  %57 = load i32, i32* @rcu_head, align 4
  %58 = call i32 @kfree_rcu(%struct.netdev_hw_addr* %56, i32 %57)
  %59 = load %struct.netdev_hw_addr_list*, %struct.netdev_hw_addr_list** %6, align 8
  %60 = getelementptr inbounds %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %52, %51, %28, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.netdev_hw_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
