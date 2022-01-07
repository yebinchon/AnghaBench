; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_do_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_ipmac_adt_elem = type { i32, i64, i32 }
%struct.bitmap_ipmac = type { i32, i32 }
%struct.bitmap_ipmac_elem = type { i64, i32 }

@MAC_FILLED = common dso_local global i64 0, align 8
@IPSET_FLAG_EXIST = common dso_local global i32 0, align 4
@IPSET_ADD_FAILED = common dso_local global i32 0, align 4
@IPSET_ADD_START_STORED_TIMEOUT = common dso_local global i32 0, align 4
@MAC_UNSET = common dso_local global i64 0, align 8
@IPSET_ADD_STORE_PLAIN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac*, i32, i64)* @bitmap_ipmac_do_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_do_add(%struct.bitmap_ipmac_adt_elem* %0, %struct.bitmap_ipmac* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_ipmac_adt_elem*, align 8
  %7 = alloca %struct.bitmap_ipmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bitmap_ipmac_elem*, align 8
  store %struct.bitmap_ipmac_adt_elem* %0, %struct.bitmap_ipmac_adt_elem** %6, align 8
  store %struct.bitmap_ipmac* %1, %struct.bitmap_ipmac** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %12 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %15 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call %struct.bitmap_ipmac_elem* @get_elem(i32 %13, i32 %16, i64 %17)
  store %struct.bitmap_ipmac_elem* %18, %struct.bitmap_ipmac_elem** %10, align 8
  %19 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %20 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %23 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %4
  %28 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %29 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC_FILLED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %27
  %34 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %35 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IPSET_FLAG_EXIST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %45 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %48 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ether_addr_equal(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %43
  %53 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %54 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %57 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clear_bit(i32 %55, i32 %58)
  %60 = call i32 (...) @smp_mb__after_atomic()
  %61 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %62 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %65 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ether_addr_copy(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %52, %43, %38, %33
  %69 = load i32, i32* @IPSET_ADD_FAILED, align 4
  store i32 %69, i32* %5, align 4
  br label %120

70:                                               ; preds = %27
  %71 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %72 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @IPSET_ADD_FAILED, align 4
  store i32 %76, i32* %5, align 4
  br label %120

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %80 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %83 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clear_bit(i32 %81, i32 %84)
  %86 = call i32 (...) @smp_mb__after_atomic()
  %87 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %88 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %91 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ether_addr_copy(i32 %89, i32 %92)
  %94 = load i64, i64* @MAC_FILLED, align 8
  %95 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %96 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @IPSET_ADD_START_STORED_TIMEOUT, align 4
  store i32 %97, i32* %5, align 4
  br label %120

98:                                               ; preds = %4
  %99 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %100 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %105 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bitmap_ipmac_adt_elem*, %struct.bitmap_ipmac_adt_elem** %6, align 8
  %108 = getelementptr inbounds %struct.bitmap_ipmac_adt_elem, %struct.bitmap_ipmac_adt_elem* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ether_addr_copy(i32 %106, i32 %109)
  %111 = load i64, i64* @MAC_FILLED, align 8
  %112 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %113 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %5, align 4
  br label %120

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* @MAC_UNSET, align 8
  %117 = load %struct.bitmap_ipmac_elem*, %struct.bitmap_ipmac_elem** %10, align 8
  %118 = getelementptr inbounds %struct.bitmap_ipmac_elem, %struct.bitmap_ipmac_elem* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @IPSET_ADD_STORE_PLAIN_TIMEOUT, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %115, %103, %78, %75, %68
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.bitmap_ipmac_elem* @get_elem(i32, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
