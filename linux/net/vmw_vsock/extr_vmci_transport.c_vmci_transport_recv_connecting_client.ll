; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32 (%struct.sock*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vmci_transport_packet = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vsock_sock = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_connecting_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_connecting_client(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vmci_transport_packet*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %6, align 8
  %11 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %12 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %145 [
    i32 132, label %14
    i32 130, label %52
    i32 129, label %52
    i32 131, label %124
    i32 128, label %134
  ]

14:                                               ; preds = %2
  %15 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %16 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vmci_handle_is_invalid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %23 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %27 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vmci_handle_is_equal(i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21, %14
  %33 = load i32, i32* @EPROTO, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %150

36:                                               ; preds = %21
  %37 = load i32, i32* @TCP_ESTABLISHED, align 4
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SS_CONNECTED, align 4
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %46 = call i32 @vsock_insert_connected(%struct.vsock_sock* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 3
  %49 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 %49(%struct.sock* %50)
  br label %149

52:                                               ; preds = %2, %2
  %53 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %54 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %110, label %58

58:                                               ; preds = %52
  %59 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %60 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %65 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %110, label %69

69:                                               ; preds = %58
  %70 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %71 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %74 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %110, label %78

78:                                               ; preds = %69
  %79 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %80 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vmci_handle_is_invalid(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %87 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %86)
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %85
  %92 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %93 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %99 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %105 = call %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock* %104)
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @VMCI_INVALID_ID, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103, %97, %91, %85, %78, %69, %58, %52
  %111 = load i32, i32* @EPROTO, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %150

114:                                              ; preds = %103
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %117 = call i32 @vmci_transport_recv_connecting_client_negotiate(%struct.sock* %115, %struct.vmci_transport_packet* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %150

123:                                              ; preds = %114
  br label %149

124:                                              ; preds = %2
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %127 = call i32 @vmci_transport_recv_connecting_client_invalid(%struct.sock* %125, %struct.vmci_transport_packet* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %150

133:                                              ; preds = %124
  br label %149

134:                                              ; preds = %2
  %135 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %136 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %141 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %140, i32 0, i32 0
  store i32 0, i32* %141, align 4
  br label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @ECONNRESET, align 4
  store i32 %143, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %150

144:                                              ; preds = %139
  br label %149

145:                                              ; preds = %2
  %146 = load i32, i32* @EPROTO, align 4
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %150

149:                                              ; preds = %144, %133, %123, %36
  store i32 0, i32* %3, align 4
  br label %166

150:                                              ; preds = %145, %142, %130, %120, %110, %32
  %151 = load %struct.sock*, %struct.sock** %4, align 8
  %152 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %153 = call i32 @vmci_transport_send_reset(%struct.sock* %151, %struct.vmci_transport_packet* %152)
  %154 = load i32, i32* @TCP_CLOSE, align 4
  %155 = load %struct.sock*, %struct.sock** %4, align 8
  %156 = getelementptr inbounds %struct.sock, %struct.sock* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.sock*, %struct.sock** %4, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 1
  %162 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %161, align 8
  %163 = load %struct.sock*, %struct.sock** %4, align 8
  %164 = call i32 %162(%struct.sock* %163)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %150, %149
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_handle_is_equal(i32, i32) #1

declare dso_local %struct.TYPE_12__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vsock_insert_connected(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_recv_connecting_client_negotiate(%struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @vmci_transport_recv_connecting_client_invalid(%struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @vmci_transport_send_reset(%struct.sock*, %struct.vmci_transport_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
