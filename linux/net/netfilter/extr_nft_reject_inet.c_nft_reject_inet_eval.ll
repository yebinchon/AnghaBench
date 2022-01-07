; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_reject_inet.c_nft_reject_inet_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_reject_inet.c_nft_reject_inet_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_reject = type { i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_reject_inet_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_reject_inet_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_reject*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_reject* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_reject* %9, %struct.nft_reject** %7, align 8
  %10 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %11 = call i32 @nft_pf(%struct.nft_pktinfo* %10)
  switch i32 %11, label %86 [
    i32 132, label %12
    i32 131, label %47
  ]

12:                                               ; preds = %3
  %13 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %14 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %46 [
    i32 129, label %16
    i32 128, label %26
    i32 130, label %35
  ]

16:                                               ; preds = %12
  %17 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %18 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %21 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %24 = call i32 @nft_hook(%struct.nft_pktinfo* %23)
  %25 = call i32 @nf_send_unreach(i32 %19, i32 %22, i32 %24)
  br label %46

26:                                               ; preds = %12
  %27 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %28 = call i32 @nft_net(%struct.nft_pktinfo* %27)
  %29 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %30 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %33 = call i32 @nft_hook(%struct.nft_pktinfo* %32)
  %34 = call i32 @nf_send_reset(i32 %28, i32 %31, i32 %33)
  br label %46

35:                                               ; preds = %12
  %36 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %37 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %40 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nft_reject_icmp_code(i32 %41)
  %43 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %44 = call i32 @nft_hook(%struct.nft_pktinfo* %43)
  %45 = call i32 @nf_send_unreach(i32 %38, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %12, %35, %26, %16
  br label %86

47:                                               ; preds = %3
  %48 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %49 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %85 [
    i32 129, label %51
    i32 128, label %63
    i32 130, label %72
  ]

51:                                               ; preds = %47
  %52 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %53 = call i32 @nft_net(%struct.nft_pktinfo* %52)
  %54 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %55 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %58 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %61 = call i32 @nft_hook(%struct.nft_pktinfo* %60)
  %62 = call i32 @nf_send_unreach6(i32 %53, i32 %56, i32 %59, i32 %61)
  br label %85

63:                                               ; preds = %47
  %64 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %65 = call i32 @nft_net(%struct.nft_pktinfo* %64)
  %66 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %67 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %70 = call i32 @nft_hook(%struct.nft_pktinfo* %69)
  %71 = call i32 @nf_send_reset6(i32 %65, i32 %68, i32 %70)
  br label %85

72:                                               ; preds = %47
  %73 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %74 = call i32 @nft_net(%struct.nft_pktinfo* %73)
  %75 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %76 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nft_reject*, %struct.nft_reject** %7, align 8
  %79 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nft_reject_icmpv6_code(i32 %80)
  %82 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %83 = call i32 @nft_hook(%struct.nft_pktinfo* %82)
  %84 = call i32 @nf_send_unreach6(i32 %74, i32 %77, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %47, %72, %63, %51
  br label %86

86:                                               ; preds = %3, %85, %46
  %87 = load i32, i32* @NF_DROP, align 4
  %88 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %89 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  ret void
}

declare dso_local %struct.nft_reject* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local i32 @nf_send_unreach(i32, i32, i32) #1

declare dso_local i32 @nft_hook(%struct.nft_pktinfo*) #1

declare dso_local i32 @nf_send_reset(i32, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_reject_icmp_code(i32) #1

declare dso_local i32 @nf_send_unreach6(i32, i32, i32, i32) #1

declare dso_local i32 @nf_send_reset6(i32, i32, i32) #1

declare dso_local i32 @nft_reject_icmpv6_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
