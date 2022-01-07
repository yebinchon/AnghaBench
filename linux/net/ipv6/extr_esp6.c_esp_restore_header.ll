; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_restore_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_restore_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @esp_restore_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_restore_header(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_esp_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %15, %struct.ip_esp_hdr** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_2__* @ESP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @esp_tmp_seqhi(i8* %20)
  store i32* %21, i32** %7, align 8
  %22 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @esp_tmp_seqhi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
