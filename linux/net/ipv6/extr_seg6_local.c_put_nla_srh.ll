; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.seg6_local_lwt = type { %struct.ipv6_sr_hdr* }
%struct.ipv6_sr_hdr = type { i32 }
%struct.nlattr = type { i32 }

@SEG6_LOCAL_SRH = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @put_nla_srh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_nla_srh(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.ipv6_sr_hdr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %9 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %10 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %9, i32 0, i32 0
  %11 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %10, align 8
  store %struct.ipv6_sr_hdr* %11, %struct.ipv6_sr_hdr** %6, align 8
  %12 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = shl i32 %15, 3
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @SEG6_LOCAL_SRH, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %17, i32 %18, i32 %19)
  store %struct.nlattr* %20, %struct.nlattr** %7, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %28 = call i32 @nla_data(%struct.nlattr* %27)
  %29 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy(i32 %28, %struct.ipv6_sr_hdr* %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ipv6_sr_hdr*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
