; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_extract_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_extract_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_addr* (%struct.nlattr*, %struct.nlattr*, %struct.in6_addr**)* @extract_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_addr* @extract_addr(%struct.nlattr* %0, %struct.nlattr* %1, %struct.in6_addr** %2) #0 {
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.in6_addr**, align 8
  %7 = alloca %struct.in6_addr*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.in6_addr** %2, %struct.in6_addr*** %6, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  %8 = load %struct.in6_addr**, %struct.in6_addr*** %6, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %8, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %13 = call %struct.in6_addr* @nla_data(%struct.nlattr* %12)
  store %struct.in6_addr* %13, %struct.in6_addr** %7, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %19 = icmp ne %struct.in6_addr* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %22 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %23 = call i64 @nla_memcmp(%struct.nlattr* %21, %struct.in6_addr* %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %27 = load %struct.in6_addr**, %struct.in6_addr*** %6, align 8
  store %struct.in6_addr* %26, %struct.in6_addr** %27, align 8
  br label %28

28:                                               ; preds = %25, %20, %17
  %29 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %30 = call %struct.in6_addr* @nla_data(%struct.nlattr* %29)
  store %struct.in6_addr* %30, %struct.in6_addr** %7, align 8
  br label %31

31:                                               ; preds = %28, %14
  %32 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  ret %struct.in6_addr* %32
}

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_memcmp(%struct.nlattr*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
