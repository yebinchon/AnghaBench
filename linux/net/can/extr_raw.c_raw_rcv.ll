; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sock*, %struct.TYPE_5__*, i64 }
%struct.sock = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.raw_sock = type { i32, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_can = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.sk_buff* }
%struct.TYPE_8__ = type { i64 }

@CAN_MTU = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i32 0, align 4
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@MSG_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @raw_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_rcv(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.raw_sock*, align 8
  %7 = alloca %struct.sockaddr_can*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sock*
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.raw_sock* @raw_sk(%struct.sock* %12)
  store %struct.raw_sock* %13, %struct.raw_sock** %6, align 8
  %14 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %15 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = icmp eq %struct.sock* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %172

25:                                               ; preds = %18, %2
  %26 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %27 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CAN_MTU, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %172

37:                                               ; preds = %30, %25
  %38 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %39 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = icmp eq %struct.sk_buff* %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %37
  %47 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %48 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.TYPE_8__* @can_skb_prv(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %46
  %59 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %60 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %65 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @this_cpu_inc(i32 %68)
  %70 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %71 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %77 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %172

81:                                               ; preds = %63
  br label %83

82:                                               ; preds = %58
  br label %172

83:                                               ; preds = %81
  br label %116

84:                                               ; preds = %46, %37
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %87 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store %struct.sk_buff* %85, %struct.sk_buff** %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call %struct.TYPE_8__* @can_skb_prv(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %96 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 %94, i64* %99, align 8
  %100 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %101 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = call %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  %105 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %106 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %84
  %110 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %111 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %172

115:                                              ; preds = %109, %84
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %117, i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %172

123:                                              ; preds = %116
  %124 = call i32 @sock_skb_cb_check_size(i32 8)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %128, %struct.sockaddr_can** %7, align 8
  %129 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %130 = call i32 @memset(%struct.sockaddr_can* %129, i32 0, i32 8)
  %131 = load i32, i32* @AF_CAN, align 4
  %132 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %133 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 2
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %140 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = call i32* @raw_flags(%struct.sk_buff* %141)
  store i32* %142, i32** %9, align 8
  %143 = load i32*, i32** %9, align 8
  store i32 0, i32* %143, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load %struct.sock*, %struct.sock** %145, align 8
  %147 = icmp ne %struct.sock* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %123
  %149 = load i32, i32* @MSG_DONTROUTE, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %123
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 1
  %156 = load %struct.sock*, %struct.sock** %155, align 8
  %157 = load %struct.sock*, %struct.sock** %5, align 8
  %158 = icmp eq %struct.sock* %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* @MSG_CONFIRM, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %159, %153
  %165 = load %struct.sock*, %struct.sock** %5, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = call i64 @sock_queue_rcv_skb(%struct.sock* %165, %struct.sk_buff* %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  br label %172

172:                                              ; preds = %24, %36, %80, %82, %114, %122, %169, %164
  ret void
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @this_cpu_ptr(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @can_skb_prv(%struct.sk_buff*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @sock_skb_cb_check_size(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_can*, i32, i32) #1

declare dso_local i32* @raw_flags(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
