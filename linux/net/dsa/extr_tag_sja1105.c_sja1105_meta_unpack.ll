; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_meta_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_meta_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sja1105_meta = type { i32, i32, i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@UNPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sja1105_meta*)* @sja1105_meta_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_meta_unpack(%struct.sk_buff* %0, %struct.sja1105_meta* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sja1105_meta*, align 8
  %5 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sja1105_meta* %1, %struct.sja1105_meta** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32* @skb_mac_header(%struct.sk_buff* %6)
  %8 = load i32, i32* @ETH_HLEN, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %13 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %12, i32 0, i32 4
  %14 = load i32, i32* @UNPACK, align 4
  %15 = call i32 @packing(i32* %11, i32* %13, i32 31, i32 0, i32 4, i32 %14, i32 0)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %19 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %18, i32 0, i32 3
  %20 = load i32, i32* @UNPACK, align 4
  %21 = call i32 @packing(i32* %17, i32* %19, i32 7, i32 0, i32 1, i32 %20, i32 0)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %25 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %24, i32 0, i32 2
  %26 = load i32, i32* @UNPACK, align 4
  %27 = call i32 @packing(i32* %23, i32* %25, i32 7, i32 0, i32 1, i32 %26, i32 0)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  %30 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %31 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %30, i32 0, i32 1
  %32 = load i32, i32* @UNPACK, align 4
  %33 = call i32 @packing(i32* %29, i32* %31, i32 7, i32 0, i32 1, i32 %32, i32 0)
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load %struct.sja1105_meta*, %struct.sja1105_meta** %4, align 8
  %37 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %36, i32 0, i32 0
  %38 = load i32, i32* @UNPACK, align 4
  %39 = call i32 @packing(i32* %35, i32* %37, i32 7, i32 0, i32 1, i32 %38, i32 0)
  ret void
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @packing(i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
