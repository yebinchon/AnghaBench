; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_alloc_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_alloc_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32* }
%struct.dn_scp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@PF_DECnet = common dso_local global i32 0, align 4
@dn_proto = common dso_local global i32 0, align 4
@dn_proto_ops = common dso_local global i32 0, align 4
@dn_nsp_backlog_rcv = common dso_local global i32 0, align 4
@dn_destruct = common dso_local global i32 0, align 4
@sysctl_decnet_wmem = common dso_local global i32* null, align 8
@sysctl_decnet_rmem = common dso_local global i32* null, align 8
@DN_O = common dso_local global i32 0, align 4
@DN_SEND = common dso_local global i8* null, align 8
@NSP_FC_NONE = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@ACC_IMMED = common dso_local global i32 0, align 4
@AF_DECnet = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"LINUX\00", align 1
@NSP_MAX_WINDOW = common dso_local global i32 0, align 4
@NSP_MIN_WINDOW = common dso_local global i32 0, align 4
@NSP_INITIAL_SRTT = common dso_local global i32 0, align 4
@NSP_INITIAL_RTTVAR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@dn_keepalive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32)* @dn_alloc_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dn_alloc_sock(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_scp*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load i32, i32* @PF_DECnet, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.sock* @sk_alloc(%struct.net* %11, i32 %12, i32 %13, i32* @dn_proto, i32 %14)
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %159

19:                                               ; preds = %4
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = icmp ne %struct.socket* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  store i32* @dn_proto_ops, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call i32 @sock_init_data(%struct.socket* %26, %struct.sock* %27)
  %29 = load i32, i32* @dn_nsp_backlog_rcv, align 4
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @dn_destruct, align 4
  %33 = load %struct.sock*, %struct.sock** %10, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @PF_DECnet, align 4
  %38 = load %struct.sock*, %struct.sock** %10, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @sysctl_decnet_wmem, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** @sysctl_decnet_rmem, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = call %struct.dn_scp* @DN_SK(%struct.sock* %55)
  store %struct.dn_scp* %56, %struct.dn_scp** %9, align 8
  %57 = load i32, i32* @DN_O, align 4
  %58 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %59 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %58, i32 0, i32 35
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %61 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %63 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %65 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %64, i32 0, i32 34
  store i64 0, i64* %65, align 8
  %66 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %67 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %66, i32 0, i32 33
  store i64 0, i64* %67, align 8
  %68 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %69 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %68, i32 0, i32 32
  store i64 0, i64* %69, align 8
  %70 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %71 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %70, i32 0, i32 31
  store i64 0, i64* %71, align 8
  %72 = load i8*, i8** @DN_SEND, align 8
  %73 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 30
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @DN_SEND, align 8
  %76 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %77 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %76, i32 0, i32 29
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %79 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %78, i32 0, i32 28
  store i64 0, i64* %79, align 8
  %80 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %81 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %83 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %82, i32 0, i32 27
  store i64 0, i64* %83, align 8
  %84 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %85 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %87 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %86, i32 0, i32 26
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @NSP_FC_NONE, align 4
  %89 = or i32 1, %88
  %90 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %91 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %93 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %92, i32 0, i32 25
  store i64 0, i64* %93, align 8
  %94 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %95 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %94, i32 0, i32 5
  store i32 3, i32* %95, align 4
  %96 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %97 = sub nsw i64 230, %96
  %98 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %99 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %98, i32 0, i32 24
  store i64 %97, i64* %99, align 8
  %100 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %101 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %100, i32 0, i32 23
  store i64 0, i64* %101, align 8
  %102 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %103 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %102, i32 0, i32 6
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* @ACC_IMMED, align 4
  %105 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %106 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %105, i32 0, i32 22
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @AF_DECnet, align 8
  %108 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %109 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %108, i32 0, i32 21
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @AF_DECnet, align 8
  %112 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %113 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %112, i32 0, i32 20
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %116 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %115, i32 0, i32 19
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 5, i32* %117, align 8
  %118 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %119 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %118, i32 0, i32 19
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %123 = load i32, i32* @NSP_MAX_WINDOW, align 4
  %124 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %125 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %124, i32 0, i32 18
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @NSP_MIN_WINDOW, align 4
  %127 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %128 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %127, i32 0, i32 17
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @NSP_INITIAL_SRTT, align 4
  %130 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %131 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %130, i32 0, i32 16
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @NSP_INITIAL_RTTVAR, align 4
  %133 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %134 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %133, i32 0, i32 15
  store i32 %132, i32* %134, align 8
  %135 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %136 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %135, i32 0, i32 14
  store i64 0, i64* %136, align 8
  %137 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %138 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %137, i32 0, i32 13
  %139 = call i32 @skb_queue_head_init(i32* %138)
  %140 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %141 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %140, i32 0, i32 12
  %142 = call i32 @skb_queue_head_init(i32* %141)
  %143 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %144 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %143, i32 0, i32 11
  %145 = call i32 @skb_queue_head_init(i32* %144)
  %146 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %147 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %146, i32 0, i32 10
  store i64 0, i64* %147, align 8
  %148 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %149 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %148, i32 0, i32 9
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @HZ, align 4
  %151 = mul nsw i32 10, %150
  %152 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %153 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @dn_keepalive, align 4
  %155 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %156 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  %157 = load %struct.sock*, %struct.sock** %10, align 8
  %158 = call i32 @dn_start_slow_timer(%struct.sock* %157)
  br label %159

159:                                              ; preds = %25, %18
  %160 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %160
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @dn_start_slow_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
