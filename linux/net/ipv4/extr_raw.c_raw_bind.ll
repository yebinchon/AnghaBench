; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RT_TABLE_LOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.inet_sock* @inet_sk(%struct.sock* %12)
  store %struct.inet_sock* %13, %struct.inet_sock** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %8, align 8
  %16 = load i32, i32* @RT_TABLE_LOCAL, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_CLOSE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %3
  br label %100

29:                                               ; preds = %24
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @l3mdev_fib_table_by_index(i32 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i64 [ %40, %42 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %29
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @sock_net(%struct.sock* %50)
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @inet_addr_type_table(i32 %51, i64 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @EADDRNOTAVAIL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @RTN_LOCAL, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @RTN_MULTICAST, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @RTN_BROADCAST, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %100

78:                                               ; preds = %73, %69, %65, %49
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %84 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %86 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @RTN_MULTICAST, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @RTN_BROADCAST, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %78
  %95 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %96 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.sock*, %struct.sock** %4, align 8
  %99 = call i32 @sk_dst_reset(%struct.sock* %98)
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %97, %77, %28
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @l3mdev_fib_table_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @inet_addr_type_table(i32, i64, i32) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
