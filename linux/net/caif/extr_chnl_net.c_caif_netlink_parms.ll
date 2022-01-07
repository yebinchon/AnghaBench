; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_caif_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_caif_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.caif_connect_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"no params data found\0A\00", align 1
@IFLA_CAIF_IPV4_CONNID = common dso_local global i64 0, align 8
@IFLA_CAIF_IPV6_CONNID = common dso_local global i64 0, align 8
@IFLA_CAIF_LOOPBACK = common dso_local global i64 0, align 8
@CAIFPROTO_DATAGRAM_LOOP = common dso_local global i32 0, align 4
@CAIFPROTO_DATAGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.caif_connect_request*)* @caif_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caif_netlink_parms(%struct.nlattr** %0, %struct.caif_connect_request* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.caif_connect_request*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.caif_connect_request* %1, %struct.caif_connect_request** %4, align 8
  %5 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %6 = icmp ne %struct.nlattr** %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %65

9:                                                ; preds = %2
  %10 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %11 = load i64, i64* @IFLA_CAIF_IPV4_CONNID, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %17 = load i64, i64* @IFLA_CAIF_IPV4_CONNID, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = call i8* @nla_get_u32(%struct.nlattr* %19)
  %21 = load %struct.caif_connect_request*, %struct.caif_connect_request** %4, align 8
  %22 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %20, i8** %25, align 8
  br label %26

26:                                               ; preds = %15, %9
  %27 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %28 = load i64, i64* @IFLA_CAIF_IPV6_CONNID, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %34 = load i64, i64* @IFLA_CAIF_IPV6_CONNID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i8* @nla_get_u32(%struct.nlattr* %36)
  %38 = load %struct.caif_connect_request*, %struct.caif_connect_request** %4, align 8
  %39 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  br label %43

43:                                               ; preds = %32, %26
  %44 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %45 = load i64, i64* @IFLA_CAIF_LOOPBACK, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %51 = load i64, i64* @IFLA_CAIF_LOOPBACK, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i64 @nla_get_u8(%struct.nlattr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @CAIFPROTO_DATAGRAM_LOOP, align 4
  %58 = load %struct.caif_connect_request*, %struct.caif_connect_request** %4, align 8
  %59 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @CAIFPROTO_DATAGRAM, align 4
  %62 = load %struct.caif_connect_request*, %struct.caif_connect_request** %4, align 8
  %63 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %7, %64, %43
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
