; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.h_l2tp_tunnel_dst_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.h_l2tp_tunnel_dst_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_tunnel = type { i32 }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_tunnel*)* @l2tp_tunnel_dst_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_tunnel_dst_mtu(%struct.l2tp_tunnel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2tp_tunnel*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.l2tp_tunnel* %0, %struct.l2tp_tunnel** %3, align 8
  %6 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %7 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dst_entry* @sk_dst_get(i32 %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %4, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %11 = icmp ne %struct.dst_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %15 = call i32 @dst_mtu(%struct.dst_entry* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %17 = call i32 @dst_release(%struct.dst_entry* %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.dst_entry* @sk_dst_get(i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
