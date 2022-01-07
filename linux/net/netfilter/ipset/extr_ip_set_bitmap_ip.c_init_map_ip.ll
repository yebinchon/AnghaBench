; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_init_map_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_init_map_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ip*, i32 }
%struct.bitmap_ip = type { %struct.ip_set*, i32, i8*, i8*, i8*, i8*, i32, i32 }

@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.bitmap_ip*, i8*, i8*, i8*, i8*, i32)* @init_map_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_map_ip(%struct.ip_set* %0, %struct.bitmap_ip* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_set*, align 8
  %10 = alloca %struct.bitmap_ip*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %9, align 8
  store %struct.bitmap_ip* %1, %struct.bitmap_ip** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %17 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ip_set_alloc(i32 %18)
  %20 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %21 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %23 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %55

27:                                               ; preds = %7
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %30 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %33 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %36 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %39 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %42 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %44 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %45 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %47 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %48 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %47, i32 0, i32 0
  store %struct.ip_set* %46, %struct.ip_set** %48, align 8
  %49 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %50 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %51 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %50, i32 0, i32 1
  store %struct.bitmap_ip* %49, %struct.bitmap_ip** %51, align 8
  %52 = load i32, i32* @NFPROTO_IPV4, align 4
  %53 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %54 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %27, %26
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @ip_set_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
