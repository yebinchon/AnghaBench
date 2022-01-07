; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.pep_sock = type { i32, i64 }
%struct.sk_buff = type { i32 }

@USHRT_MAX = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX_PNPIPE_HEADER = common dso_local global i64 0, align 8
@MAX_PHONET_HEADER = common dso_local global i64 0, align 8
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64)* @pep_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pep_sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.pep_sock* @pep_sk(%struct.sock* %14)
  store %struct.pep_sock* %15, %struct.pep_sock** %8, align 8
  %16 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @USHRT_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %190

25:                                               ; preds = %3
  %26 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MSG_DONTWAIT, align 4
  %30 = load i32, i32* @MSG_EOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MSG_NOSIGNAL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %28, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %25
  %40 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MSG_EOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39, %25
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %190

49:                                               ; preds = %39
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MSG_DONTWAIT, align 4
  %56 = and i32 %54, %55
  %57 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %50, i64 %53, i32 %56, i32* %12)
  store %struct.sk_buff* %57, %struct.sk_buff** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %190

62:                                               ; preds = %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %65 = add nsw i64 %64, 3
  %66 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %67 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = call i32 @skb_reserve(%struct.sk_buff* %63, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @skb_put(%struct.sk_buff* %71, i64 %72)
  %74 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memcpy_from_msg(i32 %73, %struct.msghdr* %74, i64 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %186

80:                                               ; preds = %62
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = call i32 @lock_sock(%struct.sock* %81)
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @MSG_DONTWAIT, align 4
  %86 = and i32 %84, %85
  %87 = call i64 @sock_sndtimeo(%struct.sock* %83, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* @TCPF_LISTEN, align 4
  %93 = load i32, i32* @TCPF_CLOSE, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %80
  %98 = load i32, i32* @ENOTCONN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  br label %183

100:                                              ; preds = %80
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TCP_ESTABLISHED, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %171, %106
  %108 = load %struct.sock*, %struct.sock** %5, align 8
  %109 = call i32 @sk_stream_wait_connect(%struct.sock* %108, i64* %10)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %183

113:                                              ; preds = %107
  %114 = load %struct.sock*, %struct.sock** %5, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @ECONNRESET, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  br label %183

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.sock*, %struct.sock** %5, align 8
  %125 = getelementptr inbounds %struct.sock, %struct.sock* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TCP_ESTABLISHED, align 4
  %128 = icmp ne i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %132 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %131, i32 0, i32 0
  %133 = call i32 @atomic_read(i32* %132)
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %172, %123
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br i1 %137, label %138, label %173

138:                                              ; preds = %134
  %139 = load i32, i32* @wait, align 4
  %140 = load i32, i32* @woken_wake_function, align 4
  %141 = call i32 @DEFINE_WAIT_FUNC(i32 %139, i32 %140)
  %142 = load i64, i64* %10, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %12, align 4
  br label %183

147:                                              ; preds = %138
  %148 = load i32, i32* @current, align 4
  %149 = call i64 @signal_pending(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @sock_intr_errno(i64 %152)
  store i32 %153, i32* %12, align 4
  br label %183

154:                                              ; preds = %147
  %155 = load %struct.sock*, %struct.sock** %5, align 8
  %156 = call i32 @sk_sleep(%struct.sock* %155)
  %157 = call i32 @add_wait_queue(i32 %156, i32* @wait)
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %160 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %159, i32 0, i32 0
  %161 = call i32 @atomic_read(i32* %160)
  %162 = call i32 @sk_wait_event(%struct.sock* %158, i64* %10, i32 %161, i32* @wait)
  store i32 %162, i32* %13, align 4
  %163 = load %struct.sock*, %struct.sock** %5, align 8
  %164 = call i32 @sk_sleep(%struct.sock* %163)
  %165 = call i32 @remove_wait_queue(i32 %164, i32* @wait)
  %166 = load %struct.sock*, %struct.sock** %5, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TCP_ESTABLISHED, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %154
  br label %107

172:                                              ; preds = %154
  br label %134

173:                                              ; preds = %134
  %174 = load %struct.sock*, %struct.sock** %5, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %176 = call i32 @pipe_skb_send(%struct.sock* %174, %struct.sk_buff* %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i64, i64* %7, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %179, %173
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %183

183:                                              ; preds = %182, %151, %144, %119, %112, %97
  %184 = load %struct.sock*, %struct.sock** %5, align 8
  %185 = call i32 @release_sock(%struct.sock* %184)
  br label %186

186:                                              ; preds = %183, %79
  %187 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %188 = call i32 @kfree_skb(%struct.sk_buff* %187)
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %186, %60, %46, %22
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @pipe_skb_send(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
