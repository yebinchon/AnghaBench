; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, %struct.iucv_message*, i32, i32, i8*, i32)*, i32 (i64, i32*)* }
%struct.iucv_message = type { i64, i64 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i32 }
%struct.iucv_sock = type { i64, i64 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_IUCV = common dso_local global i64 0, align 8
@pr_iucv = common dso_local global %struct.TYPE_2__* null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@iprm_shutdown = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@AF_IUCV_FLAG_SHT = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @iucv_sock_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.iucv_sock*, align 8
  %8 = alloca %struct.iucv_message, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %13)
  store %struct.iucv_sock* %14, %struct.iucv_sock** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SHUTDOWN_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %137

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %37 [
    i32 128, label %34
    i32 129, label %34
    i32 130, label %34
    i32 131, label %34
  ]

34:                                               ; preds = %28, %28, %28, %28
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %133

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SEND_SHUTDOWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SHUTDOWN_MASK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42, %38
  %47 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %48 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AF_IUCV_TRANS_IUCV, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %8, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %8, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (i64, %struct.iucv_message*, i32, i32, i8*, i32)*, i32 (i64, %struct.iucv_message*, i32, i32, i8*, i32)** %56, align 8
  %58 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %59 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @IUCV_IPRMDATA, align 4
  %62 = load i64, i64* @iprm_shutdown, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 %57(i64 %60, %struct.iucv_message* %8, i32 %61, i32 0, i8* %63, i32 8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 2, label %72
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @ENOTCONN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @ECONNRESET, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOTCONN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %72, %69
  br label %79

79:                                               ; preds = %78, %52
  br label %84

80:                                               ; preds = %46
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = load i32, i32* @AF_IUCV_FLAG_SHT, align 4
  %83 = call i32 @iucv_send_ctrl(%struct.sock* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %79
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @RCV_SHUTDOWN, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SHUTDOWN_MASK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %94, %85
  %99 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %100 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AF_IUCV_TRANS_IUCV, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %106 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32 (i64, i32*)*, i32 (i64, i32*)** %111, align 8
  %113 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %114 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 %112(i64 %115, i32* null)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @ENOTCONN, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %122, %104, %98
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = getelementptr inbounds %struct.sock, %struct.sock* %124, i32 0, i32 3
  %126 = call i32 @skb_queue_purge(i32* %125)
  br label %127

127:                                              ; preds = %123, %94
  %128 = load %struct.sock*, %struct.sock** %6, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 2
  %130 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %129, align 8
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = call i32 %130(%struct.sock* %131)
  br label %133

133:                                              ; preds = %127, %34
  %134 = load %struct.sock*, %struct.sock** %6, align 8
  %135 = call i32 @release_sock(%struct.sock* %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %25
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @iucv_send_ctrl(%struct.sock*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
