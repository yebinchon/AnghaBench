; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_nh6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_nh6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.seg6_local_lwt = type { i32 }
%struct.nlattr = type { i32 }

@SEG6_LOCAL_NH6 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @put_nla_nh6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_nla_nh6(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @SEG6_LOCAL_NH6, align 4
  %9 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %7, i32 %8, i32 4)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = call i32 @nla_data(%struct.nlattr* %16)
  %18 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %19 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %18, i32 0, i32 0
  %20 = call i32 @memcpy(i32 %17, i32* %19, i32 4)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
