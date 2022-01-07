; ModuleID = '/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.ethhdr = type { i32, i32, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i16 0, align 2
@ETH_P_802_2 = common dso_local global i16 0, align 2
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %15, i32 %16)
  store %struct.ethhdr* %17, %struct.ethhdr** %14, align 8
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @ETH_P_802_3, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %6
  %24 = load i16, i16* %10, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @ETH_P_802_2, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i16, i16* %10, align 2
  %31 = zext i16 %30 to i32
  %32 = call i8* @htons(i32 %31)
  %33 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %34 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %40

35:                                               ; preds = %23, %6
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %39 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %50, i8* %51, i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %58 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %59, i8* %60, i32 %61)
  %63 = load i32, i32* @ETH_HLEN, align 4
  store i32 %63, i32* %7, align 4
  br label %82

64:                                               ; preds = %47
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFF_LOOPBACK, align 4
  %69 = load i32, i32* @IFF_NOARP, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @eth_zero_addr(i32 %76)
  %78 = load i32, i32* @ETH_HLEN, align 4
  store i32 %78, i32* %7, align 4
  br label %82

79:                                               ; preds = %64
  %80 = load i32, i32* @ETH_HLEN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %73, %56
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.ethhdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
