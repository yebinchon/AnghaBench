; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_iprange_mtinfo* }
%struct.xt_iprange_mtinfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@IPRANGE_SRC = common dso_local global i32 0, align 4
@IPRANGE_SRC_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"src IP %pI6 NOT in range %s%pI6-%pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(INV) \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IPRANGE_DST = common dso_local global i32 0, align 4
@IPRANGE_DST_INV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"dst IP %pI6 NOT in range %s%pI6-%pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @iprange_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iprange_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_iprange_mtinfo*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %10, align 8
  store %struct.xt_iprange_mtinfo* %11, %struct.xt_iprange_mtinfo** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %12)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %7, align 8
  %14 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %15 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPRANGE_SRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %2
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 1
  %23 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %24 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @iprange_ipv6_lt(i32* %22, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %28 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %31 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %30, i32 0, i32 1
  %32 = call i32 @iprange_ipv6_lt(i32* %29, i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %36 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPRANGE_SRC_INV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %8, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %20
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 1
  %51 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %52 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IPRANGE_SRC_INV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %60 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %63 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %50, i8* %58, i32* %61, i32* %64)
  store i32 0, i32* %3, align 4
  br label %122

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %69 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IPRANGE_DST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %67
  %75 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %76 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %75, i32 0, i32 0
  %77 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %78 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @iprange_ipv6_lt(i32* %76, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %82 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %85 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %84, i32 0, i32 0
  %86 = call i32 @iprange_ipv6_lt(i32* %83, i32* %85)
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %90 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IPRANGE_DST_INV, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %74
  %103 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %104 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %103, i32 0, i32 0
  %105 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %106 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IPRANGE_DST_INV, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %113 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %114 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %117 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %104, i8* %112, i32* %115, i32* %118)
  store i32 0, i32* %3, align 4
  br label %122

120:                                              ; preds = %74
  br label %121

121:                                              ; preds = %120, %67
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %102, %48
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @iprange_ipv6_lt(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
