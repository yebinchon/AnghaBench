; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuplepr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuplepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net* %3, %struct.nf_conntrack_tuple* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nf_conntrack_tuple*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.net* %3, %struct.net** %10, align 8
  store %struct.nf_conntrack_tuple* %4, %struct.nf_conntrack_tuple** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_l4proto(%struct.sk_buff* %14, i32 %15, i32 %16, i32* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %30

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.net*, %struct.net** %10, align 8
  %28 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %11, align 8
  %29 = call i32 @nf_ct_get_tuple(%struct.sk_buff* %22, i32 %23, i32 %24, i32 %25, i32 %26, %struct.net* %27, %struct.nf_conntrack_tuple* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @get_l4proto(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nf_ct_get_tuple(%struct.sk_buff*, i32, i32, i32, i32, %struct.net*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
