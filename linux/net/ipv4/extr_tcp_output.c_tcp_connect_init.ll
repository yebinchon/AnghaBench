; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.dst_entry = type { i32 }
%struct.tcp_sock = type { i32, i64, i64, i32, i64, i32, i32, i64, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_8__, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 (%struct.sock*, %struct.sock*)* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@RTAX_WINDOW = common dso_local global i32 0, align 4
@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@RTAX_INITRWND = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_connect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_connect_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.TYPE_9__* @sock_net(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 8
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %27
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 17
  store i64 0, i64* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = call i32 @tcp_mtup_init(%struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %48 = call i32 @dst_mtu(%struct.dst_entry* %47)
  %49 = call i32 @tcp_sync_mss(%struct.sock* %46, i32 %48)
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %52 = call i32 @tcp_ca_dst_init(%struct.sock* %50, %struct.dst_entry* %51)
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %41
  %58 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %59 = load i32, i32* @RTAX_WINDOW, align 4
  %60 = call i64 @dst_metric(%struct.dst_entry* %58, i32 %59)
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %41
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %66 = call i32 @dst_metric_advmss(%struct.dst_entry* %65)
  %67 = call i64 @tcp_mss_clamp(%struct.tcp_sock* %64, i32 %66)
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 16
  store i64 %67, i64* %69, align 8
  %70 = load %struct.sock*, %struct.sock** %2, align 8
  %71 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %70)
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %63
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sock*, %struct.sock** %2, align 8
  %83 = call i64 @tcp_full_space(%struct.sock* %82)
  %84 = icmp sgt i64 %81, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85, %78
  %91 = load %struct.sock*, %struct.sock** %2, align 8
  %92 = call i64 @tcp_full_space(%struct.sock* %91)
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %94 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %85, %63
  %96 = load %struct.sock*, %struct.sock** %2, align 8
  %97 = call i64 @tcp_rwnd_init_bpf(%struct.sock* %96)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %102 = load i32, i32* @RTAX_INITRWND, align 4
  %103 = call i64 @dst_metric(%struct.dst_entry* %101, i32 %102)
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.sock*, %struct.sock** %2, align 8
  %106 = load %struct.sock*, %struct.sock** %2, align 8
  %107 = call i64 @tcp_full_space(%struct.sock* %106)
  %108 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %109 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %108, i32 0, i32 16
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %112 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 4
  br label %123

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i64 [ %121, %116 ], [ 0, %122 ]
  %125 = sub i64 %110, %124
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 13
  %128 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %129 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %128, i32 0, i32 1
  %130 = load %struct.sock*, %struct.sock** %2, align 8
  %131 = call %struct.TYPE_9__* @sock_net(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @tcp_select_initial_window(%struct.sock* %105, i64 %107, i64 %125, i32* %127, i64* %129, i32 %134, i32* %5, i64 %135)
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %142 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 14
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sock*, %struct.sock** %2, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.sock*, %struct.sock** %2, align 8
  %149 = load i32, i32* @SOCK_DONE, align 4
  %150 = call i32 @sock_reset_flag(%struct.sock* %148, i32 %149)
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 12
  store i64 0, i64* %152, align 8
  %153 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %154 = call i32 @tcp_init_wl(%struct.tcp_sock* %153, i32 0)
  %155 = load %struct.sock*, %struct.sock** %2, align 8
  %156 = call i32 @tcp_write_queue_purge(%struct.sock* %155)
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %161 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %160, i32 0, i32 11
  store i64 %159, i64* %161, align 8
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %166 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %165, i32 0, i32 10
  store i64 %164, i64* %166, align 8
  %167 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %168 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 9
  store i64 %169, i64* %171, align 8
  %172 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %173 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @WRITE_ONCE(i32 %174, i64 %177)
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %180 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i64 @likely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %123
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %188, i32 0, i32 2
  store i64 0, i64* %189, align 8
  br label %194

190:                                              ; preds = %123
  %191 = load i32, i32* @tcp_jiffies32, align 4
  %192 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %193 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %187
  %195 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %196 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %199 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %198, i32 0, i32 4
  store i64 %197, i64* %199, align 8
  %200 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %201 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %204 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @WRITE_ONCE(i32 %202, i64 %205)
  %207 = load %struct.sock*, %struct.sock** %2, align 8
  %208 = call i32 @tcp_timeout_init(%struct.sock* %207)
  %209 = load %struct.sock*, %struct.sock** %2, align 8
  %210 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %209)
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 8
  %212 = load %struct.sock*, %struct.sock** %2, align 8
  %213 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %212)
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %216 = call i32 @tcp_clear_retrans(%struct.tcp_sock* %215)
  ret void
}

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_9__* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_mtup_init(%struct.sock*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @tcp_ca_dst_init(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i64 @tcp_mss_clamp(%struct.tcp_sock*, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local i64 @tcp_full_space(%struct.sock*) #1

declare dso_local i64 @tcp_rwnd_init_bpf(%struct.sock*) #1

declare dso_local i32 @tcp_select_initial_window(%struct.sock*, i64, i64, i32*, i64*, i32, i32*, i64) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_init_wl(%struct.tcp_sock*, i32) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_timeout_init(%struct.sock*) #1

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_clear_retrans(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
