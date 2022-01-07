; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_get_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_get_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hdr = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ieee802154_hdr*)* @ieee802154_hdr_get_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_hdr_get_addrs(i32* %0, %struct.ieee802154_hdr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee802154_hdr*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee802154_hdr* %1, %struct.ieee802154_hdr** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 0
  %16 = call i64 @ieee802154_hdr_get_addr(i32* %9, i32 %13, i32 0, %struct.TYPE_4__* %15)
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %33, i32 0, i32 1
  %35 = call i64 @ieee802154_hdr_get_addr(i32* %24, i32 %28, i32 %32, %struct.TYPE_4__* %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %2
  %46 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %4, align 8
  %51 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %2
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @ieee802154_hdr_get_addr(i32*, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
