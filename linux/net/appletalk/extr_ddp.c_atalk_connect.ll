; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.atalk_sock = type { i64, i32, i32 }
%struct.sockaddr_at = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATADDR_BCAST = common dso_local global i64 0, align 8
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"atalk_connect: %s is broken and did not set SO_BROADCAST.\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @atalk_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.atalk_sock*, align 8
  %12 = alloca %struct.sockaddr_at*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call %struct.atalk_sock* @at_sk(%struct.sock* %17)
  store %struct.atalk_sock* %18, %struct.atalk_sock** %11, align 8
  %19 = load i32, i32* @TCP_CLOSE, align 4
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SS_UNCONNECTED, align 4
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %110

31:                                               ; preds = %4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %33, %struct.sockaddr_at** %12, align 8
  %34 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %35 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_APPLETALK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EAFNOSUPPORT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %110

42:                                               ; preds = %31
  %43 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %44 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATADDR_BCAST, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = load i32, i32* @SOCK_BROADCAST, align 4
  %52 = call i64 @sock_flag(%struct.sock* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %49, %42
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call i32 @lock_sock(%struct.sock* %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = load i32, i32* @SOCK_ZAPPED, align 4
  %66 = call i64 @sock_flag(%struct.sock* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = call i64 @atalk_autobind(%struct.sock* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %106

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* @ENETUNREACH, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %78 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %77, i32 0, i32 1
  %79 = call i32 @atrtr_get_dev(%struct.TYPE_4__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %106

82:                                               ; preds = %74
  %83 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %84 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %87 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %89 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %93 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sockaddr_at*, %struct.sockaddr_at** %12, align 8
  %95 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.atalk_sock*, %struct.atalk_sock** %11, align 8
  %99 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @SS_CONNECTED, align 4
  %101 = load %struct.socket*, %struct.socket** %6, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @TCP_ESTABLISHED, align 4
  %104 = load %struct.sock*, %struct.sock** %10, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %82, %81, %72
  %107 = load %struct.sock*, %struct.sock** %10, align 8
  %108 = call i32 @release_sock(%struct.sock* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %39, %28
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @atalk_autobind(%struct.sock*) #1

declare dso_local i32 @atrtr_get_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
