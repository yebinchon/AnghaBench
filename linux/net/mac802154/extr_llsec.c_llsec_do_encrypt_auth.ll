; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_do_encrypt_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mac802154_llsec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mac802154_llsec_key = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE802154_SCF_SECLEVEL_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*)* @llsec_do_encrypt_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_do_encrypt_auth(%struct.sk_buff* %0, %struct.mac802154_llsec* %1, %struct.ieee802154_hdr* %2, %struct.mac802154_llsec_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mac802154_llsec*, align 8
  %8 = alloca %struct.ieee802154_hdr*, align 8
  %9 = alloca %struct.mac802154_llsec_key*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scatterlist, align 4
  %17 = alloca %struct.aead_request*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.mac802154_llsec* %1, %struct.mac802154_llsec** %7, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %8, align 8
  store %struct.mac802154_llsec_key* %3, %struct.mac802154_llsec_key** %9, align 8
  %18 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %18, i32 0, i32 0
  %20 = call i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_5__* %19)
  store i32 %20, i32* %12, align 4
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %22 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %7, align 8
  %23 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %26, i32 0, i32 0
  %28 = call i32 @llsec_geniv(i32* %21, i32 %25, %struct.TYPE_5__* %27)
  %29 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @llsec_tfm_by_len(%struct.mac802154_llsec_key* %29, i32 %30)
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.aead_request* @aead_request_alloc(i32 %31, i32 %32)
  store %struct.aead_request* %33, %struct.aead_request** %17, align 8
  %34 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %35 = icmp ne %struct.aead_request* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i8* @skb_mac_header(%struct.sk_buff* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i8* @skb_tail_pointer(%struct.sk_buff* %50)
  %52 = load i8*, i8** %11, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @skb_put(%struct.sk_buff* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i8* @skb_mac_header(%struct.sk_buff* %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @sg_init_one(%struct.scatterlist* %16, i8* %61, i32 %66)
  %68 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE802154_SCF_SECLEVEL_ENC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %39
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %39
  %80 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %81 = call i32 @aead_request_set_callback(%struct.aead_request* %80, i32 0, i32* null, i32* null)
  %82 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %83 = load i32, i32* %14, align 4
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %85 = call i32 @aead_request_set_crypt(%struct.aead_request* %82, %struct.scatterlist* %16, %struct.scatterlist* %16, i32 %83, i32* %84)
  %86 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @aead_request_set_ad(%struct.aead_request* %86, i32 %87)
  %89 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %90 = call i32 @crypto_aead_encrypt(%struct.aead_request* %89)
  store i32 %90, i32* %15, align 4
  %91 = load %struct.aead_request*, %struct.aead_request** %17, align 8
  %92 = call i32 @kzfree(%struct.aead_request* %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %79, %36
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_5__*) #1

declare dso_local i32 @llsec_geniv(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #1

declare dso_local i32 @llsec_tfm_by_len(%struct.mac802154_llsec_key*, i32) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @kzfree(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
