; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_is_garp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_is_garp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, i32*, i64, i64, i64, i8*, i8*)* @arp_is_garp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_is_garp(%struct.net* %0, %struct.net_device* %1, i32* %2, i64 %3, i64 %4, i64 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* @ARPOP_REPLY, align 4
  %27 = call i64 @htons(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8*, i8** %16, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcmp(i8* %33, i8* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %32, %29
  %42 = phi i1 [ false, %29 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %41, %24, %8
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.net*, %struct.net** %9, align 8
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @inet_addr_type_dev_table(%struct.net* %48, %struct.net_device* %49, i64 %50)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RTN_UNICAST, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %17, align 4
  ret i32 %60
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @inet_addr_type_dev_table(%struct.net*, %struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
