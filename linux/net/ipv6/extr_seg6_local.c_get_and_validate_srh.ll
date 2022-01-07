; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_get_and_validate_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_get_and_validate_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_sr_hdr = type { i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipv6_sr_hdr* (%struct.sk_buff*)* @get_and_validate_srh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.ipv6_sr_hdr*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6_sr_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.ipv6_sr_hdr* @get_srh(%struct.sk_buff* %5)
  store %struct.ipv6_sr_hdr* %6, %struct.ipv6_sr_hdr** %4, align 8
  %7 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %8 = icmp ne %struct.ipv6_sr_hdr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  store %struct.ipv6_sr_hdr* %17, %struct.ipv6_sr_hdr** %2, align 8
  br label %18

18:                                               ; preds = %16, %15, %9
  %19 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %2, align 8
  ret %struct.ipv6_sr_hdr* %19
}

declare dso_local %struct.ipv6_sr_hdr* @get_srh(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
