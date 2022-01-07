; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.pipe_inode_info = type { i32 }
%struct.smc_sock = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i64*, %struct.pipe_inode_info*, i64, i32)* }

@ENOTCONN = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@SMC_LISTEN = common dso_local global i64 0, align 8
@SMC_PEERFINCLOSEWAIT = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)* @smc_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_splice_read(%struct.socket* %0, i64* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.smc_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load i32, i32* @ENOTCONN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.smc_sock* @smc_sk(%struct.sock* %19)
  store %struct.smc_sock* %20, %struct.smc_sock** %12, align 8
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMC_CLOSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load %struct.sock*, %struct.sock** %11, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RCV_SHUTDOWN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %105

36:                                               ; preds = %28, %5
  %37 = load %struct.sock*, %struct.sock** %11, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMC_INIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SMC_LISTEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SMC_CLOSED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %36
  br label %105

55:                                               ; preds = %48
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SMC_PEERFINCLOSEWAIT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %105

62:                                               ; preds = %55
  %63 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %64 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %69 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_4__*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.TYPE_4__*, i64*, %struct.pipe_inode_info*, i64, i32)** %73, align 8
  %75 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %76 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 %74(%struct.TYPE_4__* %77, i64* %78, %struct.pipe_inode_info* %79, i64 %80, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %104

83:                                               ; preds = %62
  %84 = load i64*, i64** %7, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ESPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %105

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %96, i32* %10, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %95
  %99 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %100 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @smc_rx_recvmsg(%struct.smc_sock* %99, i32* null, %struct.pipe_inode_info* %100, i64 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %98, %67
  br label %105

105:                                              ; preds = %104, %87, %61, %54, %35
  %106 = load %struct.sock*, %struct.sock** %11, align 8
  %107 = call i32 @release_sock(%struct.sock* %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_rx_recvmsg(%struct.smc_sock*, i32*, %struct.pipe_inode_info*, i64, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
