; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_obj_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_obj_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_quota = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@NFT_QUOTA_DEPLETED_BIT = common dso_local global i32 0, align 4
@NFT_MSG_NEWOBJ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_quota_obj_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_quota_obj_eval(%struct.nft_object* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_quota*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_object* %0, %struct.nft_object** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %9 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %10 = call %struct.nft_quota* @nft_obj_data(%struct.nft_object* %9)
  store %struct.nft_quota* %10, %struct.nft_quota** %7, align 8
  %11 = load %struct.nft_quota*, %struct.nft_quota** %7, align 8
  %12 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %13 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nft_overquota(%struct.nft_quota* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.nft_quota*, %struct.nft_quota** %7, align 8
  %18 = call i32 @nft_quota_invert(%struct.nft_quota* %17)
  %19 = xor i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @NFT_BREAK, align 4
  %23 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %24 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* @NFT_QUOTA_DEPLETED_BIT, align 4
  %31 = load %struct.nft_quota*, %struct.nft_quota** %7, align 8
  %32 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %31, i32 0, i32 0
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %37 = call i32 @nft_net(%struct.nft_pktinfo* %36)
  %38 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %39 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %43 = load i32, i32* @NFT_MSG_NEWOBJ, align 4
  %44 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %45 = call i32 @nft_pf(%struct.nft_pktinfo* %44)
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32 @nft_obj_notify(i32 %37, i32 %41, %struct.nft_object* %42, i32 0, i32 0, i32 %43, i32 %45, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %35, %29, %26
  ret void
}

declare dso_local %struct.nft_quota* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @nft_overquota(%struct.nft_quota*, i32) #1

declare dso_local i32 @nft_quota_invert(%struct.nft_quota*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nft_obj_notify(i32, i32, %struct.nft_object*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
