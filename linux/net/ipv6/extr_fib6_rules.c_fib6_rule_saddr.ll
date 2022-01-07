; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_rule = type { i32 }
%struct.flowi6 = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.fib6_rule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@FIB_RULE_FIND_SADDR = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib_rule*, i32, %struct.flowi6*, %struct.net_device*)* @fib6_rule_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_saddr(%struct.net* %0, %struct.fib_rule* %1, i32 %2, %struct.flowi6* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib_rule*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi6*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.fib6_rule*, align 8
  %13 = alloca %struct.in6_addr, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib_rule* %1, %struct.fib_rule** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.flowi6* %3, %struct.flowi6** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %14 = load %struct.fib_rule*, %struct.fib_rule** %8, align 8
  %15 = bitcast %struct.fib_rule* %14 to %struct.fib6_rule*
  store %struct.fib6_rule* %15, %struct.fib6_rule** %12, align 8
  %16 = load %struct.fib_rule*, %struct.fib_rule** %8, align 8
  %17 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FIB_RULE_FIND_SADDR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %5
  %23 = load %struct.fib6_rule*, %struct.fib6_rule** %12, align 8
  %24 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %28
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %37 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %36, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rt6_flags2srcprefs(i32 %38)
  %40 = call i64 @ipv6_dev_get_saddr(%struct.net* %34, %struct.net_device* %35, i32* %37, i32 %39, %struct.in6_addr* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.fib6_rule*, %struct.fib6_rule** %12, align 8
  %47 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.fib6_rule*, %struct.fib6_rule** %12, align 8
  %50 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %13, i32* %48, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %60 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %59, i32 0, i32 0
  %61 = bitcast %struct.in6_addr* %60 to i8*
  %62 = bitcast %struct.in6_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  br label %63

63:                                               ; preds = %58, %28, %22, %5
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %55, %42
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @ipv6_dev_get_saddr(%struct.net*, %struct.net_device*, i32*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rt6_flags2srcprefs(i32) #1

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
