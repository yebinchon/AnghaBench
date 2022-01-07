; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_addr = type { i32, i32, i32, i32 }

@IEEE802154_ADDR_NONE = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.ieee802154_addr*)* @ieee802154_hdr_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_hdr_get_addr(i32* %0, i32 %1, i32 %2, %struct.ieee802154_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee802154_addr*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ieee802154_addr* %3, %struct.ieee802154_addr** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %13 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IEEE802154_ADDR_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %23 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %22, i32 0, i32 3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @memcpy(i32* %23, i32* %27, i32 2)
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %37 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %36, i32 0, i32 2
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @memcpy(i32* %37, i32* %41, i32 2)
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %31
  %46 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %47 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %46, i32 0, i32 1
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %53 = call i32 @memcpy(i32* %47, i32* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %35, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
