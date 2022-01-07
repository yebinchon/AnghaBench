; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_configure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fib6_rule = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@RT6_TABLE_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid table\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @fib6_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.fib_rule_hdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.fib6_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %21 = bitcast %struct.fib_rule* %20 to %struct.fib6_rule*
  store %struct.fib6_rule* %21, %struct.fib6_rule** %13, align 8
  %22 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %23 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %5
  %28 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %29 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %34 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RT6_TABLE_UNSPEC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %111

41:                                               ; preds = %32
  %42 = load %struct.net*, %struct.net** %12, align 8
  %43 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %44 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @fib6_new_table(%struct.net* %42, i32 %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %111

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %27, %5
  %53 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %54 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %59 = load i64, i64* @FRA_SRC, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i8* @nla_get_in6_addr(%struct.nlattr* %61)
  %63 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %64 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %73 = load i64, i64* @FRA_DST, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i8* @nla_get_in6_addr(%struct.nlattr* %75)
  %77 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %78 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %71, %66
  %81 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %85 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %88 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %91 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %97 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %99 = call i64 @fib_rule_requires_fldissect(%struct.fib_rule* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %80
  %102 = load %struct.net*, %struct.net** %12, align 8
  %103 = getelementptr inbounds %struct.net, %struct.net* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %80
  %108 = load %struct.net*, %struct.net** %12, align 8
  %109 = getelementptr inbounds %struct.net, %struct.net* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %107, %48, %38
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32* @fib6_new_table(%struct.net*, i32) #1

declare dso_local i8* @nla_get_in6_addr(%struct.nlattr*) #1

declare dso_local i64 @fib_rule_requires_fldissect(%struct.fib_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
