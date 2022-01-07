; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.atm_vcc = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.sk_buff = type { i64, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d += %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %7, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = call i32 @DEFINE_WAIT(i32 %15)
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SS_CONNECTED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOTCONN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %217

27:                                               ; preds = %3
  %28 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EISCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %217

35:                                               ; preds = %27
  %36 = load %struct.socket*, %struct.socket** %4, align 8
  %37 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %36)
  store %struct.atm_vcc* %37, %struct.atm_vcc** %8, align 8
  %38 = load i32, i32* @ATM_VF_RELEASED, align 4
  %39 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %40 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ATM_VF_CLOSE, align 4
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %46 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ATM_VF_READY, align 4
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %52 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49, %43, %35
  %56 = load i32, i32* @EPIPE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @SIGPIPE, align 4
  %59 = load i32, i32* @current, align 4
  %60 = call i32 @send_sig(i32 %58, i32 %59, i32 0)
  br label %217

61:                                               ; preds = %49
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %217

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %66, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %217

76:                                               ; preds = %65
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 3
  %79 = and i64 %78, -4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = call i32 @sk_sleep(%struct.sock* %81)
  %83 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %84 = call i32 @prepare_to_wait(i32 %82, i32* @wait, i32 %83)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %133, %76
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @vcc_tx_ready(%struct.atm_vcc* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %138

91:                                               ; preds = %85
  %92 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MSG_DONTWAIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %138

101:                                              ; preds = %91
  %102 = call i32 (...) @schedule()
  %103 = load i32, i32* @current, align 4
  %104 = call i64 @signal_pending(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @ERESTARTSYS, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %138

109:                                              ; preds = %101
  %110 = load i32, i32* @ATM_VF_RELEASED, align 4
  %111 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %112 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %111, i32 0, i32 1
  %113 = call i64 @test_bit(i32 %110, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ATM_VF_CLOSE, align 4
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %118 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %117, i32 0, i32 1
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @ATM_VF_READY, align 4
  %123 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %124 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %123, i32 0, i32 1
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121, %115, %109
  %128 = load i32, i32* @EPIPE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* @SIGPIPE, align 4
  %131 = load i32, i32* @current, align 4
  %132 = call i32 @send_sig(i32 %130, i32 %131, i32 0)
  br label %138

133:                                              ; preds = %121
  %134 = load %struct.sock*, %struct.sock** %7, align 8
  %135 = call i32 @sk_sleep(%struct.sock* %134)
  %136 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %137 = call i32 @prepare_to_wait(i32 %135, i32* @wait, i32 %136)
  br label %85

138:                                              ; preds = %127, %106, %98, %85
  %139 = load %struct.sock*, %struct.sock** %7, align 8
  %140 = call i32 @sk_sleep(%struct.sock* %139)
  %141 = call i32 @finish_wait(i32 %140, i32* @wait)
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %217

145:                                              ; preds = %138
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.sk_buff* @alloc_skb(i32 %146, i32 %147)
  store %struct.sk_buff* %148, %struct.sk_buff** %9, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %11, align 4
  br label %217

154:                                              ; preds = %145
  %155 = load %struct.sock*, %struct.sock** %7, align 8
  %156 = call i32 @sk_wmem_alloc_get(%struct.sock* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = call i32 @atm_account_tx(%struct.atm_vcc* %161, %struct.sk_buff* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 1
  store i32* null, i32** %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @skb_put(%struct.sk_buff* %166, i64 %167)
  %169 = load i64, i64* %6, align 8
  %170 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %171 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %170, i32 0, i32 1
  %172 = call i32 @copy_from_iter_full(i32 %168, i64 %169, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %154
  %175 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %176 = call i32 @kfree_skb(%struct.sk_buff* %175)
  %177 = load i32, i32* @EFAULT, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %11, align 4
  br label %217

179:                                              ; preds = %154
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %6, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %187, %188
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %6, align 8
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memset(i64 %189, i32 0, i32 %194)
  br label %196

196:                                              ; preds = %184, %179
  %197 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %198 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %202, align 8
  %204 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %206 = call i32 %203(%struct.atm_vcc* %204, %struct.sk_buff* %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %196
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  br label %214

212:                                              ; preds = %196
  %213 = load i64, i64* %6, align 8
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i64 [ %211, %209 ], [ %213, %212 ]
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %214, %174, %151, %144, %73, %64, %55, %32, %24
  %218 = load %struct.sock*, %struct.sock** %7, align 8
  %219 = call i32 @release_sock(%struct.sock* %218)
  %220 = load i32, i32* %11, align 4
  ret i32 %220
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @vcc_tx_ready(%struct.atm_vcc*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @atm_account_tx(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @copy_from_iter_full(i32, i64, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
