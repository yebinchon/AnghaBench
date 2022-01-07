; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_dev.c_rose_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_dev.c_rose_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@ROSE_MIN_LEN = common dso_local global i64 0, align 8
@ROSE_GFI = common dso_local global i32 0, align 4
@ROSE_Q_BIT = common dso_local global i32 0, align 4
@ROSE_DATA = common dso_local global i32 0, align 4
@AX25_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @rose_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i64, i64* @ROSE_MIN_LEN, align 8
  %17 = add nsw i64 %16, 2
  %18 = call i8* @skb_push(%struct.sk_buff* %15, i64 %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i8* %23, i8* %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %6
  %30 = load i32, i32* @ROSE_GFI, align 4
  %31 = load i32, i32* @ROSE_Q_BIT, align 4
  %32 = or i32 %30, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %14, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %14, align 8
  store i8 0, i8* %36, align 1
  %38 = load i32, i32* @ROSE_DATA, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %14, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %14, align 8
  store i8 127, i8* %42, align 1
  %44 = load i32, i32* @AX25_P_IP, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %14, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  store i32 37, i32* %7, align 4
  br label %52

51:                                               ; preds = %29
  store i32 -37, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
