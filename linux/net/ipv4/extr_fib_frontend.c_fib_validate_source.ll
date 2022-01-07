; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_validate_source.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_validate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in_device = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_validate_source(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.net_device* %5, %struct.in_device* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.in_device*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.net_device* %5, %struct.net_device** %15, align 8
  store %struct.in_device* %6, %struct.in_device** %16, align 8
  store i64* %7, i64** %17, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = call i64 @secpath_exists(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  br label %27

24:                                               ; preds = %8
  %25 = load %struct.in_device*, %struct.in_device** %16, align 8
  %26 = call i32 @IN_DEV_RPFILTER(%struct.in_device* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  store i32 %28, i32* %18, align 4
  %29 = load %struct.net_device*, %struct.net_device** %15, align 8
  %30 = call %struct.net* @dev_net(%struct.net_device* %29)
  store %struct.net* %30, %struct.net** %19, align 8
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %27
  %34 = load %struct.net*, %struct.net** %19, align 8
  %35 = call i32 @fib_num_tclassid_users(%struct.net* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %15, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.in_device*, %struct.in_device** %16, align 8
  %45 = call i32 @IN_DEV_TX_REDIRECTS(%struct.in_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.in_device*, %struct.in_device** %16, align 8
  %49 = call i64 @IN_DEV_ACCEPT_LOCAL(%struct.in_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %72

52:                                               ; preds = %47
  %53 = load %struct.net*, %struct.net** %19, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.net*, %struct.net** %19, align 8
  %60 = call i64 @fib4_has_custom_rules(%struct.net* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %52
  br label %75

63:                                               ; preds = %58
  %64 = load %struct.net*, %struct.net** %19, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @inet_lookup_ifaddr_rcu(%struct.net* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %86

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i64*, i64** %17, align 8
  store i64 0, i64* %73, align 8
  store i32 0, i32* %9, align 4
  br label %86

74:                                               ; preds = %43, %33, %27
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.net_device*, %struct.net_device** %15, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.in_device*, %struct.in_device** %16, align 8
  %84 = load i64*, i64** %17, align 8
  %85 = call i32 @__fib_validate_source(%struct.sk_buff* %76, i32 %77, i32 %78, i32 %79, i32 %80, %struct.net_device* %81, i32 %82, %struct.in_device* %83, i64* %84)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %75, %72, %68
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i64 @secpath_exists(%struct.sk_buff*) #1

declare dso_local i32 @IN_DEV_RPFILTER(%struct.in_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @fib_num_tclassid_users(%struct.net*) #1

declare dso_local i32 @IN_DEV_TX_REDIRECTS(%struct.in_device*) #1

declare dso_local i64 @IN_DEV_ACCEPT_LOCAL(%struct.in_device*) #1

declare dso_local i64 @fib4_has_custom_rules(%struct.net*) #1

declare dso_local i64 @inet_lookup_ifaddr_rcu(%struct.net*, i32) #1

declare dso_local i32 @__fib_validate_source(%struct.sk_buff*, i32, i32, i32, i32, %struct.net_device*, i32, %struct.in_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
