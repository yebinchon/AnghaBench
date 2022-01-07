; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_local_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_local_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@RAW_HTABLE_SIZE = common dso_local global i32 0, align 4
@raw_v4_hashinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw_local_deliver(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RAW_HTABLE_SIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw_v4_hashinfo, i32 0, i32 0), align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call %struct.sock* @sk_head(i32* %14)
  store %struct.sock* %15, %struct.sock** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @ip_hdr(%struct.sk_buff* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @raw_v4_input(%struct.sk_buff* %19, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %26

26:                                               ; preds = %25, %18, %2
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = icmp ne %struct.sock* %27, null
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.sock* @sk_head(i32*) #1

declare dso_local i32 @raw_v4_input(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
