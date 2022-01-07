; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib_netdev.c_nft_fib_netdev_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib_netdev.c_nft_fib_netdev_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nft_fib = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_fib_netdev_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_fib_netdev_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_fib* %9, %struct.nft_fib** %7, align 8
  %10 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %11 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  switch i32 %15, label %46 [
    i32 132, label %16
    i32 131, label %29
  ]

16:                                               ; preds = %3
  %17 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %18 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %20
    i32 130, label %24
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %22 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %23 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib4_eval(%struct.nft_expr* %21, %struct.nft_regs* %22, %struct.nft_pktinfo* %23)
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %26 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %27 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib4_eval_type(%struct.nft_expr* %25, %struct.nft_regs* %26, %struct.nft_pktinfo* %27)
  br label %51

28:                                               ; preds = %16
  br label %46

29:                                               ; preds = %3
  %30 = call i32 (...) @ipv6_mod_enabled()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %46

33:                                               ; preds = %29
  %34 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %35 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 128, label %37
    i32 130, label %41
  ]

37:                                               ; preds = %33, %33
  %38 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %39 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %40 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib6_eval(%struct.nft_expr* %38, %struct.nft_regs* %39, %struct.nft_pktinfo* %40)
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %43 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %44 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib6_eval_type(%struct.nft_expr* %42, %struct.nft_regs* %43, %struct.nft_pktinfo* %44)
  br label %51

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %3, %45, %32, %28
  %47 = load i32, i32* @NFT_BREAK, align 4
  %48 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %49 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41, %37, %24, %20
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local void @nft_fib4_eval(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local void @nft_fib4_eval_type(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local i32 @ipv6_mod_enabled(...) #1

declare dso_local void @nft_fib6_eval(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local void @nft_fib6_eval_type(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
