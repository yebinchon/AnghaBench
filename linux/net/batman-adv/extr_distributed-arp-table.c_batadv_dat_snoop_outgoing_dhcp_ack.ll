; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_dhcp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_dhcp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BATADV_DHCP_CHADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_dat_snoop_outgoing_dhcp_ack(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %14 = load i32, i32* @BATADV_DHCP_CHADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %39

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @batadv_dat_check_dhcp_ack(%struct.sk_buff* %24, i32 %25, i32* %11, i32* %17, i32* %12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  br label %39

29:                                               ; preds = %23
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i16, i16* %8, align 2
  %38 = call i32 @batadv_dat_put_dhcp(%struct.batadv_priv* %30, i32* %17, i32 %31, i32 %35, i32 %36, i16 zeroext %37)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %29, %28, %22
  %40 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %13, align 4
  switch i32 %41, label %43 [
    i32 0, label %42
    i32 1, label %42
  ]

42:                                               ; preds = %39, %39
  ret void

43:                                               ; preds = %39
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @batadv_dat_check_dhcp_ack(%struct.sk_buff*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @batadv_dat_put_dhcp(%struct.batadv_priv*, i32*, i32, i32, i32, i16 zeroext) #2

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
