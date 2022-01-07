; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_encap_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_encap_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.fib_nh = type { i32 }
%struct.fib_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.lwtunnel_state = type { i32 }

@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.nlattr*, %struct.fib_nh*, %struct.fib_config*, %struct.netlink_ext_ack*)* @fib_encap_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_encap_match(i64 %0, %struct.nlattr* %1, %struct.fib_nh* %2, %struct.fib_config* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.fib_nh*, align 8
  %10 = alloca %struct.fib_config*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.lwtunnel_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.fib_nh* %2, %struct.fib_nh** %9, align 8
  store %struct.fib_config* %3, %struct.fib_config** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %38

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load %struct.fib_config*, %struct.fib_config** %10, align 8
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %25 = call i32 @lwtunnel_build_state(i64 %20, %struct.nlattr* %21, i32 %22, %struct.fib_config* %23, %struct.lwtunnel_state** %12, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %12, align 8
  %30 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %31 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lwtunnel_cmp_encap(%struct.lwtunnel_state* %29, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %12, align 8
  %35 = call i32 @lwtstate_free(%struct.lwtunnel_state* %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @lwtunnel_build_state(i64, %struct.nlattr*, i32, %struct.fib_config*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @lwtunnel_cmp_encap(%struct.lwtunnel_state*, i32) #1

declare dso_local i32 @lwtstate_free(%struct.lwtunnel_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
