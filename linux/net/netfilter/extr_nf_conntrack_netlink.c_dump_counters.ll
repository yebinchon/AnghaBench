; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_dump_counters.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_dump_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn_acct = type { %struct.nf_conn_counter* }
%struct.nf_conn_counter = type { i32, i32 }
%struct.nlattr = type { i32 }

@CTA_COUNTERS_REPLY = common dso_local global i32 0, align 4
@CTA_COUNTERS_ORIG = common dso_local global i32 0, align 4
@IPCTNL_MSG_CT_GET_CTRZERO = common dso_local global i32 0, align 4
@CTA_COUNTERS_PACKETS = common dso_local global i32 0, align 4
@CTA_COUNTERS_PAD = common dso_local global i32 0, align 4
@CTA_COUNTERS_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn_acct*, i32, i32)* @dump_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_counters(%struct.sk_buff* %0, %struct.nf_conn_acct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_conn_acct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn_counter*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nf_conn_acct* %1, %struct.nf_conn_acct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @CTA_COUNTERS_REPLY, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CTA_COUNTERS_ORIG, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conn_acct, %struct.nf_conn_acct* %23, i32 0, i32 0
  %25 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %24, align 8
  store %struct.nf_conn_counter* %25, %struct.nf_conn_counter** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @IPCTNL_MSG_CT_GET_CTRZERO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %30, i64 %32
  %34 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %33, i32 0, i32 1
  %35 = call i32 @atomic64_xchg(i32* %34, i32 0)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %36, i64 %38
  %40 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %39, i32 0, i32 0
  %41 = call i32 @atomic64_xchg(i32* %40, i32 0)
  store i32 %41, i32* %14, align 4
  br label %55

42:                                               ; preds = %21
  %43 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %43, i64 %45
  %47 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %46, i32 0, i32 1
  %48 = call i32 @atomic64_read(i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %49, i64 %51
  %53 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %52, i32 0, i32 0
  %54 = call i32 @atomic64_read(i32* %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %42, %29
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %56, i32 %57)
  store %struct.nlattr* %58, %struct.nlattr** %12, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %83

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32, i32* @CTA_COUNTERS_PACKETS, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cpu_to_be64(i32 %65)
  %67 = load i32, i32* @CTA_COUNTERS_PAD, align 4
  %68 = call i64 @nla_put_be64(%struct.sk_buff* %63, i32 %64, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i32, i32* @CTA_COUNTERS_BYTES, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @cpu_to_be64(i32 %73)
  %75 = load i32, i32* @CTA_COUNTERS_PAD, align 4
  %76 = call i64 @nla_put_be64(%struct.sk_buff* %71, i32 %72, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %62
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %82 = call i32 @nla_nest_end(%struct.sk_buff* %80, %struct.nlattr* %81)
  store i32 0, i32* %5, align 4
  br label %84

83:                                               ; preds = %78, %61
  store i32 -1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @atomic64_xchg(i32*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
