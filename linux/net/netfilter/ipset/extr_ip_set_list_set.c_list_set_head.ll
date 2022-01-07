; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, i64, i64, i32, %struct.list_set* }
%struct.list_set = type { i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_SIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_REFERENCES = common dso_local global i32 0, align 4
@IPSET_ATTR_MEMSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_ELEMENTS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*)* @list_set_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_head(%struct.ip_set* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.list_set*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %10 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %9, i32 0, i32 4
  %11 = load %struct.list_set*, %struct.list_set** %10, align 8
  store %struct.list_set* %11, %struct.list_set** %6, align 8
  %12 = load %struct.list_set*, %struct.list_set** %6, align 8
  %13 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %14 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @list_set_memsize(%struct.list_set* %12, i32 %15)
  %17 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %18 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %23 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %7, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %73

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @IPSET_ATTR_SIZE, align 4
  %30 = load %struct.list_set*, %struct.list_set** %6, align 8
  %31 = getelementptr inbounds %struct.list_set, %struct.list_set* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @htonl(i64 %32)
  %34 = call i64 @nla_put_net32(%struct.sk_buff* %28, i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @IPSET_ATTR_REFERENCES, align 4
  %39 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %40 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @htonl(i64 %41)
  %43 = call i64 @nla_put_net32(%struct.sk_buff* %37, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* @IPSET_ATTR_MEMSIZE, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @htonl(i64 %48)
  %50 = call i64 @nla_put_net32(%struct.sk_buff* %46, i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @IPSET_ATTR_ELEMENTS, align 4
  %55 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %56 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @htonl(i64 %57)
  %59 = call i64 @nla_put_net32(%struct.sk_buff* %53, i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52, %45, %36, %27
  br label %73

62:                                               ; preds = %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %65 = call i32 @ip_set_put_flags(%struct.sk_buff* %63, %struct.ip_set* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %73

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %72 = call i32 @nla_nest_end(%struct.sk_buff* %70, %struct.nlattr* %71)
  store i32 0, i32* %3, align 4
  br label %76

73:                                               ; preds = %68, %61, %26
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @list_set_memsize(%struct.list_set*, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_net32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_put_flags(%struct.sk_buff*, %struct.ip_set*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
