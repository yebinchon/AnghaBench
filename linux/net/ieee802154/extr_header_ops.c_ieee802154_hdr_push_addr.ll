; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_push_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_push_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_addr = type { i32, i32, i32, i32 }

@IEEE802154_ADDR_NONE = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ieee802154_addr*, i32)* @ieee802154_hdr_push_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_hdr_push_addr(i32* %0, %struct.ieee802154_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee802154_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ieee802154_addr* %1, %struct.ieee802154_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %6, align 8
  %10 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE802154_ADDR_NONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %6, align 8
  %24 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %23, i32 0, i32 3
  %25 = call i32 @memcpy(i32* %22, i32* %24, i32 2)
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %18, %15
  %29 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %6, align 8
  %30 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 129, label %42
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %6, align 8
  %38 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %37, i32 0, i32 2
  %39 = call i32 @memcpy(i32* %36, i32* %38, i32 2)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %8, align 4
  br label %57

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %6, align 8
  %48 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %47, i32 0, i32 1
  %49 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %50 = call i32 @memcpy(i32* %46, i32* %48, i32 %49)
  %51 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %57

54:                                               ; preds = %28
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %42, %32
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %54, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
