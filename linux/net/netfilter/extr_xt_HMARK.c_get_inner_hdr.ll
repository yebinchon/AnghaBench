; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_get_inner_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_get_inner_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.icmphdr = type { i64 }

@NR_ICMP_TYPES = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_SOURCE_QUENCH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@ICMP_PARAMETERPROB = common dso_local global i64 0, align 8
@ICMP_REDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32*)* @get_inner_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_inner_hdr(%struct.sk_buff* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.icmphdr*, align 8
  %9 = alloca %struct.icmphdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %12, %13
  %15 = call %struct.icmphdr* @skb_header_pointer(%struct.sk_buff* %10, i32 %14, i32 8, %struct.icmphdr* %9)
  store %struct.icmphdr* %15, %struct.icmphdr** %8, align 8
  %16 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %17 = icmp eq %struct.icmphdr* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %20 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NR_ICMP_TYPES, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %27 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %33 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ICMP_SOURCE_QUENCH, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %39 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %45 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICMP_PARAMETERPROB, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %51 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ICMP_REDIRECT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %65

56:                                               ; preds = %49, %43, %37, %31, %25
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %59
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %56, %55, %24
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.icmphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
