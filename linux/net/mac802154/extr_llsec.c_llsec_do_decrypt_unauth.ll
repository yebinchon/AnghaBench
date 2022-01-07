; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_decrypt_unauth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_decrypt_unauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mac802154_llsec = type { i32 }
%struct.ieee802154_hdr = type { i32 }
%struct.mac802154_llsec_key = type { i32 }
%struct.scatterlist = type { i32 }

@req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*, i32)* @llsec_do_decrypt_unauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_do_decrypt_unauth(%struct.sk_buff* %0, %struct.mac802154_llsec* %1, %struct.ieee802154_hdr* %2, %struct.mac802154_llsec_key* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mac802154_llsec*, align 8
  %8 = alloca %struct.ieee802154_hdr*, align 8
  %9 = alloca %struct.mac802154_llsec_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.mac802154_llsec* %1, %struct.mac802154_llsec** %7, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %8, align 8
  store %struct.mac802154_llsec_key* %3, %struct.mac802154_llsec_key** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @req, align 4
  %17 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %9, align 8
  %18 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %16, i32 %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %23, i32 0, i32 0
  %25 = call i32 @llsec_geniv(i32* %21, i32 %22, i32* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i8* @skb_mac_header(%struct.sk_buff* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8* %32, i8** %12, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i8* @skb_tail_pointer(%struct.sk_buff* %33)
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @sg_init_one(%struct.scatterlist* %14, i8* %40, i32 %41)
  %43 = load i32, i32* @req, align 4
  %44 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %9, align 8
  %45 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skcipher_request_set_sync_tfm(i32 %43, i32 %46)
  %48 = load i32, i32* @req, align 4
  %49 = call i32 @skcipher_request_set_callback(i32 %48, i32 0, i32* null, i32* null)
  %50 = load i32, i32* @req, align 4
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %53 = call i32 @skcipher_request_set_crypt(i32 %50, %struct.scatterlist* %14, %struct.scatterlist* %14, i32 %51, i32* %52)
  %54 = load i32, i32* @req, align 4
  %55 = call i32 @crypto_skcipher_decrypt(i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @req, align 4
  %57 = call i32 @skcipher_request_zero(i32 %56)
  %58 = load i32, i32* %15, align 4
  ret i32 %58
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @llsec_geniv(i32*, i32, i32*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
