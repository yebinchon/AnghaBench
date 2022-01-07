; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_dev.c_rose_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_dev.c_rose_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64 }
%struct.sockaddr = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @rose_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcmp(i64 %12, i64 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @rose_add_loopback_node(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %29
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @rose_del_loopback_node(i32* %43)
  br label %45

45:                                               ; preds = %39, %22
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i64 %48, i64 %51, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %37, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memcmp(i64, i64, i32) #1

declare dso_local i32 @rose_add_loopback_node(i32*) #1

declare dso_local i32 @rose_del_loopback_node(i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
