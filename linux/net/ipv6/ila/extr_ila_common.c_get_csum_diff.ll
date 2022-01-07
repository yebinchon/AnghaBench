; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_get_csum_diff.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_get_csum_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32 }
%struct.ila_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6hdr*, %struct.ila_params*)* @get_csum_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csum_diff(%struct.ipv6hdr* %0, %struct.ila_params* %1) #0 {
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.ila_params*, align 8
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %3, align 8
  store %struct.ila_params* %1, %struct.ila_params** %4, align 8
  %5 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %6 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %5, i32 0, i32 0
  %7 = call i32 @ila_a2i(i32* %6)
  %8 = load %struct.ila_params*, %struct.ila_params** %4, align 8
  %9 = call i32 @get_csum_diff_iaddr(i32 %7, %struct.ila_params* %8)
  ret i32 %9
}

declare dso_local i32 @get_csum_diff_iaddr(i32, %struct.ila_params*) #1

declare dso_local i32 @ila_a2i(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
