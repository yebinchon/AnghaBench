; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_mt4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_mt4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_iprange_mtinfo* }
%struct.xt_iprange_mtinfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i32, i32 }

@IPRANGE_SRC = common dso_local global i32 0, align 4
@IPRANGE_SRC_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"src IP %pI4 NOT in range %s%pI4-%pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(INV) \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IPRANGE_DST = common dso_local global i32 0, align 4
@IPRANGE_DST_INV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"dst IP %pI4 NOT in range %s%pI4-%pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @iprange_mt4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iprange_mt4(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_iprange_mtinfo*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %10, align 8
  store %struct.xt_iprange_mtinfo* %11, %struct.xt_iprange_mtinfo** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %12)
  store %struct.iphdr* %13, %struct.iphdr** %7, align 8
  %14 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %15 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPRANGE_SRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %2
  %21 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  %25 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %26 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohl(i32 %28)
  %30 = icmp slt i64 %24, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohl(i32 %34)
  %36 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %37 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ntohl(i32 %39)
  %41 = icmp sgt i64 %35, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %46 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IPRANGE_SRC_INV, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %20
  %59 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 1
  %61 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %62 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IPRANGE_SRC_INV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %70 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %73 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %60, i8* %68, i32* %71, i32* %74)
  store i32 0, i32* %3, align 4
  br label %142

76:                                               ; preds = %20
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %79 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IPRANGE_DST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %141

84:                                               ; preds = %77
  %85 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohl(i32 %87)
  %89 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %90 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ntohl(i32 %92)
  %94 = icmp slt i64 %88, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %8, align 4
  %96 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %97 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ntohl(i32 %98)
  %100 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %101 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ntohl(i32 %103)
  %105 = icmp sgt i64 %99, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %110 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IPRANGE_DST_INV, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %8, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %84
  %123 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 0
  %125 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %126 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IPRANGE_DST_INV, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %133 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %134 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.xt_iprange_mtinfo*, %struct.xt_iprange_mtinfo** %6, align 8
  %137 = getelementptr inbounds %struct.xt_iprange_mtinfo, %struct.xt_iprange_mtinfo* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %124, i8* %132, i32* %135, i32* %138)
  store i32 0, i32* %3, align 4
  br label %142

140:                                              ; preds = %84
  br label %141

141:                                              ; preds = %140, %77
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %122, %58
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @pr_debug(i8*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
