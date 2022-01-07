; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dnet_select_source.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dnet_select_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_dev = type { i32 }
%struct.dn_ifaddr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @dnet_select_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_select_source(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_dev*, align 8
  %9 = alloca %struct.dn_ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @rcu_dereference(i32 %15)
  %17 = bitcast i8* %16 to %struct.dn_dev*
  store %struct.dn_dev* %17, %struct.dn_dev** %8, align 8
  %18 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %19 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @rcu_dereference(i32 %20)
  %22 = bitcast i8* %21 to %struct.dn_ifaddr*
  store %struct.dn_ifaddr* %22, %struct.dn_ifaddr** %9, align 8
  br label %23

23:                                               ; preds = %61, %3
  %24 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %25 = icmp ne %struct.dn_ifaddr* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %28 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %61

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %38 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %67

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %43 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dn_match_addr(i32 %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %51 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %58 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %63 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @rcu_dereference(i32 %64)
  %66 = bitcast i8* %65 to %struct.dn_ifaddr*
  store %struct.dn_ifaddr* %66, %struct.dn_ifaddr** %9, align 8
  br label %23

67:                                               ; preds = %36, %23
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @dn_match_addr(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
