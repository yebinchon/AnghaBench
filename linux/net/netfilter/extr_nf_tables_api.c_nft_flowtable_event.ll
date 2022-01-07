; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_flowtable_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_flowtable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nft_flowtable = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.net_device*, %struct.nft_flowtable*)* @nft_flowtable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_flowtable_event(i64 %0, %struct.net_device* %1, %struct.nft_flowtable* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nft_flowtable*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.nft_flowtable* %2, %struct.nft_flowtable** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %43, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.nft_flowtable*, %struct.nft_flowtable** %6, align 8
  %11 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = load %struct.nft_flowtable*, %struct.nft_flowtable** %6, align 8
  %16 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp ne %struct.net_device* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @dev_net(%struct.net_device* %27)
  %29 = load %struct.nft_flowtable*, %struct.nft_flowtable** %6, align 8
  %30 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = call i32 @nf_unregister_net_hook(i32 %28, %struct.TYPE_2__* %34)
  %36 = load %struct.nft_flowtable*, %struct.nft_flowtable** %6, align 8
  %37 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %42, align 8
  br label %46

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %8

46:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @nf_unregister_net_hook(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
