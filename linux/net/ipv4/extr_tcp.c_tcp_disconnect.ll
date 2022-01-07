; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, %struct.TYPE_6__, i32*, i64, i32*, i32, i8* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.inet_sock = type { i64, i64, i64 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, i64, %struct.TYPE_9__, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i8* null, align 8
@TCPF_CLOSING = common dso_local global i32 0, align 4
@TCPF_LAST_ACK = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i8* null, align 8
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@TCP_INIT_CWND = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@TCP_MIN_MSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TCP_CLOSE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load i32, i32* @TCP_CLOSE, align 4
  %25 = call i32 @tcp_set_state(%struct.sock* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TCP_LISTEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @inet_csk_listen_stop(%struct.sock* %31)
  br label %81

33:                                               ; preds = %26
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 33
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** @ECONNABORTED, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  br label %80

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @tcp_need_reset(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* @TCPF_CLOSING, align 4
  %59 = load i32, i32* @TCPF_LAST_ACK, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55, %43
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call i32 (...) @gfp_any()
  %66 = call i32 @tcp_send_active_reset(%struct.sock* %64, i32 %65)
  %67 = load i8*, i8** @ECONNRESET, align 8
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  br label %79

70:                                               ; preds = %55, %47
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TCP_SYN_SENT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** @ECONNRESET, align 8
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %39
  br label %81

81:                                               ; preds = %80, %30
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call i32 @tcp_clear_xmit_timers(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 7
  %86 = call i32 @__skb_queue_purge(i32* %85)
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @__kfree_skb(i32* %94)
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 6
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %91, %81
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %100 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @WRITE_ONCE(i32 %101, i32 %104)
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 32
  store i64 0, i64* %107, align 8
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = call i32 @tcp_write_queue_purge(%struct.sock* %108)
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = call i32 @tcp_fastopen_active_disable_ofo_check(%struct.sock* %110)
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 31
  %114 = call i32 @skb_rbtree_purge(i32* %113)
  %115 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %116 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.sock*, %struct.sock** %3, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %98
  %124 = load %struct.sock*, %struct.sock** %3, align 8
  %125 = call i32 @inet_reset_saddr(%struct.sock* %124)
  br label %126

126:                                              ; preds = %123, %98
  %127 = load %struct.sock*, %struct.sock** %3, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = load i32, i32* @SOCK_DONE, align 4
  %131 = call i32 @sock_reset_flag(%struct.sock* %129, i32 %130)
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 30
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %135 = call i32 @jiffies_to_usecs(i32 %134)
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 29
  store i32 %135, i32* %137, align 8
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 28
  store i64 0, i64* %139, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %144 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %142, %146
  %148 = add nsw i64 %147, 2
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %126
  store i32 1, i32* %9, align 4
  br label %153

153:                                              ; preds = %152, %126
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @WRITE_ONCE(i32 %157, i32 %158)
  %160 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %161 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 5
  store i32 2, i32* %163, align 4
  %164 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %165 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %167 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %168 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 27
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @TCP_INIT_CWND, align 4
  %173 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %174 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 26
  store i64 0, i64* %176, align 8
  %177 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %178 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %177, i32 0, i32 25
  store i64 0, i64* %178, align 8
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %180 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %179, i32 0, i32 24
  store i64 0, i64* %180, align 8
  %181 = load %struct.sock*, %struct.sock** %3, align 8
  %182 = load i32, i32* @TCP_CA_Open, align 4
  %183 = call i32 @tcp_set_ca_state(%struct.sock* %181, i32 %182)
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 23
  store i64 0, i64* %185, align 8
  %186 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %187 = call i32 @tcp_clear_retrans(%struct.tcp_sock* %186)
  %188 = load %struct.sock*, %struct.sock** %3, align 8
  %189 = call i32 @inet_csk_delack_init(%struct.sock* %188)
  %190 = load i32, i32* @TCP_MIN_MSS, align 4
  %191 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %192 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %195 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %194, i32 0, i32 8
  %196 = call i32 @memset(%struct.TYPE_10__* %195, i32 0, i32 24)
  %197 = load %struct.sock*, %struct.sock** %3, align 8
  %198 = call i32 @__sk_dst_reset(%struct.sock* %197)
  %199 = load %struct.sock*, %struct.sock** %3, align 8
  %200 = getelementptr inbounds %struct.sock, %struct.sock* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @dst_release(i32* %201)
  %203 = load %struct.sock*, %struct.sock** %3, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 4
  store i32* null, i32** %204, align 8
  %205 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %206 = call i32 @tcp_saved_syn_free(%struct.tcp_sock* %205)
  %207 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %208 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %207, i32 0, i32 22
  store i64 0, i64* %208, align 8
  %209 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %210 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %209, i32 0, i32 21
  store i64 0, i64* %210, align 8
  %211 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %212 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %211, i32 0, i32 20
  store i64 0, i64* %212, align 8
  %213 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %214 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %213, i32 0, i32 19
  store i64 0, i64* %214, align 8
  %215 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %216 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %215, i32 0, i32 18
  store i64 0, i64* %216, align 8
  %217 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %218 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %217, i32 0, i32 17
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  %222 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %223 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %222, i32 0, i32 17
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %228 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %227, i32 0, i32 16
  store i64 0, i64* %228, align 8
  %229 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %230 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %229, i32 0, i32 15
  store i64 0, i64* %230, align 8
  %231 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %232 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %231, i32 0, i32 14
  store i64 0, i64* %232, align 8
  %233 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %234 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %233, i32 0, i32 13
  store i64 0, i64* %234, align 8
  %235 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %236 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %235, i32 0, i32 12
  store i64 0, i64* %236, align 8
  %237 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %238 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %237, i32 0, i32 11
  store i64 0, i64* %238, align 8
  %239 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %240 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %239, i32 0, i32 6
  store i32 -1, i32* %240, align 8
  %241 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %242 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %241, i32 0, i32 10
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 5
  store i64 0, i64* %243, align 8
  %244 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %245 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %244, i32 0, i32 10
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 4
  store i64 0, i64* %246, align 8
  %247 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %248 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %251 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %250, i32 0, i32 10
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 3
  store i64 0, i64* %252, align 8
  %253 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %254 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %253, i32 0, i32 10
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  %256 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %257 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %256, i32 0, i32 10
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %260 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %259, i32 0, i32 9
  store i64 0, i64* %260, align 8
  %261 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %262 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %261, i32 0, i32 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  store i64 0, i64* %263, align 8
  %264 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %265 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %264, i32 0, i32 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store i64 0, i64* %266, align 8
  %267 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %268 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %271 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %270, i32 0, i32 7
  store i64 0, i64* %271, align 8
  %272 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %273 = call i32 @tcp_free_fastopen_req(%struct.tcp_sock* %272)
  %274 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %275 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %277 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %153
  %281 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %282 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  br label %286

286:                                              ; preds = %280, %153
  %287 = phi i1 [ false, %153 ], [ %285, %280 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @WARN_ON(i32 %288)
  %290 = load %struct.sock*, %struct.sock** %3, align 8
  %291 = getelementptr inbounds %struct.sock, %struct.sock* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %307

295:                                              ; preds = %286
  %296 = load %struct.sock*, %struct.sock** %3, align 8
  %297 = getelementptr inbounds %struct.sock, %struct.sock* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @put_page(i32* %299)
  %301 = load %struct.sock*, %struct.sock** %3, align 8
  %302 = getelementptr inbounds %struct.sock, %struct.sock* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  store i32* null, i32** %303, align 8
  %304 = load %struct.sock*, %struct.sock** %3, align 8
  %305 = getelementptr inbounds %struct.sock, %struct.sock* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  store i64 0, i64* %306, align 8
  br label %307

307:                                              ; preds = %295, %286
  %308 = load %struct.sock*, %struct.sock** %3, align 8
  %309 = getelementptr inbounds %struct.sock, %struct.sock* %308, i32 0, i32 2
  %310 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %309, align 8
  %311 = load %struct.sock*, %struct.sock** %3, align 8
  %312 = call i32 %310(%struct.sock* %311)
  ret i32 0
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tcp_need_reset(i32) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @__kfree_skb(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @tcp_fastopen_active_disable_ofo_check(%struct.sock*) #1

declare dso_local i32 @skb_rbtree_purge(i32*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_clear_retrans(%struct.tcp_sock*) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @tcp_saved_syn_free(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_free_fastopen_req(%struct.tcp_sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
