; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_secpath_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_secpath_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_path = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }

@SKB_EXT_SEC_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sec_path* @secpath_set(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sec_path*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sec_path*, align 8
  %5 = alloca %struct.sec_path*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = load i32, i32* @SKB_EXT_SEC_PATH, align 4
  %8 = call %struct.sec_path* @skb_ext_find(%struct.sk_buff* %6, i32 %7)
  store %struct.sec_path* %8, %struct.sec_path** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = load i32, i32* @SKB_EXT_SEC_PATH, align 4
  %11 = call %struct.sec_path* @skb_ext_add(%struct.sk_buff* %9, i32 %10)
  store %struct.sec_path* %11, %struct.sec_path** %4, align 8
  %12 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %13 = icmp ne %struct.sec_path* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sec_path* null, %struct.sec_path** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.sec_path*, %struct.sec_path** %5, align 8
  %17 = icmp ne %struct.sec_path* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  store %struct.sec_path* %19, %struct.sec_path** %2, align 8
  br label %30

20:                                               ; preds = %15
  %21 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %22 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %26 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  store %struct.sec_path* %29, %struct.sec_path** %2, align 8
  br label %30

30:                                               ; preds = %20, %18, %14
  %31 = load %struct.sec_path*, %struct.sec_path** %2, align 8
  ret %struct.sec_path* %31
}

declare dso_local %struct.sec_path* @skb_ext_find(%struct.sk_buff*, i32) #1

declare dso_local %struct.sec_path* @skb_ext_add(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
