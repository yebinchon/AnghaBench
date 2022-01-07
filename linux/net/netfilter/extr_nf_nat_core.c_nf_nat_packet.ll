; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64 }
%struct.sk_buff = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IPS_SRC_NAT = common dso_local global i64 0, align 8
@IPS_DST_NAT = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_packet(%struct.nf_conn* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @HOOK2MANIP(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @CTINFO2DIR(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @IPS_SRC_NAT, align 8
  store i64 %22, i64* %12, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @IPS_DST_NAT, align 8
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* @IPS_NAT_MASK, align 8
  %31 = load i64, i64* %12, align 8
  %32 = xor i64 %31, %30
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @nf_nat_manip_pkt(%struct.sk_buff* %41, %struct.nf_conn* %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i32 @HOOK2MANIP(i32) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @nf_nat_manip_pkt(%struct.sk_buff*, %struct.nf_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
