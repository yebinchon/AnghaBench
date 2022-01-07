; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_rule = type { i32 }
%struct.nft_chain = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_rule* (%struct.nft_chain*, %struct.nlattr*)* @nft_rule_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_rule* @nft_rule_lookup(%struct.nft_chain* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.nft_rule*, align 8
  %4 = alloca %struct.nft_chain*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %struct.nft_chain* %0, %struct.nft_chain** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %7 = icmp eq %struct.nlattr* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.nft_rule* @ERR_PTR(i32 %10)
  store %struct.nft_rule* %11, %struct.nft_rule** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.nft_chain*, %struct.nft_chain** %4, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %15 = call i32 @nla_get_be64(%struct.nlattr* %14)
  %16 = call i32 @be64_to_cpu(i32 %15)
  %17 = call %struct.nft_rule* @__nft_rule_lookup(%struct.nft_chain* %13, i32 %16)
  store %struct.nft_rule* %17, %struct.nft_rule** %3, align 8
  br label %18

18:                                               ; preds = %12, %8
  %19 = load %struct.nft_rule*, %struct.nft_rule** %3, align 8
  ret %struct.nft_rule* %19
}

declare dso_local %struct.nft_rule* @ERR_PTR(i32) #1

declare dso_local %struct.nft_rule* @__nft_rule_lookup(%struct.nft_chain*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
