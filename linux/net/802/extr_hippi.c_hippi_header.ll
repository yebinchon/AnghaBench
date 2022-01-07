; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_hippi.c_hippi_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_hippi.c_hippi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i8* }
%struct.hippi_hdr = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64*, i32, i64*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32*, i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.hippi_cb = type { i64 }

@HIPPI_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hippi_header(): length not supplied\0A\00", align 1
@HIPPI_EXTENDED_SAP = common dso_local global i8* null, align 8
@HIPPI_UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @hippi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hippi_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hippi_hdr*, align 8
  %15 = alloca %struct.hippi_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* @HIPPI_HLEN, align 4
  %18 = call %struct.hippi_hdr* @skb_push(%struct.sk_buff* %16, i32 %17)
  store %struct.hippi_hdr* %18, %struct.hippi_hdr** %14, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.hippi_cb*
  store %struct.hippi_cb* %22, %struct.hippi_cb** %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %6
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HIPPI_HLEN, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %25, %6
  %33 = call i8* @htonl(i32 75497496)
  %34 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %35 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add i32 %37, 8
  %39 = call i8* @htonl(i32 %38)
  %40 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %41 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %44 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %47 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %50 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %53 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %56 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 2, i32* %57, align 4
  %58 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %59 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr i8, i8* %64, i64 3
  %66 = call i32 @memcpy(i64* %61, i8* %65, i32 3)
  %67 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %68 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = call i32 @memset(i32* %69, i32 0, i32 16)
  %71 = load i8*, i8** @HIPPI_EXTENDED_SAP, align 8
  %72 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %73 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store i8* %71, i8** %74, align 8
  %75 = load i8*, i8** @HIPPI_EXTENDED_SAP, align 8
  %76 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %77 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* @HIPPI_UI_CMD, align 4
  %80 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %81 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %84 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 0, i32* %87, align 4
  %88 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %89 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %94 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 0, i32* %97, align 4
  %98 = load i16, i16* %10, align 2
  %99 = call i32 @htons(i16 zeroext %98)
  %100 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %101 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %32
  %106 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %107 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr i8, i8* %110, i64 3
  %112 = call i32 @memcpy(i64* %109, i8* %111, i32 3)
  %113 = load %struct.hippi_cb*, %struct.hippi_cb** %15, align 8
  %114 = getelementptr inbounds %struct.hippi_cb, %struct.hippi_cb* %113, i32 0, i32 0
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr i8, i8* %115, i64 2
  %117 = call i32 @memcpy(i64* %114, i8* %116, i32 4)
  %118 = load i32, i32* @HIPPI_HLEN, align 4
  store i32 %118, i32* %7, align 4
  br label %124

119:                                              ; preds = %32
  %120 = load %struct.hippi_cb*, %struct.hippi_cb** %15, align 8
  %121 = getelementptr inbounds %struct.hippi_cb, %struct.hippi_cb* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @HIPPI_HLEN, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %105
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.hippi_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
