; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_add_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_add_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_ipmac_adt_elem = type { i64 }
%struct.ip_set_ext = type { i64 }
%struct.ip_set = type { i64 }
%struct.bitmap_ipmac = type { i32 }

@IPSET_ADD_START_STORED_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.bitmap_ipmac_adt_elem*, %struct.ip_set_ext*, %struct.ip_set*, %struct.bitmap_ipmac*, i32)* @bitmap_ipmac_add_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_add_timeout(i64* %0, %struct.bitmap_ipmac_adt_elem* %1, %struct.ip_set_ext* %2, %struct.ip_set* %3, %struct.bitmap_ipmac* %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca %struct.bitmap_ipmac_adt_elem*, align 8
  %9 = alloca %struct.ip_set_ext*, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca %struct.bitmap_ipmac*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store %struct.bitmap_ipmac_adt_elem* %1, %struct.bitmap_ipmac_adt_elem** %8, align 8
  store %struct.ip_set_ext* %2, %struct.ip_set_ext** %9, align 8
  store %struct.ip_set* %3, %struct.ip_set** %10, align 8
  store %struct.bitmap_ipmac* %4, %struct.bitmap_ipmac** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %15 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @IPSET_ADD_START_STORED_TIMEOUT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %6
  %21 = load i64, i64* %13, align 8
  %22 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %23 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @ip_set_timeout_set(i64* %30, i64 %31)
  br label %46

33:                                               ; preds = %6
  %34 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %8, align 8
  %35 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @ip_set_timeout_set(i64* %39, i64 %40)
  br label %45

42:                                               ; preds = %33
  %43 = load i64, i64* %13, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %29
  ret i32 0
}

declare dso_local i32 @ip_set_timeout_set(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
