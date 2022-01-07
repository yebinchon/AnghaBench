; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_dump_ct_seq_adj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_dump_ct_seq_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_ct_seqadj = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@CTA_SEQADJ_CORRECTION_POS = common dso_local global i32 0, align 4
@CTA_SEQADJ_OFFSET_BEFORE = common dso_local global i32 0, align 4
@CTA_SEQADJ_OFFSET_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_ct_seqadj*, i32)* @dump_ct_seq_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_ct_seq_adj(%struct.sk_buff* %0, %struct.nf_ct_seqadj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_ct_seqadj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_ct_seqadj* %1, %struct.nf_ct_seqadj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @CTA_SEQADJ_CORRECTION_POS, align 4
  %18 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %6, align 8
  %19 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = call i64 @nla_put_be32(%struct.sk_buff* %16, i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @CTA_SEQADJ_OFFSET_BEFORE, align 4
  %27 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %6, align 8
  %28 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = call i64 @nla_put_be32(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @CTA_SEQADJ_OFFSET_AFTER, align 4
  %36 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %6, align 8
  %37 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htonl(i32 %38)
  %40 = call i64 @nla_put_be32(%struct.sk_buff* %34, i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %24, %15
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %46 = call i32 @nla_nest_end(%struct.sk_buff* %44, %struct.nlattr* %45)
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %42, %14
  store i32 -1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
