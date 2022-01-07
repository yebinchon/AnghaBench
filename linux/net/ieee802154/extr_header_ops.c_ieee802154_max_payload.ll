; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_max_payload.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_max_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hdr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ieee802154_sechdr_lengths = common dso_local global i32* null, align 8
@IEEE802154_MTU = common dso_local global i32 0, align 4
@IEEE802154_MFR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_max_payload(%struct.ieee802154_hdr* %0) #0 {
  %2 = alloca %struct.ieee802154_hdr*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee802154_hdr* %0, %struct.ieee802154_hdr** %2, align 8
  %4 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %2, align 8
  %5 = call i32 @ieee802154_hdr_minlen(%struct.ieee802154_hdr* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %2, align 8
  %7 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32*, i32** @ieee802154_sechdr_lengths, align 8
  %13 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %2, align 8
  %14 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %2, align 8
  %23 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %22, i32 0, i32 0
  %24 = call i64 @ieee802154_sechdr_authtag_len(%struct.TYPE_4__* %23)
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %11, %1
  %30 = load i32, i32* @IEEE802154_MTU, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @IEEE802154_MFR_SIZE, align 4
  %34 = sub nsw i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @ieee802154_hdr_minlen(%struct.ieee802154_hdr*) #1

declare dso_local i64 @ieee802154_sechdr_authtag_len(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
