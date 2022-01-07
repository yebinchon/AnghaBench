; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i64, i32 }
%struct.msghdr = type { i32 }
%struct.dccp_hdr = type { i32 }
%struct.sk_buff = type { i64 }

@DCCP_LISTEN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8
@MSG_PEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"found fin (%s) ok!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"packet_type=%s\0A\00", align 1
@SOCK_DONE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dccp_hdr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DCCP_LISTEN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i64, i64* @ENOTCONN, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %9, align 8
  br label %176

26:                                               ; preds = %6
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @sock_rcvtimeo(%struct.sock* %27, i32 %28)
  store i64 %29, i64* %14, align 8
  br label %30

30:                                               ; preds = %174, %26
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 3
  %33 = call %struct.sk_buff* @skb_peek(i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %15, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %69

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %39 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %38)
  store %struct.dccp_hdr* %39, %struct.dccp_hdr** %13, align 8
  %40 = load %struct.dccp_hdr*, %struct.dccp_hdr** %13, align 8
  %41 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %59 [
    i32 130, label %43
    i32 129, label %43
    i32 132, label %44
    i32 131, label %44
    i32 128, label %53
  ]

43:                                               ; preds = %37, %37
  br label %122

44:                                               ; preds = %37, %37
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MSG_PEEK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = call i32 @dccp_finish_passive_close(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %37, %52
  %54 = load %struct.dccp_hdr*, %struct.dccp_hdr** %13, align 8
  %55 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dccp_packet_name(i32 %56)
  %58 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i64 0, i64* %9, align 8
  br label %164

59:                                               ; preds = %37
  %60 = load %struct.dccp_hdr*, %struct.dccp_hdr** %13, align 8
  %61 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dccp_packet_name(i32 %62)
  %64 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = call i32 @sk_eat_skb(%struct.sock* %65, %struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.sock*, %struct.sock** %7, align 8
  %71 = load i32, i32* @SOCK_DONE, align 4
  %72 = call i64 @sock_flag(%struct.sock* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i64 0, i64* %9, align 8
  br label %175

75:                                               ; preds = %69
  %76 = load %struct.sock*, %struct.sock** %7, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = call i64 @sock_error(%struct.sock* %81)
  store i64 %82, i64* %9, align 8
  br label %175

83:                                               ; preds = %75
  %84 = load %struct.sock*, %struct.sock** %7, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RCV_SHUTDOWN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i64 0, i64* %9, align 8
  br label %175

91:                                               ; preds = %83
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DCCP_CLOSED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.sock*, %struct.sock** %7, align 8
  %99 = load i32, i32* @SOCK_DONE, align 4
  %100 = call i64 @sock_flag(%struct.sock* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* @ENOTCONN, align 8
  %104 = sub i64 0, %103
  store i64 %104, i64* %9, align 8
  br label %175

105:                                              ; preds = %97
  store i64 0, i64* %9, align 8
  br label %175

106:                                              ; preds = %91
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* @EAGAIN, align 8
  %111 = sub i64 0, %110
  store i64 %111, i64* %9, align 8
  br label %175

112:                                              ; preds = %106
  %113 = load i32, i32* @current, align 4
  %114 = call i64 @signal_pending(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i64, i64* %14, align 8
  %118 = call i64 @sock_intr_errno(i64 %117)
  store i64 %118, i64* %9, align 8
  br label %175

119:                                              ; preds = %112
  %120 = load %struct.sock*, %struct.sock** %7, align 8
  %121 = call i32 @sk_wait_data(%struct.sock* %120, i64* %14, i32* null)
  br label %174

122:                                              ; preds = %43
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ugt i64 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %9, align 8
  br label %145

132:                                              ; preds = %122
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* @MSG_TRUNC, align 4
  %140 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %141 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %132
  br label %145

145:                                              ; preds = %144, %128
  %146 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %147 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i64 @skb_copy_datagram_msg(%struct.sk_buff* %146, i32 0, %struct.msghdr* %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i64, i64* @EFAULT, align 8
  %153 = sub i64 0, %152
  store i64 %153, i64* %9, align 8
  br label %175

154:                                              ; preds = %145
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @MSG_TRUNC, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %159, %154
  br label %164

164:                                              ; preds = %163, %53
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @MSG_PEEK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load %struct.sock*, %struct.sock** %7, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %172 = call i32 @sk_eat_skb(%struct.sock* %170, %struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %169, %164
  br label %175

174:                                              ; preds = %119
  br i1 true, label %30, label %175

175:                                              ; preds = %174, %173, %151, %116, %109, %105, %102, %90, %80, %74
  br label %176

176:                                              ; preds = %175, %23
  %177 = load %struct.sock*, %struct.sock** %7, align 8
  %178 = call i32 @release_sock(%struct.sock* %177)
  %179 = load i64, i64* %9, align 8
  %180 = trunc i64 %179 to i32
  ret i32 %180
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_finish_passive_close(%struct.sock*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

declare dso_local i32 @dccp_packet_name(i32) #1

declare dso_local i32 @sk_eat_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sock_intr_errno(i64) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*, i32*) #1

declare dso_local i64 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
