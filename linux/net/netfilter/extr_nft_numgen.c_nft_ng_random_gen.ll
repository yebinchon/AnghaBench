; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_random_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_random_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ng_random = type { i64, i32 }
%struct.rnd_state = type { i32 }

@nft_numgen_prandom_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nft_ng_random*)* @nft_ng_random_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nft_ng_random_gen(%struct.nft_ng_random* %0) #0 {
  %2 = alloca %struct.nft_ng_random*, align 8
  %3 = alloca %struct.rnd_state*, align 8
  store %struct.nft_ng_random* %0, %struct.nft_ng_random** %2, align 8
  %4 = call %struct.rnd_state* @this_cpu_ptr(i32* @nft_numgen_prandom_state)
  store %struct.rnd_state* %4, %struct.rnd_state** %3, align 8
  %5 = load %struct.rnd_state*, %struct.rnd_state** %3, align 8
  %6 = call i32 @prandom_u32_state(%struct.rnd_state* %5)
  %7 = load %struct.nft_ng_random*, %struct.nft_ng_random** %2, align 8
  %8 = getelementptr inbounds %struct.nft_ng_random, %struct.nft_ng_random* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @reciprocal_scale(i32 %6, i32 %9)
  %11 = load %struct.nft_ng_random*, %struct.nft_ng_random** %2, align 8
  %12 = getelementptr inbounds %struct.nft_ng_random, %struct.nft_ng_random* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  ret i64 %14
}

declare dso_local %struct.rnd_state* @this_cpu_ptr(i32*) #1

declare dso_local i64 @reciprocal_scale(i32, i32) #1

declare dso_local i32 @prandom_u32_state(%struct.rnd_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
