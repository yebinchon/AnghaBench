; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i32 }

@BPF_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@BPF_TCP_SYN_SENT = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@BPF_TCP_SYN_RECV = common dso_local global i64 0, align 8
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@BPF_TCP_FIN_WAIT1 = common dso_local global i64 0, align 8
@TCP_FIN_WAIT1 = common dso_local global i64 0, align 8
@BPF_TCP_FIN_WAIT2 = common dso_local global i64 0, align 8
@TCP_FIN_WAIT2 = common dso_local global i64 0, align 8
@BPF_TCP_TIME_WAIT = common dso_local global i64 0, align 8
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@BPF_TCP_CLOSE = common dso_local global i64 0, align 8
@BPF_TCP_CLOSE_WAIT = common dso_local global i64 0, align 8
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@BPF_TCP_LAST_ACK = common dso_local global i64 0, align 8
@TCP_LAST_ACK = common dso_local global i64 0, align 8
@BPF_TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@BPF_TCP_CLOSING = common dso_local global i64 0, align 8
@TCP_CLOSING = common dso_local global i64 0, align 8
@BPF_TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@BPF_TCP_MAX_STATES = common dso_local global i64 0, align 8
@TCP_MAX_STATES = common dso_local global i64 0, align 8
@BPF_SOCK_OPS_STATE_CB_FLAG = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_STATE_CB = common dso_local global i32 0, align 4
@TCP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@TCP_MIB_ESTABRESETS = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_state(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @BPF_TCP_ESTABLISHED, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp ne i32 %10, 128
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load i64, i64* @BPF_TCP_SYN_SENT, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* @TCP_SYN_SENT, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load i64, i64* @BPF_TCP_SYN_RECV, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @TCP_SYN_RECV, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp ne i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i64, i64* @BPF_TCP_FIN_WAIT1, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @TCP_FIN_WAIT1, align 8
  %31 = trunc i64 %30 to i32
  %32 = icmp ne i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUILD_BUG_ON(i32 %33)
  %35 = load i64, i64* @BPF_TCP_FIN_WAIT2, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @TCP_FIN_WAIT2, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUILD_BUG_ON(i32 %40)
  %42 = load i64, i64* @BPF_TCP_TIME_WAIT, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* @TCP_TIME_WAIT, align 8
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  %49 = load i64, i64* @BPF_TCP_CLOSE, align 8
  %50 = trunc i64 %49 to i32
  %51 = icmp ne i32 %50, 129
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUILD_BUG_ON(i32 %52)
  %54 = load i64, i64* @BPF_TCP_CLOSE_WAIT, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %57 = icmp ne i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUILD_BUG_ON(i32 %58)
  %60 = load i64, i64* @BPF_TCP_LAST_ACK, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* @TCP_LAST_ACK, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUILD_BUG_ON(i32 %65)
  %67 = load i64, i64* @BPF_TCP_LISTEN, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i64, i64* @TCP_LISTEN, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp ne i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUILD_BUG_ON(i32 %72)
  %74 = load i64, i64* @BPF_TCP_CLOSING, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* @TCP_CLOSING, align 8
  %77 = trunc i64 %76 to i32
  %78 = icmp ne i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUILD_BUG_ON(i32 %79)
  %81 = load i64, i64* @BPF_TCP_NEW_SYN_RECV, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %84 = trunc i64 %83 to i32
  %85 = icmp ne i32 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUILD_BUG_ON(i32 %86)
  %88 = load i64, i64* @BPF_TCP_MAX_STATES, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* @TCP_MAX_STATES, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp ne i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUILD_BUG_ON(i32 %93)
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i32 @tcp_sk(%struct.sock* %95)
  %97 = load i32, i32* @BPF_SOCK_OPS_STATE_CB_FLAG, align 4
  %98 = call i64 @BPF_SOCK_OPS_TEST_FLAG(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %2
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = load i32, i32* @BPF_SOCK_OPS_STATE_CB, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @tcp_call_bpf_2arg(%struct.sock* %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %2
  %107 = load i32, i32* %4, align 4
  switch i32 %107, label %153 [
    i32 128, label %108
    i32 129, label %117
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 128
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.sock*, %struct.sock** %3, align 8
  %113 = call i32 @sock_net(%struct.sock* %112)
  %114 = load i32, i32* @TCP_MIB_CURRESTAB, align 4
  %115 = call i32 @TCP_INC_STATS(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  br label %162

117:                                              ; preds = %106
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 128
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %117
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = call i32 @sock_net(%struct.sock* %125)
  %127 = load i32, i32* @TCP_MIB_ESTABRESETS, align 4
  %128 = call i32 @TCP_INC_STATS(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %133, align 8
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = call i32 %134(%struct.sock* %135)
  %137 = load %struct.sock*, %struct.sock** %3, align 8
  %138 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %137)
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %129
  %143 = load %struct.sock*, %struct.sock** %3, align 8
  %144 = getelementptr inbounds %struct.sock, %struct.sock* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = load %struct.sock*, %struct.sock** %3, align 8
  %151 = call i32 @inet_put_port(%struct.sock* %150)
  br label %152

152:                                              ; preds = %149, %142, %129
  br label %153

153:                                              ; preds = %106, %152
  %154 = load i32, i32* %5, align 4
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.sock*, %struct.sock** %3, align 8
  %158 = call i32 @sock_net(%struct.sock* %157)
  %159 = load i32, i32* @TCP_MIB_CURRESTAB, align 4
  %160 = call i32 @TCP_DEC_STATS(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  br label %162

162:                                              ; preds = %161, %116
  %163 = load %struct.sock*, %struct.sock** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @inet_sk_state_store(%struct.sock* %163, i32 %164)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @BPF_SOCK_OPS_TEST_FLAG(i32, i32) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_call_bpf_2arg(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @TCP_DEC_STATS(i32, i32) #1

declare dso_local i32 @inet_sk_state_store(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
