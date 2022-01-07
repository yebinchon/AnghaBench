; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_add_grhead.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_add_grhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifmcaddr6 = type { i32, i32 }
%struct.mld2_grec = type { i32, i32, i64, i64 }
%struct.mld2_report = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.ifmcaddr6*, i32, %struct.mld2_grec**, i32)* @add_grhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @add_grhead(%struct.sk_buff* %0, %struct.ifmcaddr6* %1, i32 %2, %struct.mld2_grec** %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ifmcaddr6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mld2_grec**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mld2_report*, align 8
  %13 = alloca %struct.mld2_grec*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mld2_grec** %3, %struct.mld2_grec*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %18 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.sk_buff* @mld_newpack(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %55

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call %struct.mld2_grec* @skb_put(%struct.sk_buff* %27, i32 24)
  store %struct.mld2_grec* %28, %struct.mld2_grec** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mld2_grec*, %struct.mld2_grec** %13, align 8
  %31 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mld2_grec*, %struct.mld2_grec** %13, align 8
  %33 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.mld2_grec*, %struct.mld2_grec** %13, align 8
  %35 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %37 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mld2_grec*, %struct.mld2_grec** %13, align 8
  %40 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i64 @skb_transport_header(%struct.sk_buff* %41)
  %43 = inttoptr i64 %42 to %struct.mld2_report*
  store %struct.mld2_report* %43, %struct.mld2_report** %12, align 8
  %44 = load %struct.mld2_report*, %struct.mld2_report** %12, align 8
  %45 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohs(i32 %46)
  %48 = add nsw i64 %47, 1
  %49 = call i32 @htons(i64 %48)
  %50 = load %struct.mld2_report*, %struct.mld2_report** %12, align 8
  %51 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mld2_grec*, %struct.mld2_grec** %13, align 8
  %53 = load %struct.mld2_grec**, %struct.mld2_grec*** %10, align 8
  store %struct.mld2_grec* %52, %struct.mld2_grec** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  br label %55

55:                                               ; preds = %26, %24
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %56
}

declare dso_local %struct.sk_buff* @mld_newpack(i32, i32) #1

declare dso_local %struct.mld2_grec* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
