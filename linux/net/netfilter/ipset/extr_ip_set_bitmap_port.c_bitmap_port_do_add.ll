; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_do_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_do_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_port_adt_elem = type { i32 }
%struct.bitmap_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_port_adt_elem*, %struct.bitmap_port*, i32, i64)* @bitmap_port_do_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_do_add(%struct.bitmap_port_adt_elem* %0, %struct.bitmap_port* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bitmap_port_adt_elem*, align 8
  %6 = alloca %struct.bitmap_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bitmap_port_adt_elem* %0, %struct.bitmap_port_adt_elem** %5, align 8
  store %struct.bitmap_port* %1, %struct.bitmap_port** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bitmap_port_adt_elem*, %struct.bitmap_port_adt_elem** %5, align 8
  %10 = getelementptr inbounds %struct.bitmap_port_adt_elem, %struct.bitmap_port_adt_elem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %13 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
