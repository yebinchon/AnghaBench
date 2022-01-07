; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_rcv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_rcv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_input_afinfo = type { i32 (%struct.sk_buff.0*, i32, i32)* }
%struct.sk_buff.0 = type opaque

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @xfrm_rcv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_rcv_cb(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_input_afinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.xfrm_input_afinfo* @xfrm_input_get_afinfo(i32 %12)
  store %struct.xfrm_input_afinfo* %13, %struct.xfrm_input_afinfo** %11, align 8
  %14 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %11, align 8
  %15 = icmp ne %struct.xfrm_input_afinfo* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EAFNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %30

19:                                               ; preds = %4
  %20 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %11, align 8
  %21 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %20, i32 0, i32 0
  %22 = load i32 (%struct.sk_buff.0*, i32, i32)*, i32 (%struct.sk_buff.0*, i32, i32)** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = bitcast %struct.sk_buff* %23 to %struct.sk_buff.0*
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.sk_buff.0* %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.xfrm_input_afinfo* @xfrm_input_get_afinfo(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
