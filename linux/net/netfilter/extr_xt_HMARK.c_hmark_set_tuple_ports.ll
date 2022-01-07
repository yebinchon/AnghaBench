; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_set_tuple_ports.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_set_tuple_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hmark_tuple = type { i32, i32 }
%struct.xt_hmark_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.hmark_tuple*, %struct.xt_hmark_info*)* @hmark_set_tuple_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmark_set_tuple_ports(%struct.sk_buff* %0, i32 %1, %struct.hmark_tuple* %2, %struct.xt_hmark_info* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hmark_tuple*, align 8
  %8 = alloca %struct.xt_hmark_info*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hmark_tuple* %2, %struct.hmark_tuple** %7, align 8
  store %struct.xt_hmark_info* %3, %struct.xt_hmark_info** %8, align 8
  %10 = load %struct.hmark_tuple*, %struct.hmark_tuple** %7, align 8
  %11 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @proto_ports_offset(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %33

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hmark_tuple*, %struct.hmark_tuple** %7, align 8
  %24 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %23, i32 0, i32 0
  %25 = call i64 @skb_copy_bits(%struct.sk_buff* %21, i32 %22, i32* %24, i32 4)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.hmark_tuple*, %struct.hmark_tuple** %7, align 8
  %30 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %29, i32 0, i32 0
  %31 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %8, align 8
  %32 = call i32 @hmark_swap_ports(i32* %30, %struct.xt_hmark_info* %31)
  br label %33

33:                                               ; preds = %28, %27, %16
  ret void
}

declare dso_local i32 @proto_ports_offset(i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @hmark_swap_ports(i32*, %struct.xt_hmark_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
