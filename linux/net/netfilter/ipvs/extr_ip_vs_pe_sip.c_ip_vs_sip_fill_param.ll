; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_fill_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_fill_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn_param = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i8* }
%struct.ip_vs_iphdr = type { i64, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* @ip_vs_sip_fill_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_sip_fill_param(%struct.ip_vs_conn_param* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_conn_param*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_iphdr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @ip_vs_fill_iph_skb(i32 %15, %struct.sk_buff* %16, i32 0, %struct.ip_vs_iphdr* %6)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPPROTO_UDP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %89

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_linearize(%struct.sk_buff* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %89

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @get_callid(i8* %61, i32 0, i32 %62, i32* %9, i32* %10)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %49
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i32 @kmemdup(i8* %72, i32 %73, i32 %74)
  %76 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %77 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %79 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %89

85:                                               ; preds = %68
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %88 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %82, %65, %47, %39, %25
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ip_vs_fill_iph_skb(i32, %struct.sk_buff*, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @get_callid(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
