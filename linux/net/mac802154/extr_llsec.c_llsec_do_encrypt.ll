; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mac802154_llsec = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mac802154_llsec_key = type { i32 }

@IEEE802154_SCF_SECLEVEL_ENC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*)* @llsec_do_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_do_encrypt(%struct.sk_buff* %0, %struct.mac802154_llsec* %1, %struct.ieee802154_hdr* %2, %struct.mac802154_llsec_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mac802154_llsec*, align 8
  %8 = alloca %struct.ieee802154_hdr*, align 8
  %9 = alloca %struct.mac802154_llsec_key*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.mac802154_llsec* %1, %struct.mac802154_llsec** %7, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %8, align 8
  store %struct.mac802154_llsec_key* %3, %struct.mac802154_llsec_key** %9, align 8
  %10 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %11 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE802154_SCF_SECLEVEL_ENC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %7, align 8
  %19 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %20 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %9, align 8
  %21 = call i32 @llsec_do_encrypt_unauth(%struct.sk_buff* %17, %struct.mac802154_llsec* %18, %struct.ieee802154_hdr* %19, %struct.mac802154_llsec_key* %20)
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %7, align 8
  %25 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %26 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %9, align 8
  %27 = call i32 @llsec_do_encrypt_auth(%struct.sk_buff* %23, %struct.mac802154_llsec* %24, %struct.ieee802154_hdr* %25, %struct.mac802154_llsec_key* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @llsec_do_encrypt_unauth(%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*) #1

declare dso_local i32 @llsec_do_encrypt_auth(%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
