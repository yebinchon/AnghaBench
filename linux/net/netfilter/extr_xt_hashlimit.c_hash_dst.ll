; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hash_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hash_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_hashlimit_htable = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dsthash_dst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_hashlimit_htable*, %struct.dsthash_dst*)* @hash_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_dst(%struct.xt_hashlimit_htable* %0, %struct.dsthash_dst* %1) #0 {
  %3 = alloca %struct.xt_hashlimit_htable*, align 8
  %4 = alloca %struct.dsthash_dst*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_hashlimit_htable* %0, %struct.xt_hashlimit_htable** %3, align 8
  store %struct.dsthash_dst* %1, %struct.dsthash_dst** %4, align 8
  %6 = load %struct.dsthash_dst*, %struct.dsthash_dst** %4, align 8
  %7 = bitcast %struct.dsthash_dst* %6 to i32*
  %8 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %9 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @jhash2(i32* %7, i32 1, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %14 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reciprocal_scale(i32 %12, i32 %16)
  ret i32 %17
}

declare dso_local i32 @jhash2(i32*, i32, i32) #1

declare dso_local i32 @reciprocal_scale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
