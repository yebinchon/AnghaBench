; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32, i32, i32* }
%struct.rxrpc_local = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_7__, i32, i32, %struct.rxrpc_local*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c",{%d},,%zu\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" = %d [bad addr]\00", align 1
@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@RXRPC_SOCK_CONNECTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @rxrpc_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rxrpc_local*, align 8
  %9 = alloca %struct.rxrpc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %13)
  store %struct.rxrpc_sock* %14, %struct.rxrpc_sock** %9, align 8
  %15 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %16 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19)
  %21 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MSG_OOB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %144

30:                                               ; preds = %3
  %31 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rxrpc_validate_address(%struct.rxrpc_sock* %36, i32* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %144

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %53 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %52, i32 0, i32 0
  %54 = call i32 @lock_sock(%struct.TYPE_7__* %53)
  %55 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %56 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %133 [
    i32 128, label %59
    i32 131, label %59
    i32 132, label %109
    i32 130, label %128
    i32 129, label %128
  ]

59:                                               ; preds = %51, %51
  %60 = load i32, i32* @AF_RXRPC, align 4
  %61 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %62 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 8
  %64 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %65 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @SOCK_DGRAM, align 4
  %68 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %69 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %72 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %75 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %79 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %85 [
    i32 134, label %81
  ]

81:                                               ; preds = %59
  %82 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %83 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  br label %88

85:                                               ; preds = %59
  %86 = load i32, i32* @EAFNOSUPPORT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %136

88:                                               ; preds = %81
  %89 = load %struct.socket*, %struct.socket** %5, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sock_net(i32 %91)
  %93 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %94 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %93, i32 0, i32 4
  %95 = call %struct.rxrpc_local* @rxrpc_lookup_local(i32 %92, %struct.TYPE_6__* %94)
  store %struct.rxrpc_local* %95, %struct.rxrpc_local** %8, align 8
  %96 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %97 = call i32 @IS_ERR(%struct.rxrpc_local* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %101 = call i32 @PTR_ERR(%struct.rxrpc_local* %100)
  store i32 %101, i32* %10, align 4
  br label %136

102:                                              ; preds = %88
  %103 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %104 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %105 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %104, i32 0, i32 3
  store %struct.rxrpc_local* %103, %struct.rxrpc_local** %105, align 8
  %106 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %107 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 132, i32* %108, align 8
  br label %109

109:                                              ; preds = %51, %102
  %110 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @RXRPC_SOCK_CONNECTED, align 4
  %116 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %117 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %116, i32 0, i32 2
  %118 = call i32 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %122 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %121, i32 0, i32 1
  %123 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %124 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %126 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %125, i32 0, i32 1
  store i32 4, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %114, %109
  br label %128

128:                                              ; preds = %51, %51, %127
  %129 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %130 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @rxrpc_do_sendmsg(%struct.rxrpc_sock* %129, %struct.msghdr* %130, i64 %131)
  store i32 %132, i32* %10, align 4
  br label %140

133:                                              ; preds = %51
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %99, %85
  %137 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %9, align 8
  %138 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %137, i32 0, i32 0
  %139 = call i32 @release_sock(%struct.TYPE_7__* %138)
  br label %140

140:                                              ; preds = %136, %128
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %46, %27
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @rxrpc_validate_address(%struct.rxrpc_sock*, i32*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_7__*) #1

declare dso_local %struct.rxrpc_local* @rxrpc_lookup_local(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @IS_ERR(%struct.rxrpc_local*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_local*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_do_sendmsg(%struct.rxrpc_sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @release_sock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
