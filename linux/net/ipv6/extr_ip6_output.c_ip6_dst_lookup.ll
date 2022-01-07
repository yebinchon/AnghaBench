; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_dst_lookup(%struct.net* %0, %struct.sock* %1, %struct.dst_entry** %2, %struct.flowi6* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.dst_entry**, align 8
  %8 = alloca %struct.flowi6*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.dst_entry** %2, %struct.dst_entry*** %7, align 8
  store %struct.flowi6* %3, %struct.flowi6** %8, align 8
  %9 = load %struct.dst_entry**, %struct.dst_entry*** %7, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %9, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = load %struct.dst_entry**, %struct.dst_entry*** %7, align 8
  %13 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %14 = call i32 @ip6_dst_lookup_tail(%struct.net* %10, %struct.sock* %11, %struct.dst_entry** %12, %struct.flowi6* %13)
  ret i32 %14
}

declare dso_local i32 @ip6_dst_lookup_tail(%struct.net*, %struct.sock*, %struct.dst_entry**, %struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
