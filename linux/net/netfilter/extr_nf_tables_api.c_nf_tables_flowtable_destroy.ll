; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_flowtable_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_flowtable = type { %struct.TYPE_4__, %struct.nft_flowtable*, %struct.nft_flowtable* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_flowtable*)* @nf_tables_flowtable_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_flowtable_destroy(%struct.nft_flowtable* %0) #0 {
  %2 = alloca %struct.nft_flowtable*, align 8
  store %struct.nft_flowtable* %0, %struct.nft_flowtable** %2, align 8
  %3 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %4 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %3, i32 0, i32 2
  %5 = load %struct.nft_flowtable*, %struct.nft_flowtable** %4, align 8
  %6 = call i32 @kfree(%struct.nft_flowtable* %5)
  %7 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %8 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %7, i32 0, i32 1
  %9 = load %struct.nft_flowtable*, %struct.nft_flowtable** %8, align 8
  %10 = call i32 @kfree(%struct.nft_flowtable* %9)
  %11 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %12 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %15, align 8
  %17 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %18 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %17, i32 0, i32 0
  %19 = call i32 %16(%struct.TYPE_4__* %18)
  %20 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %21 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @module_put(i32 %25)
  %27 = load %struct.nft_flowtable*, %struct.nft_flowtable** %2, align 8
  %28 = call i32 @kfree(%struct.nft_flowtable* %27)
  ret void
}

declare dso_local i32 @kfree(%struct.nft_flowtable*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
