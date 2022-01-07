; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_socket_type_to_security_class.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_socket_type_to_security_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECCLASS_UNIX_STREAM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_UNIX_DGRAM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_TCP_SOCKET = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SECCLASS_SCTP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_RAWIP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_UDP_SOCKET = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@SECCLASS_ICMP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_DCCP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_ROUTE_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_TCPDIAG_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_NFLOG_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_XFRM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_SELINUX_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_ISCSI_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_AUDIT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_FIB_LOOKUP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_CONNECTOR_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_NETFILTER_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_DNRT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_GENERIC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_SCSITRANSPORT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_RDMA_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_CRYPTO_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_PACKET_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_KEY_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_APPLETALK_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_AX25_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_IPX_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETROM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_ATMPVC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_X25_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_ROSE_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_DECNET_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_ATMSVC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_RDS_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_IRDA_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_PPPOX_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_LLC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_CAN_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_TIPC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_BLUETOOTH_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_IUCV_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_RXRPC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_ISDN_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_PHONET_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_IEEE802154_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_CAIF_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_ALG_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NFC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_VSOCK_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_KCM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_QIPCRTR_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_SMC_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_XDP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @socket_type_to_security_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_type_to_security_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @selinux_policycap_extsockclass()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %104 [
    i32 136, label %11
    i32 157, label %18
    i32 156, label %18
    i32 148, label %62
    i32 145, label %98
    i32 150, label %100
    i32 166, label %102
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %17 [
    i32 128, label %13
    i32 129, label %13
    i32 131, label %15
    i32 130, label %15
  ]

13:                                               ; preds = %11, %11
  %14 = load i32, i32* @SECCLASS_UNIX_STREAM_SOCKET, align 4
  store i32 %14, i32* %4, align 4
  br label %168

15:                                               ; preds = %11, %11
  %16 = load i32, i32* @SECCLASS_UNIX_DGRAM_SOCKET, align 4
  store i32 %16, i32* %4, align 4
  br label %168

17:                                               ; preds = %11
  br label %104

18:                                               ; preds = %3, %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %60 [
    i32 128, label %20
    i32 129, label %20
    i32 131, label %37
    i32 132, label %58
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @default_protocol_stream(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SECCLASS_TCP_SOCKET, align 4
  store i32 %25, i32* %4, align 4
  br label %168

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IPPROTO_SCTP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @SECCLASS_SCTP_SOCKET, align 4
  store i32 %34, i32* %4, align 4
  br label %168

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %36, i32* %4, align 4
  br label %168

37:                                               ; preds = %18
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @default_protocol_dgram(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SECCLASS_UDP_SOCKET, align 4
  store i32 %42, i32* %4, align 4
  br label %168

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IPPROTO_ICMP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @SECCLASS_ICMP_SOCKET, align 4
  store i32 %55, i32* %4, align 4
  br label %168

56:                                               ; preds = %50, %43
  %57 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %57, i32* %4, align 4
  br label %168

58:                                               ; preds = %18
  %59 = load i32, i32* @SECCLASS_DCCP_SOCKET, align 4
  store i32 %59, i32* %4, align 4
  br label %168

60:                                               ; preds = %18
  %61 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %61, i32* %4, align 4
  br label %168

62:                                               ; preds = %3
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %96 [
    i32 172, label %64
    i32 169, label %66
    i32 174, label %68
    i32 168, label %70
    i32 170, label %72
    i32 177, label %74
    i32 183, label %76
    i32 179, label %78
    i32 182, label %80
    i32 175, label %82
    i32 180, label %84
    i32 176, label %86
    i32 178, label %88
    i32 171, label %90
    i32 173, label %92
    i32 181, label %94
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @SECCLASS_NETLINK_ROUTE_SOCKET, align 4
  store i32 %65, i32* %4, align 4
  br label %168

66:                                               ; preds = %62
  %67 = load i32, i32* @SECCLASS_NETLINK_TCPDIAG_SOCKET, align 4
  store i32 %67, i32* %4, align 4
  br label %168

68:                                               ; preds = %62
  %69 = load i32, i32* @SECCLASS_NETLINK_NFLOG_SOCKET, align 4
  store i32 %69, i32* %4, align 4
  br label %168

70:                                               ; preds = %62
  %71 = load i32, i32* @SECCLASS_NETLINK_XFRM_SOCKET, align 4
  store i32 %71, i32* %4, align 4
  br label %168

72:                                               ; preds = %62
  %73 = load i32, i32* @SECCLASS_NETLINK_SELINUX_SOCKET, align 4
  store i32 %73, i32* %4, align 4
  br label %168

74:                                               ; preds = %62
  %75 = load i32, i32* @SECCLASS_NETLINK_ISCSI_SOCKET, align 4
  store i32 %75, i32* %4, align 4
  br label %168

76:                                               ; preds = %62
  %77 = load i32, i32* @SECCLASS_NETLINK_AUDIT_SOCKET, align 4
  store i32 %77, i32* %4, align 4
  br label %168

78:                                               ; preds = %62
  %79 = load i32, i32* @SECCLASS_NETLINK_FIB_LOOKUP_SOCKET, align 4
  store i32 %79, i32* %4, align 4
  br label %168

80:                                               ; preds = %62
  %81 = load i32, i32* @SECCLASS_NETLINK_CONNECTOR_SOCKET, align 4
  store i32 %81, i32* %4, align 4
  br label %168

82:                                               ; preds = %62
  %83 = load i32, i32* @SECCLASS_NETLINK_NETFILTER_SOCKET, align 4
  store i32 %83, i32* %4, align 4
  br label %168

84:                                               ; preds = %62
  %85 = load i32, i32* @SECCLASS_NETLINK_DNRT_SOCKET, align 4
  store i32 %85, i32* %4, align 4
  br label %168

86:                                               ; preds = %62
  %87 = load i32, i32* @SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET, align 4
  store i32 %87, i32* %4, align 4
  br label %168

88:                                               ; preds = %62
  %89 = load i32, i32* @SECCLASS_NETLINK_GENERIC_SOCKET, align 4
  store i32 %89, i32* %4, align 4
  br label %168

90:                                               ; preds = %62
  %91 = load i32, i32* @SECCLASS_NETLINK_SCSITRANSPORT_SOCKET, align 4
  store i32 %91, i32* %4, align 4
  br label %168

92:                                               ; preds = %62
  %93 = load i32, i32* @SECCLASS_NETLINK_RDMA_SOCKET, align 4
  store i32 %93, i32* %4, align 4
  br label %168

94:                                               ; preds = %62
  %95 = load i32, i32* @SECCLASS_NETLINK_CRYPTO_SOCKET, align 4
  store i32 %95, i32* %4, align 4
  br label %168

96:                                               ; preds = %62
  %97 = load i32, i32* @SECCLASS_NETLINK_SOCKET, align 4
  store i32 %97, i32* %4, align 4
  br label %168

98:                                               ; preds = %3
  %99 = load i32, i32* @SECCLASS_PACKET_SOCKET, align 4
  store i32 %99, i32* %4, align 4
  br label %168

100:                                              ; preds = %3
  %101 = load i32, i32* @SECCLASS_KEY_SOCKET, align 4
  store i32 %101, i32* %4, align 4
  br label %168

102:                                              ; preds = %3
  %103 = load i32, i32* @SECCLASS_APPLETALK_SOCKET, align 4
  store i32 %103, i32* %4, align 4
  br label %168

104:                                              ; preds = %3, %17
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %166

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  switch i32 %108, label %165 [
    i32 163, label %109
    i32 155, label %111
    i32 147, label %113
    i32 165, label %115
    i32 134, label %117
    i32 140, label %119
    i32 159, label %121
    i32 164, label %123
    i32 141, label %125
    i32 154, label %127
    i32 143, label %129
    i32 149, label %131
    i32 160, label %133
    i32 137, label %135
    i32 162, label %137
    i32 152, label %139
    i32 139, label %141
    i32 153, label %143
    i32 144, label %145
    i32 158, label %147
    i32 161, label %149
    i32 167, label %151
    i32 146, label %153
    i32 135, label %155
    i32 151, label %157
    i32 142, label %159
    i32 138, label %161
    i32 133, label %163
  ]

109:                                              ; preds = %107
  %110 = load i32, i32* @SECCLASS_AX25_SOCKET, align 4
  store i32 %110, i32* %4, align 4
  br label %168

111:                                              ; preds = %107
  %112 = load i32, i32* @SECCLASS_IPX_SOCKET, align 4
  store i32 %112, i32* %4, align 4
  br label %168

113:                                              ; preds = %107
  %114 = load i32, i32* @SECCLASS_NETROM_SOCKET, align 4
  store i32 %114, i32* %4, align 4
  br label %168

115:                                              ; preds = %107
  %116 = load i32, i32* @SECCLASS_ATMPVC_SOCKET, align 4
  store i32 %116, i32* %4, align 4
  br label %168

117:                                              ; preds = %107
  %118 = load i32, i32* @SECCLASS_X25_SOCKET, align 4
  store i32 %118, i32* %4, align 4
  br label %168

119:                                              ; preds = %107
  %120 = load i32, i32* @SECCLASS_ROSE_SOCKET, align 4
  store i32 %120, i32* %4, align 4
  br label %168

121:                                              ; preds = %107
  %122 = load i32, i32* @SECCLASS_DECNET_SOCKET, align 4
  store i32 %122, i32* %4, align 4
  br label %168

123:                                              ; preds = %107
  %124 = load i32, i32* @SECCLASS_ATMSVC_SOCKET, align 4
  store i32 %124, i32* %4, align 4
  br label %168

125:                                              ; preds = %107
  %126 = load i32, i32* @SECCLASS_RDS_SOCKET, align 4
  store i32 %126, i32* %4, align 4
  br label %168

127:                                              ; preds = %107
  %128 = load i32, i32* @SECCLASS_IRDA_SOCKET, align 4
  store i32 %128, i32* %4, align 4
  br label %168

129:                                              ; preds = %107
  %130 = load i32, i32* @SECCLASS_PPPOX_SOCKET, align 4
  store i32 %130, i32* %4, align 4
  br label %168

131:                                              ; preds = %107
  %132 = load i32, i32* @SECCLASS_LLC_SOCKET, align 4
  store i32 %132, i32* %4, align 4
  br label %168

133:                                              ; preds = %107
  %134 = load i32, i32* @SECCLASS_CAN_SOCKET, align 4
  store i32 %134, i32* %4, align 4
  br label %168

135:                                              ; preds = %107
  %136 = load i32, i32* @SECCLASS_TIPC_SOCKET, align 4
  store i32 %136, i32* %4, align 4
  br label %168

137:                                              ; preds = %107
  %138 = load i32, i32* @SECCLASS_BLUETOOTH_SOCKET, align 4
  store i32 %138, i32* %4, align 4
  br label %168

139:                                              ; preds = %107
  %140 = load i32, i32* @SECCLASS_IUCV_SOCKET, align 4
  store i32 %140, i32* %4, align 4
  br label %168

141:                                              ; preds = %107
  %142 = load i32, i32* @SECCLASS_RXRPC_SOCKET, align 4
  store i32 %142, i32* %4, align 4
  br label %168

143:                                              ; preds = %107
  %144 = load i32, i32* @SECCLASS_ISDN_SOCKET, align 4
  store i32 %144, i32* %4, align 4
  br label %168

145:                                              ; preds = %107
  %146 = load i32, i32* @SECCLASS_PHONET_SOCKET, align 4
  store i32 %146, i32* %4, align 4
  br label %168

147:                                              ; preds = %107
  %148 = load i32, i32* @SECCLASS_IEEE802154_SOCKET, align 4
  store i32 %148, i32* %4, align 4
  br label %168

149:                                              ; preds = %107
  %150 = load i32, i32* @SECCLASS_CAIF_SOCKET, align 4
  store i32 %150, i32* %4, align 4
  br label %168

151:                                              ; preds = %107
  %152 = load i32, i32* @SECCLASS_ALG_SOCKET, align 4
  store i32 %152, i32* %4, align 4
  br label %168

153:                                              ; preds = %107
  %154 = load i32, i32* @SECCLASS_NFC_SOCKET, align 4
  store i32 %154, i32* %4, align 4
  br label %168

155:                                              ; preds = %107
  %156 = load i32, i32* @SECCLASS_VSOCK_SOCKET, align 4
  store i32 %156, i32* %4, align 4
  br label %168

157:                                              ; preds = %107
  %158 = load i32, i32* @SECCLASS_KCM_SOCKET, align 4
  store i32 %158, i32* %4, align 4
  br label %168

159:                                              ; preds = %107
  %160 = load i32, i32* @SECCLASS_QIPCRTR_SOCKET, align 4
  store i32 %160, i32* %4, align 4
  br label %168

161:                                              ; preds = %107
  %162 = load i32, i32* @SECCLASS_SMC_SOCKET, align 4
  store i32 %162, i32* %4, align 4
  br label %168

163:                                              ; preds = %107
  %164 = load i32, i32* @SECCLASS_XDP_SOCKET, align 4
  store i32 %164, i32* %4, align 4
  br label %168

165:                                              ; preds = %107
  br label %166

166:                                              ; preds = %165, %104
  %167 = load i32, i32* @SECCLASS_SOCKET, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %60, %58, %56, %54, %41, %35, %33, %24, %15, %13
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @selinux_policycap_extsockclass(...) #1

declare dso_local i32 @default_protocol_stream(i32) #1

declare dso_local i32 @default_protocol_dgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
