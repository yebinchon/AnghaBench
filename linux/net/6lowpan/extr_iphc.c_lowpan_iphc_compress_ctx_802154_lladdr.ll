; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_compress_ctx_802154_lladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_compress_ctx_802154_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32*, i32* }
%struct.lowpan_iphc_ctx = type { i32, i32 }
%struct.ieee802154_addr = type { i32, i32, i32 }

@EUI64_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*, %struct.lowpan_iphc_ctx*, i8*)* @lowpan_iphc_compress_ctx_802154_lladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_compress_ctx_802154_lladdr(%struct.in6_addr* %0, %struct.lowpan_iphc_ctx* %1, i8* %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.lowpan_iphc_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee802154_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.lowpan_iphc_ctx* %1, %struct.lowpan_iphc_ctx** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ieee802154_addr*
  store %struct.ieee802154_addr* %13, %struct.ieee802154_addr** %7, align 8
  %14 = load i32, i32* @EUI64_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %7, align 8
  %20 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %73 [
    i32 129, label %22
    i32 128, label %49
  ]

22:                                               ; preds = %3
  %23 = bitcast i8* %17 to i8**
  %24 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %7, align 8
  %25 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %24, i32 0, i32 2
  %26 = call i32 @ieee802154_le64_to_be64(i8** %23, i32* %25)
  %27 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = bitcast i8* %17 to i8**
  %31 = load i32, i32* @EUI64_ADDR_LEN, align 4
  %32 = call i32 @memcpy(i32* %29, i8** %30, i32 %31)
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, 2
  store i32 %37, i32* %35, align 4
  %38 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %38, i32 0, i32 1
  %40 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %11, i32* %39, i32 %42)
  %44 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %45 = call i32 @ipv6_addr_equal(%struct.in6_addr* %11, %struct.in6_addr* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %22
  br label %75

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 11
  store i32 255, i32* %52, align 4
  %53 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  store i32 254, i32* %55, align 4
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %7, align 8
  %60 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %59, i32 0, i32 1
  %61 = call i32 @ieee802154_le16_to_be16(i32* %58, i32* %60)
  %62 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %62, i32 0, i32 1
  %64 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %11, i32* %63, i32 %66)
  %68 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %69 = call i32 @ipv6_addr_equal(%struct.in6_addr* %11, %struct.in6_addr* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %49
  br label %75

73:                                               ; preds = %3
  %74 = call i32 @WARN_ON_ONCE(i32 1)
  br label %75

75:                                               ; preds = %73, %72, %48
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ieee802154_le64_to_be64(i8**, i32*) #3

declare dso_local i32 @memcpy(i32*, i8**, i32) #3

declare dso_local i32 @ipv6_addr_prefix_copy(%struct.in6_addr*, i32*, i32) #3

declare dso_local i32 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #3

declare dso_local i32 @ieee802154_le16_to_be16(i32*, i32*) #3

declare dso_local i32 @WARN_ON_ONCE(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
