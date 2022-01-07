; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib_inet.c_nft_fib_inet_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib_inet.c_nft_fib_inet_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_fib = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_fib_inet_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_fib_inet_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
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
  %11 = call i32 @nft_pf(%struct.nft_pktinfo* %10)
  switch i32 %11, label %38 [
    i32 132, label %12
    i32 131, label %25
  ]

12:                                               ; preds = %3
  %13 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %14 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 129, label %16
    i32 128, label %16
    i32 130, label %20
  ]

16:                                               ; preds = %12, %12
  %17 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %18 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %19 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib4_eval(%struct.nft_expr* %17, %struct.nft_regs* %18, %struct.nft_pktinfo* %19)
  br label %43

20:                                               ; preds = %12
  %21 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %22 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %23 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib4_eval_type(%struct.nft_expr* %21, %struct.nft_regs* %22, %struct.nft_pktinfo* %23)
  br label %43

24:                                               ; preds = %12
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %27 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %33
  ]

29:                                               ; preds = %25, %25
  %30 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %31 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib6_eval(%struct.nft_expr* %30, %struct.nft_regs* %31, %struct.nft_pktinfo* %32)
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %35 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %36 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_fib6_eval_type(%struct.nft_expr* %34, %struct.nft_regs* %35, %struct.nft_pktinfo* %36)
  br label %43

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %3, %37, %24
  %39 = load i32, i32* @NF_DROP, align 4
  %40 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %41 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %33, %29, %20, %16
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local void @nft_fib4_eval(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local void @nft_fib4_eval_type(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local void @nft_fib6_eval(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local void @nft_fib6_eval_type(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
