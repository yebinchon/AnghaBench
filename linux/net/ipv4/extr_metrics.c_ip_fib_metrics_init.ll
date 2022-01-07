; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_metrics.c_ip_fib_metrics_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_metrics.c_ip_fib_metrics_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_metrics = type { i32, i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@dst_default_metrics = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_metrics* @ip_fib_metrics_init(%struct.net* %0, %struct.nlattr* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.dst_metrics*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.dst_metrics*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.dst_metrics* bitcast (i32* @dst_default_metrics to %struct.dst_metrics*), %struct.dst_metrics** %5, align 8
  br label %50

15:                                               ; preds = %4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dst_metrics* @kzalloc(i32 8, i32 %16)
  store %struct.dst_metrics* %17, %struct.dst_metrics** %10, align 8
  %18 = load %struct.dst_metrics*, %struct.dst_metrics** %10, align 8
  %19 = icmp ne %struct.dst_metrics* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dst_metrics* @ERR_PTR(i32 %26)
  store %struct.dst_metrics* %27, %struct.dst_metrics** %5, align 8
  br label %50

28:                                               ; preds = %15
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.dst_metrics*, %struct.dst_metrics** %10, align 8
  %33 = getelementptr inbounds %struct.dst_metrics, %struct.dst_metrics* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %36 = call i32 @ip_metrics_convert(%struct.net* %29, %struct.nlattr* %30, i32 %31, i32 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load %struct.dst_metrics*, %struct.dst_metrics** %10, align 8
  %41 = getelementptr inbounds %struct.dst_metrics, %struct.dst_metrics* %40, i32 0, i32 0
  %42 = call i32 @refcount_set(i32* %41, i32 1)
  br label %48

43:                                               ; preds = %28
  %44 = load %struct.dst_metrics*, %struct.dst_metrics** %10, align 8
  %45 = call i32 @kfree(%struct.dst_metrics* %44)
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.dst_metrics* @ERR_PTR(i32 %46)
  store %struct.dst_metrics* %47, %struct.dst_metrics** %10, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.dst_metrics*, %struct.dst_metrics** %10, align 8
  store %struct.dst_metrics* %49, %struct.dst_metrics** %5, align 8
  br label %50

50:                                               ; preds = %48, %24, %14
  %51 = load %struct.dst_metrics*, %struct.dst_metrics** %5, align 8
  ret %struct.dst_metrics* %51
}

declare dso_local %struct.dst_metrics* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dst_metrics* @ERR_PTR(i32) #1

declare dso_local i32 @ip_metrics_convert(%struct.net*, %struct.nlattr*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dst_metrics*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
