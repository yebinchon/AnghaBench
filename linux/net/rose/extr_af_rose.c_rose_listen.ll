; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.rose_sock = type { i32*, i32, i32, i64 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@ROSE_ADDR_LEN = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @rose_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.rose_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_LISTEN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.rose_sock* @rose_sk(%struct.sock* %17)
  store %struct.rose_sock* %18, %struct.rose_sock** %7, align 8
  %19 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %20 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 2
  %23 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %24 = call i32 @memset(i32* %22, i32 0, i32 %23)
  %25 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %26 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %25, i32 0, i32 1
  %27 = load i32, i32* @AX25_ADDR_LEN, align 4
  %28 = call i32 @memset(i32* %26, i32 0, i32 %27)
  %29 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %30 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @AX25_ADDR_LEN, align 4
  %33 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @memset(i32* %31, i32 0, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @TCP_LISTEN, align 8
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
