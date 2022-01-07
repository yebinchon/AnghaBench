; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_minlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_minlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hdr*)* @ieee802154_hdr_minlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_hdr_minlen(%struct.ieee802154_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802154_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee802154_hdr* %0, %struct.ieee802154_hdr** %3, align 8
  %6 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %3, align 8
  %7 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ieee802154_hdr_addr_len(i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %3, align 8
  %12 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %3, align 8
  %16 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee802154_hdr_addr_len(i32 %14, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 3, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %3, align 8
  %34 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ieee802154_hdr_addr_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
