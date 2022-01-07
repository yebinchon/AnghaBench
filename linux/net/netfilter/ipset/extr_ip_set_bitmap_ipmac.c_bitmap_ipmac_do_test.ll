; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_ipmac_adt_elem = type { i32, i64, i32 }
%struct.bitmap_ipmac = type { i32, i32 }
%struct.bitmap_ipmac_elem = type { i64, i32 }

@MAC_FILLED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac*, i64)* @bitmap_ipmac_do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_do_test(%struct.bitmap_ipmac_adt_elem* %0, %struct.bitmap_ipmac* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_ipmac_adt_elem*, align 8
  %6 = alloca %struct.bitmap_ipmac*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bitmap_ipmac_elem*, align 8
  store %struct.bitmap_ipmac_adt_elem* %0, %struct.bitmap_ipmac_adt_elem** %5, align 8
  store %struct.bitmap_ipmac* %1, %struct.bitmap_ipmac** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %5, align 8
  %10 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %13 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %20 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %5, align 8
  %23 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.bitmap_ipmac_elem* @get_const_elem(i32 %21, i32 %24, i64 %25)
  store %struct.bitmap_ipmac_elem* %26, %struct.bitmap_ipmac_elem** %8, align 8
  %27 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %5, align 8
  %28 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %8, align 8
  %33 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAC_FILLED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %5, align 8
  %39 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %8, align 8
  %42 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ether_addr_equal(i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %31, %18
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %37, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.bitmap_ipmac_elem* @get_const_elem(i32, i32, i64) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
