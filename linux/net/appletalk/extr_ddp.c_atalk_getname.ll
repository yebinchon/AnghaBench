; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_at = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atalk_sock = type { i32, i32, i32, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@AF_APPLETALK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @atalk_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_at, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.atalk_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.atalk_sock* @at_sk(%struct.sock* %14)
  store %struct.atalk_sock* %15, %struct.atalk_sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = load i32, i32* @SOCK_ZAPPED, align 4
  %22 = call i64 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  %26 = call i64 @atalk_autobind(%struct.sock* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %78

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %3
  %31 = call i32 @memset(%struct.sockaddr_at* %7, i32 0, i32 16)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_ESTABLISHED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %78

43:                                               ; preds = %34
  %44 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %45 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %50 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %55 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %73

58:                                               ; preds = %30
  %59 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %60 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %65 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.atalk_sock*, %struct.atalk_sock** %9, align 8
  %70 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %58, %43
  %74 = load i32, i32* @AF_APPLETALK, align 4
  %75 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %7, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %77 = call i32 @memcpy(%struct.sockaddr* %76, %struct.sockaddr_at* %7, i32 16)
  store i32 16, i32* %10, align 4
  br label %78

78:                                               ; preds = %73, %42, %28
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @atalk_autobind(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_at*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_at*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
