; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_zerocopy_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_zerocopy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubuf_info = type { i32, i32 (%struct.ubuf_info*, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_zerocopy_put(%struct.ubuf_info* %0) #0 {
  %2 = alloca %struct.ubuf_info*, align 8
  store %struct.ubuf_info* %0, %struct.ubuf_info** %2, align 8
  %3 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %4 = icmp ne %struct.ubuf_info* %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %6, i32 0, i32 2
  %8 = call i64 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %12 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %11, i32 0, i32 1
  %13 = load i32 (%struct.ubuf_info*, i32)*, i32 (%struct.ubuf_info*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.ubuf_info*, i32)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %17 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %16, i32 0, i32 1
  %18 = load i32 (%struct.ubuf_info*, i32)*, i32 (%struct.ubuf_info*, i32)** %17, align 8
  %19 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %20 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %21 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(%struct.ubuf_info* %19, i32 %22)
  br label %28

24:                                               ; preds = %10
  %25 = load %struct.ubuf_info*, %struct.ubuf_info** %2, align 8
  %26 = call i32 @skb_from_uarg(%struct.ubuf_info* %25)
  %27 = call i32 @consume_skb(i32 %26)
  br label %28

28:                                               ; preds = %24, %15
  br label %29

29:                                               ; preds = %28, %5, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @consume_skb(i32) #1

declare dso_local i32 @skb_from_uarg(%struct.ubuf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
