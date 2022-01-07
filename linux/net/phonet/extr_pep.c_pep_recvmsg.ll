; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.pep_sock = type { i32 }

@MSG_OOB = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@PN_PIPE_NO_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @pep_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pep_sock*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @MSG_OOB, align 4
  %19 = load i32, i32* @MSG_PEEK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MSG_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MSG_WAITALL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MSG_NOSIGNAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %17, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %186

37:                                               ; preds = %6
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @TCPF_LISTEN, align 4
  %43 = load i32, i32* @TCPF_CLOSE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOTCONN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %186

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @MSG_OOB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %8, align 8
  %58 = load i32, i32* @SOCK_URGINLINE, align 4
  %59 = call i64 @sock_flag(%struct.sock* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %56, %51
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = call %struct.pep_sock* @pep_sk(%struct.sock* %62)
  store %struct.pep_sock* %63, %struct.pep_sock** %16, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @MSG_PEEK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %186

71:                                               ; preds = %61
  %72 = load %struct.pep_sock*, %struct.pep_sock** %16, align 8
  %73 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %72, i32 0, i32 0
  %74 = call %struct.sk_buff* @skb_dequeue(i32* %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %14, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.sock*, %struct.sock** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @pep_ctrlreq_error(%struct.sock* %78, %struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @MSG_OOB, align 4
  %84 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %85 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %139

88:                                               ; preds = %71
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MSG_OOB, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %186

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.sock*, %struct.sock** %8, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %98, i32 %99, i32 %100, i32* %15)
  store %struct.sk_buff* %101, %struct.sk_buff** %14, align 8
  %102 = load %struct.sock*, %struct.sock** %8, align 8
  %103 = call i32 @lock_sock(%struct.sock* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %105 = icmp eq %struct.sk_buff* %104, null
  br i1 %105, label %106, label %125

106:                                              ; preds = %97
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @ENOTCONN, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.sock*, %struct.sock** %8, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* @TCP_CLOSE_WAIT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @ECONNRESET, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %118, %111, %106
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = call i32 @release_sock(%struct.sock* %122)
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %7, align 4
  br label %186

125:                                              ; preds = %97
  %126 = load %struct.sock*, %struct.sock** %8, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @TCP_ESTABLISHED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.sock*, %struct.sock** %8, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32 @pipe_grant_credits(%struct.sock* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.sock*, %struct.sock** %8, align 8
  %138 = call i32 @release_sock(%struct.sock* %137)
  br label %139

139:                                              ; preds = %136, %77
  %140 = load i32, i32* @MSG_EOR, align 4
  %141 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %142 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load i32, i32* @MSG_TRUNC, align 4
  %152 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %153 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %160

156:                                              ; preds = %139
  %157 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %156, %150
  %161 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %162 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %161, i32 0, %struct.msghdr* %162, i64 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @MSG_TRUNC, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  br label %178

176:                                              ; preds = %167
  %177 = load i64, i64* %10, align 8
  br label %178

178:                                              ; preds = %176, %172
  %179 = phi i64 [ %175, %172 ], [ %177, %176 ]
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %178, %160
  %182 = load %struct.sock*, %struct.sock** %8, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %184 = call i32 @skb_free_datagram(%struct.sock* %182, %struct.sk_buff* %183)
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %181, %121, %93, %68, %48, %34
  %187 = load i32, i32* %7, align 4
  ret i32 %187
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pep_ctrlreq_error(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @pipe_grant_credits(%struct.sock*, i32) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
