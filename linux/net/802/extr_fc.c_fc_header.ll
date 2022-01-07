; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_fc.c_fc_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_fc.c_fc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.fch_hdr = type { i32, i32 }
%struct.fcllc = type { i32*, i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i16 0, align 2
@ETH_P_ARP = common dso_local global i16 0, align 2
@EXTENDED_SAP = common dso_local global i32 0, align 4
@UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @fc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fch_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fcllc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ETH_P_IP, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @ETH_P_ARP, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22, %6
  store i32 32, i32* %15, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.fch_hdr* @skb_push(%struct.sk_buff* %29, i32 %30)
  store %struct.fch_hdr* %31, %struct.fch_hdr** %14, align 8
  %32 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %33 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %32, i64 1
  %34 = bitcast %struct.fch_hdr* %33 to %struct.fcllc*
  store %struct.fcllc* %34, %struct.fcllc** %16, align 8
  %35 = load i32, i32* @EXTENDED_SAP, align 4
  %36 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %37 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %39 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %38, i32 0, i32 4
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @UI_CMD, align 4
  %41 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %42 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %44 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %46, align 4
  %47 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %48 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %52 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  %55 = load i16, i16* %10, align 2
  %56 = call i32 @htons(i16 zeroext %55)
  %57 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %58 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %22
  store i32 8, i32* %15, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call %struct.fch_hdr* @skb_push(%struct.sk_buff* %60, i32 %61)
  store %struct.fch_hdr* %62, %struct.fch_hdr** %14, align 8
  br label %63

63:                                               ; preds = %59, %28
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %68 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.net_device*, %struct.net_device** %9, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memcpy(i32 %69, i8* %70, i32 %73)
  br label %86

75:                                               ; preds = %63
  %76 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %77 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i32 %78, i8* %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %66
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %91 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.net_device*, %struct.net_device** %9, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %92, i8* %93, i32 %96)
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %7, align 4
  br label %102

99:                                               ; preds = %86
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.fch_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
