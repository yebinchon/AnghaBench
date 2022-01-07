; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_802154_lladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_802154_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32*, i32* }
%struct.ieee802154_addr = type { i32, i32, i32 }

@EUI64_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*, i8*)* @lowpan_iphc_uncompress_802154_lladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowpan_iphc_uncompress_802154_lladdr(%struct.in6_addr* %0, i8* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee802154_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ieee802154_addr*
  store %struct.ieee802154_addr* %9, %struct.ieee802154_addr** %5, align 8
  %10 = load i32, i32* @EUI64_ADDR_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %15 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %47 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %2
  %18 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %18, i32 0, i32 2
  %20 = call i32 @ieee802154_le64_to_be64(i32* %13, i32* %19)
  %21 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %22 = call i32 @lowpan_iphc_uncompress_eui64_lladdr(%struct.in6_addr* %21, i32* %13)
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 254, i32* %27, align 4
  %28 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 128, i32* %31, align 4
  %32 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 11
  store i32 255, i32* %35, align 4
  %36 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  store i32 254, i32* %39, align 4
  %40 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %45 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %44, i32 0, i32 1
  %46 = call i32 @ieee802154_le16_to_be16(i32* %43, i32* %45)
  br label %49

47:                                               ; preds = %2
  %48 = call i32 @WARN_ON_ONCE(i32 1)
  br label %49

49:                                               ; preds = %47, %23, %17
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee802154_le64_to_be64(i32*, i32*) #2

declare dso_local i32 @lowpan_iphc_uncompress_eui64_lladdr(%struct.in6_addr*, i32*) #2

declare dso_local i32 @ieee802154_le16_to_be16(i32*, i32*) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
