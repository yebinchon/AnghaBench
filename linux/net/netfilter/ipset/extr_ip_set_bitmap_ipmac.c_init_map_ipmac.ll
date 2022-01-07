; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_init_map_ipmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_init_map_ipmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ipmac*, i32 }
%struct.bitmap_ipmac = type { %struct.ip_set*, i8*, i8*, i8*, i32, i32 }

@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.bitmap_ipmac*, i8*, i8*, i8*)* @init_map_ipmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_map_ipmac(%struct.ip_set* %0, %struct.bitmap_ipmac* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_set*, align 8
  %8 = alloca %struct.bitmap_ipmac*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %7, align 8
  store %struct.bitmap_ipmac* %1, %struct.bitmap_ipmac** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %13 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ip_set_alloc(i32 %14)
  %16 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %17 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %19 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %26 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %29 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %32 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %34 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %35 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %37 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %38 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %37, i32 0, i32 0
  store %struct.ip_set* %36, %struct.ip_set** %38, align 8
  %39 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %40 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %41 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %40, i32 0, i32 1
  store %struct.bitmap_ipmac* %39, %struct.bitmap_ipmac** %41, align 8
  %42 = load i32, i32* @NFPROTO_IPV4, align 4
  %43 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %44 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %23, %22
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @ip_set_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
