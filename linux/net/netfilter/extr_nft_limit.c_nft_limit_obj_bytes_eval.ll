; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_obj_bytes_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_obj_bytes_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nft_limit = type { i32, i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_limit_obj_bytes_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_limit_obj_bytes_eval(%struct.nft_object* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_limit*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_object* %0, %struct.nft_object** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %9 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %10 = call %struct.nft_limit* @nft_obj_data(%struct.nft_object* %9)
  store %struct.nft_limit* %10, %struct.nft_limit** %7, align 8
  %11 = load %struct.nft_limit*, %struct.nft_limit** %7, align 8
  %12 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %15 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %13, %18
  %20 = load %struct.nft_limit*, %struct.nft_limit** %7, align 8
  %21 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @div64_u64(i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nft_limit*, %struct.nft_limit** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @nft_limit_eval(%struct.nft_limit* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @NFT_BREAK, align 4
  %30 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %31 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %3
  ret void
}

declare dso_local %struct.nft_limit* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i64 @nft_limit_eval(%struct.nft_limit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
