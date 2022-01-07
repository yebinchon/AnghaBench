; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_compress_802154_lladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_compress_802154_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32*, i32* }
%struct.ieee802154_addr = type { i32, i32, i32 }

@EUI64_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*, i8*)* @lowpan_iphc_compress_802154_lladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_compress_802154_lladdr(%struct.in6_addr* %0, i8* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee802154_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ieee802154_addr*
  store %struct.ieee802154_addr* %11, %struct.ieee802154_addr** %5, align 8
  %12 = load i32, i32* @EUI64_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = bitcast %struct.in6_addr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %54 [
    i32 129, label %20
    i32 128, label %30
  ]

20:                                               ; preds = %2
  %21 = bitcast i8* %15 to i8**
  %22 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %23 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %22, i32 0, i32 2
  %24 = call i32 @ieee802154_le64_to_be64(i8** %21, i32* %23)
  %25 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %26 = call i32 @is_addr_mac_addr_based(%struct.in6_addr* %25, i8* %15)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %20
  br label %56

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 254, i32* %33, align 4
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 128, i32* %36, align 4
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 11
  store i32 255, i32* %39, align 4
  %40 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 12
  store i32 254, i32* %42, align 4
  %43 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %47 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %46, i32 0, i32 1
  %48 = call i32 @ieee802154_le16_to_be16(i32* %45, i32* %47)
  %49 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %50 = call i32 @ipv6_addr_equal(%struct.in6_addr* %9, %struct.in6_addr* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %30
  br label %56

54:                                               ; preds = %2
  %55 = call i32 @WARN_ON_ONCE(i32 1)
  br label %56

56:                                               ; preds = %54, %53, %29
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ieee802154_le64_to_be64(i8**, i32*) #3

declare dso_local i32 @is_addr_mac_addr_based(%struct.in6_addr*, i8*) #3

declare dso_local i32 @ieee802154_le16_to_be16(i32*, i32*) #3

declare dso_local i32 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #3

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
