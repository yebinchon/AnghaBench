; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_opt_dup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_opt_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipv6_opt_hdr* (%struct.ipv6_opt_hdr*, i32)* @ip6_opt_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipv6_opt_hdr* @ip6_opt_dup(%struct.ipv6_opt_hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.ipv6_opt_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.ipv6_opt_hdr* %0, %struct.ipv6_opt_hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %3, align 8
  %6 = icmp ne %struct.ipv6_opt_hdr* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %3, align 8
  %9 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %3, align 8
  %10 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = mul nsw i32 %12, 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ipv6_opt_hdr* @kmemdup(%struct.ipv6_opt_hdr* %8, i32 %13, i32 %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi %struct.ipv6_opt_hdr* [ %15, %7 ], [ null, %16 ]
  ret %struct.ipv6_opt_hdr* %18
}

declare dso_local %struct.ipv6_opt_hdr* @kmemdup(%struct.ipv6_opt_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
