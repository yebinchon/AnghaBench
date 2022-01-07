; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_decrypt_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_decrypt_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.mac802154_llsec = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mac802154_llsec_key = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE802154_SCF_SECLEVEL_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*, i32)* @llsec_do_decrypt_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_do_decrypt_auth(%struct.sk_buff* %0, %struct.mac802154_llsec* %1, %struct.ieee802154_hdr* %2, %struct.mac802154_llsec_key* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mac802154_llsec*, align 8
  %9 = alloca %struct.ieee802154_hdr*, align 8
  %10 = alloca %struct.mac802154_llsec_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist, align 4
  %19 = alloca %struct.aead_request*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.mac802154_llsec* %1, %struct.mac802154_llsec** %8, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %9, align 8
  store %struct.mac802154_llsec_key* %3, %struct.mac802154_llsec_key** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %20, i32 0, i32 0
  %22 = call i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_3__* %21)
  store i32 %22, i32* %14, align 4
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %25, i32 0, i32 0
  %27 = call i32 @llsec_geniv(i32* %23, i32 %24, %struct.TYPE_3__* %26)
  %28 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %10, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @llsec_tfm_by_len(%struct.mac802154_llsec_key* %28, i32 %29)
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.aead_request* @aead_request_alloc(i32 %30, i32 %31)
  store %struct.aead_request* %32, %struct.aead_request** %19, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %34 = icmp ne %struct.aead_request* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %99

38:                                               ; preds = %5
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %16, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i8* @skb_mac_header(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8* %48, i8** %13, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i8* @skb_tail_pointer(%struct.sk_buff* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i8* @skb_mac_header(%struct.sk_buff* %56)
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %57, i32 %60)
  %62 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %9, align 8
  %63 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE802154_SCF_SECLEVEL_ENC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %38
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %69, %38
  %77 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %78 = call i32 @aead_request_set_callback(%struct.aead_request* %77, i32 0, i32* null, i32* null)
  %79 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %82 = call i32 @aead_request_set_crypt(%struct.aead_request* %79, %struct.scatterlist* %18, %struct.scatterlist* %18, i32 %80, i32* %81)
  %83 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @aead_request_set_ad(%struct.aead_request* %83, i32 %84)
  %86 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %87 = call i32 @crypto_aead_decrypt(%struct.aead_request* %86)
  store i32 %87, i32* %17, align 4
  %88 = load %struct.aead_request*, %struct.aead_request** %19, align 8
  %89 = call i32 @kzfree(%struct.aead_request* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 @skb_trim(%struct.sk_buff* %90, i64 %96)
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %76, %35
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_3__*) #1

declare dso_local i32 @llsec_geniv(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #1

declare dso_local i32 @llsec_tfm_by_len(%struct.mac802154_llsec_key*, i32) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @kzfree(%struct.aead_request*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
