; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.smc_sock = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @smc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.smc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.smc_sock* @smc_sk(%struct.sock* %16)
  store %struct.smc_sock* %17, %struct.smc_sock** %9, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %95

24:                                               ; preds = %3
  %25 = load i32, i32* @EAFNOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_UNSPEC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %95

45:                                               ; preds = %38, %32, %24
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AF_UNSPEC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @INADDR_ANY, align 4
  %57 = call i64 @htonl(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %95

60:                                               ; preds = %51, %45
  %61 = load %struct.sock*, %struct.sock** %8, align 8
  %62 = call i32 @lock_sock(%struct.sock* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SMC_INIT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %72 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %60
  br label %92

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %81 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  %86 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %87 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @kernel_bind(%struct.TYPE_6__* %88, %struct.sockaddr* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %76, %75
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = call i32 @release_sock(%struct.sock* %93)
  br label %95

95:                                               ; preds = %92, %59, %44, %23
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @kernel_bind(%struct.TYPE_6__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
