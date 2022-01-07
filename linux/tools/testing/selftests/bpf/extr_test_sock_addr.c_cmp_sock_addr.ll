; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_cmp_sock_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_cmp_sock_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (i32, %struct.sockaddr*, i32*)*, i32, %struct.sockaddr_storage*, i32)* @cmp_sock_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_sock_addr(i64 (i32, %struct.sockaddr*, i32*)* %0, i32 %1, %struct.sockaddr_storage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64 (i32, %struct.sockaddr*, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  store i64 (i32, %struct.sockaddr*, i32*)* %0, i64 (i32, %struct.sockaddr*, i32*)** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 %12)
  %14 = load i64 (i32, %struct.sockaddr*, i32*)*, i64 (i32, %struct.sockaddr*, i32*)** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %17 = call i64 %14(i32 %15, %struct.sockaddr* %16, i32* %11)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cmp_addr(%struct.sockaddr_storage* %10, %struct.sockaddr_storage* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %19
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @cmp_addr(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
