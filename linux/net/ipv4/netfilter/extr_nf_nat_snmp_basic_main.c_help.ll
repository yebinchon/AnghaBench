; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_snmp_basic_main.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_snmp_basic_main.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.iphdr = type { i32 }
%struct.udphdr = type { i64, i64, i32 }

@SNMP_PORT = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@SNMP_TRAP_PORT = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dropping malformed packet\0A\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@snmp_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @CTINFO2DIR(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %12, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %19 = bitcast %struct.iphdr* %18 to i32*
  %20 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = bitcast i32* %24 to %struct.udphdr*
  store %struct.udphdr* %25, %struct.udphdr** %13, align 8
  %26 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %27 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @SNMP_PORT, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %37, i32* %5, align 4
  br label %99

38:                                               ; preds = %32, %4
  %39 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %40 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SNMP_TRAP_PORT, align 4
  %43 = call i64 @htons(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %50, i32* %5, align 4
  br label %99

51:                                               ; preds = %45, %38
  %52 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %53 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IPS_NAT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %59, i32* %5, align 4
  br label %99

60:                                               ; preds = %51
  %61 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %62 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ntohs(i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 2
  %72 = sub nsw i32 %67, %71
  %73 = icmp ne i32 %64, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %77 = call i32 @nf_ct_helper_log(%struct.sk_buff* %75, %struct.nf_conn* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @NF_DROP, align 4
  store i32 %78, i32* %5, align 4
  br label %99

79:                                               ; preds = %60
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @skb_ensure_writable(%struct.sk_buff* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %89 = call i32 @nf_ct_helper_log(%struct.sk_buff* %87, %struct.nf_conn* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @NF_DROP, align 4
  store i32 %90, i32* %5, align 4
  br label %99

91:                                               ; preds = %79
  %92 = call i32 @spin_lock_bh(i32* @snmp_lock)
  %93 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @snmp_translate(%struct.nf_conn* %93, i32 %94, %struct.sk_buff* %95)
  store i32 %96, i32* %11, align 4
  %97 = call i32 @spin_unlock_bh(i32* @snmp_lock)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %91, %86, %74, %58, %49, %36
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @snmp_translate(%struct.nf_conn*, i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
