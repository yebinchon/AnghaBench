; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c___dn_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c___dn_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, %struct.socket* }
%struct.socket = type { i64 }
%struct.sockaddr_dn = type { i64, i32 }
%struct.dn_scp = type { i64, i32, i32, i32 }
%struct.flowidn = type { i32, i8*, i8*, i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EISCONN = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@DN_RUN = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@DN_CI = common dso_local global i64 0, align 8
@DN_CC = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DN_O = common dso_local global i64 0, align 8
@AF_DECnet = common dso_local global i64 0, align 8
@SDF_WILD = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@NSP_CI = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr_dn*, i32, i64*, i32)* @__dn_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dn_connect(%struct.sock* %0, %struct.sockaddr_dn* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr_dn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.dn_scp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flowidn, align 8
  %16 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sockaddr_dn* %1, %struct.sockaddr_dn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 3
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  store %struct.socket* %19, %struct.socket** %12, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call %struct.dn_scp* @DN_SK(%struct.sock* %20)
  store %struct.dn_scp* %21, %struct.dn_scp** %13, align 8
  %22 = load i32, i32* @EISCONN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.socket*, %struct.socket** %12, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SS_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %178

30:                                               ; preds = %5
  %31 = load %struct.socket*, %struct.socket** %12, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SS_CONNECTING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  %37 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %38 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DN_RUN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @SS_CONNECTED, align 8
  %44 = load %struct.socket*, %struct.socket** %12, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %178

46:                                               ; preds = %36
  %47 = load i32, i32* @ECONNREFUSED, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %50 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DN_CI, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %56 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DN_CC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @SS_UNCONNECTED, align 8
  %62 = load %struct.socket*, %struct.socket** %12, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %178

64:                                               ; preds = %54, %46
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = call i32 @dn_wait_run(%struct.sock* %65, i64* %66)
  store i32 %67, i32* %6, align 4
  br label %180

68:                                               ; preds = %30
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  %71 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %72 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DN_O, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %178

77:                                               ; preds = %68
  %78 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %79 = icmp eq %struct.sockaddr_dn* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 16
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %77
  br label %178

85:                                               ; preds = %80
  %86 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %87 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AF_DECnet, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %178

92:                                               ; preds = %85
  %93 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %94 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SDF_WILD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %178

100:                                              ; preds = %92
  %101 = load %struct.sock*, %struct.sock** %7, align 8
  %102 = load i32, i32* @SOCK_ZAPPED, align 4
  %103 = call i64 @sock_flag(%struct.sock* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.sock*, %struct.sock** %7, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 3
  %108 = load %struct.socket*, %struct.socket** %107, align 8
  %109 = call i32 @dn_auto_bind(%struct.socket* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %178

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %100
  %115 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %116 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %115, i32 0, i32 3
  %117 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %118 = call i32 @memcpy(i32* %116, %struct.sockaddr_dn* %117, i32 16)
  %119 = load i32, i32* @EHOSTUNREACH, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  %121 = call i32 @memset(%struct.flowidn* %15, i32 0, i32 32)
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 3
  store i32 %124, i32* %125, align 8
  %126 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %127 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %126, i32 0, i32 3
  %128 = call i8* @dn_saddr2dn(i32* %127)
  %129 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 2
  store i8* %128, i8** %129, align 8
  %130 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %131 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %130, i32 0, i32 2
  %132 = call i8* @dn_saddr2dn(i32* %131)
  %133 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %135 = call i32 @dn_sk_ports_copy(%struct.flowidn* %15, %struct.dn_scp* %134)
  %136 = load i32, i32* @DNPROTO_NSP, align 4
  %137 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = load %struct.sock*, %struct.sock** %7, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 1
  %140 = load %struct.sock*, %struct.sock** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @dn_route_output_sock(i32* %139, %struct.flowidn* %15, %struct.sock* %140, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %114
  br label %178

145:                                              ; preds = %114
  %146 = load %struct.sock*, %struct.sock** %7, align 8
  %147 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %146)
  store %struct.dst_entry* %147, %struct.dst_entry** %16, align 8
  %148 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %149 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sock*, %struct.sock** %7, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i64, i64* @SS_CONNECTING, align 8
  %156 = load %struct.socket*, %struct.socket** %12, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* @DN_CI, align 8
  %159 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %160 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %162 = call i32 @dst_metric_advmss(%struct.dst_entry* %161)
  %163 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %164 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load %struct.sock*, %struct.sock** %7, align 8
  %166 = load i32, i32* @NSP_CI, align 4
  %167 = call i32 @dn_nsp_send_conninit(%struct.sock* %165, i32 %166)
  %168 = load i32, i32* @EINPROGRESS, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %14, align 4
  %170 = load i64*, i64** %10, align 8
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %145
  %174 = load %struct.sock*, %struct.sock** %7, align 8
  %175 = load i64*, i64** %10, align 8
  %176 = call i32 @dn_wait_run(%struct.sock* %174, i64* %175)
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %173, %145
  br label %178

178:                                              ; preds = %177, %144, %112, %99, %91, %84, %76, %60, %42, %29
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %178, %64
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_wait_run(%struct.sock*, i64*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_auto_bind(%struct.socket*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_dn*, i32) #1

declare dso_local i32 @memset(%struct.flowidn*, i32, i32) #1

declare dso_local i8* @dn_saddr2dn(i32*) #1

declare dso_local i32 @dn_sk_ports_copy(%struct.flowidn*, %struct.dn_scp*) #1

declare dso_local i64 @dn_route_output_sock(i32*, %struct.flowidn*, %struct.sock*, i32) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @dn_nsp_send_conninit(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
