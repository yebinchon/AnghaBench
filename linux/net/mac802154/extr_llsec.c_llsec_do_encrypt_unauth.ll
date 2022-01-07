; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt_unauth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt_unauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mac802154_llsec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802154_hdr = type { i32 }
%struct.mac802154_llsec_key = type { i32 }
%struct.scatterlist = type { i32 }

@req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*)* @llsec_do_encrypt_unauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_do_encrypt_unauth(%struct.sk_buff* %0, %struct.mac802154_llsec* %1, %struct.ieee802154_hdr* %2, %struct.mac802154_llsec_key* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mac802154_llsec*, align 8
  %7 = alloca %struct.ieee802154_hdr*, align 8
  %8 = alloca %struct.mac802154_llsec_key*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.mac802154_llsec* %1, %struct.mac802154_llsec** %6, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %7, align 8
  store %struct.mac802154_llsec_key* %3, %struct.mac802154_llsec_key** %8, align 8
  %14 = load i32, i32* @req, align 4
  %15 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %8, align 8
  %16 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %14, i32 %17)
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %20 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %6, align 8
  %21 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %24, i32 0, i32 0
  %26 = call i32 @llsec_geniv(i32* %19, i32 %23, i32* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i8* @skb_mac_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %13, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i8* @skb_tail_pointer(%struct.sk_buff* %34)
  %36 = load i8*, i8** %13, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @sg_init_one(%struct.scatterlist* %10, i8* %41, i32 %42)
  %44 = load i32, i32* @req, align 4
  %45 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %8, align 8
  %46 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @skcipher_request_set_sync_tfm(i32 %44, i32 %47)
  %49 = load i32, i32* @req, align 4
  %50 = call i32 @skcipher_request_set_callback(i32 %49, i32 0, i32* null, i32* null)
  %51 = load i32, i32* @req, align 4
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %54 = call i32 @skcipher_request_set_crypt(i32 %51, %struct.scatterlist* %10, %struct.scatterlist* %10, i32 %52, i32* %53)
  %55 = load i32, i32* @req, align 4
  %56 = call i32 @crypto_skcipher_encrypt(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @req, align 4
  %58 = call i32 @skcipher_request_zero(i32 %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @llsec_geniv(i32*, i32, i32*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
