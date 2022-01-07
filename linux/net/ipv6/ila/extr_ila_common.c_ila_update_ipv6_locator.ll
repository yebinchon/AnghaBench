; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_update_ipv6_locator.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_update_ipv6_locator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ila_params = type { i32, i32 }
%struct.ipv6hdr = type { i32 }
%struct.ila_addr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ila_update_ipv6_locator(%struct.sk_buff* %0, %struct.ila_params* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ila_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.ila_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ila_params* %1, %struct.ila_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %9)
  store %struct.ipv6hdr* %10, %struct.ipv6hdr** %7, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %12 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %11, i32 0, i32 0
  %13 = call %struct.ila_addr* @ila_a2i(i32* %12)
  store %struct.ila_addr* %13, %struct.ila_addr** %8, align 8
  %14 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %15 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %50 [
    i32 131, label %17
    i32 130, label %21
    i32 129, label %45
    i32 128, label %49
  ]

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %20 = call i32 @ila_csum_adjust_transport(%struct.sk_buff* %18, %struct.ila_params* %19)
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.ila_addr*, %struct.ila_addr** %8, align 8
  %26 = getelementptr inbounds %struct.ila_addr, %struct.ila_addr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ila_csum_neutral_set(i32 %27)
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %50

32:                                               ; preds = %24
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.ila_addr*, %struct.ila_addr** %8, align 8
  %35 = getelementptr inbounds %struct.ila_addr, %struct.ila_addr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ila_csum_neutral_set(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.ila_addr*, %struct.ila_addr** %8, align 8
  %43 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %44 = call i32 @ila_csum_do_neutral_fmt(%struct.ila_addr* %42, %struct.ila_params* %43)
  br label %50

45:                                               ; preds = %3
  %46 = load %struct.ila_addr*, %struct.ila_addr** %8, align 8
  %47 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %48 = call i32 @ila_csum_do_neutral_nofmt(%struct.ila_addr* %46, %struct.ila_params* %47)
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %3, %49, %45, %41, %39, %31, %17
  %51 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %52 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ila_addr*, %struct.ila_addr** %8, align 8
  %55 = getelementptr inbounds %struct.ila_addr, %struct.ila_addr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ila_addr* @ila_a2i(i32*) #1

declare dso_local i32 @ila_csum_adjust_transport(%struct.sk_buff*, %struct.ila_params*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ila_csum_neutral_set(i32) #1

declare dso_local i32 @ila_csum_do_neutral_fmt(%struct.ila_addr*, %struct.ila_params*) #1

declare dso_local i32 @ila_csum_do_neutral_nofmt(%struct.ila_addr*, %struct.ila_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
