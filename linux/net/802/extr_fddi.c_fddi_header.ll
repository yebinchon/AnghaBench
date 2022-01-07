; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_fddi.c_fddi_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_fddi.c_fddi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.fddihdr = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i8*, i8* }

@FDDI_K_SNAP_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i16 0, align 2
@ETH_P_IPV6 = common dso_local global i16 0, align 2
@ETH_P_ARP = common dso_local global i16 0, align 2
@FDDI_K_8022_HLEN = common dso_local global i32 0, align 4
@FDDI_FC_K_ASYNC_LLC_DEF = common dso_local global i32 0, align 4
@FDDI_EXTENDED_SAP = common dso_local global i8* null, align 8
@FDDI_UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @fddi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fddi_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fddihdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @FDDI_K_SNAP_HLEN, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ETH_P_IP, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @ETH_P_IPV6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i16, i16* %10, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @ETH_P_ARP, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @FDDI_K_8022_HLEN, align 4
  %36 = sub nsw i32 %35, 3
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %28, %22, %6
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call %struct.fddihdr* @skb_push(%struct.sk_buff* %38, i32 %39)
  store %struct.fddihdr* %40, %struct.fddihdr** %15, align 8
  %41 = load i32, i32* @FDDI_FC_K_ASYNC_LLC_DEF, align 4
  %42 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %43 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i16, i16* %10, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @ETH_P_IP, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = load i16, i16* %10, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @ETH_P_IPV6, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i16, i16* %10, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* @ETH_P_ARP, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %55, %49, %37
  %62 = load i8*, i8** @FDDI_EXTENDED_SAP, align 8
  %63 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %64 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** @FDDI_EXTENDED_SAP, align 8
  %68 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %69 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* @FDDI_UI_CMD, align 4
  %73 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %74 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %78 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %84 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %90 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 0, i32* %94, align 4
  %95 = load i16, i16* %10, align 2
  %96 = call i32 @htons(i16 zeroext %95)
  %97 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %98 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  br label %101

101:                                              ; preds = %61, %55
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %106 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memcpy(i32 %107, i8* %108, i32 %111)
  br label %124

113:                                              ; preds = %101
  %114 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %115 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.net_device*, %struct.net_device** %9, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %9, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i32 %116, i8* %119, i32 %122)
  br label %124

124:                                              ; preds = %113, %104
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %129 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load %struct.net_device*, %struct.net_device** %9, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @memcpy(i32 %130, i8* %131, i32 %134)
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %7, align 4
  br label %140

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %137, %127
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.fddihdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
