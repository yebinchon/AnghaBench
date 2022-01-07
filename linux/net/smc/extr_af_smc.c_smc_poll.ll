; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.smc_sock = type { %struct.TYPE_10__, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.file*, %struct.TYPE_11__*, i32*)* }

@EPOLLNVAL = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@SMC_LISTEN = common dso_local global i64 0, align 8
@SMC_INIT = common dso_local global i64 0, align 8
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@SMC_APPCLOSEWAIT1 = common dso_local global i64 0, align 8
@SMC_URG_VALID = common dso_local global i64 0, align 8
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @smc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.smc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = icmp ne %struct.sock* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EPOLLNVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %215

18:                                               ; preds = %3
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  %22 = call %struct.smc_sock* @smc_sk(%struct.sock* %21)
  store %struct.smc_sock* %22, %struct.smc_sock** %9, align 8
  %23 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %24 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %18
  %28 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %29 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.file*, %struct.TYPE_11__*, i32*)*, i32 (%struct.file*, %struct.TYPE_11__*, i32*)** %33, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %37 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 %34(%struct.file* %35, %struct.TYPE_11__* %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %42 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sock*, %struct.sock** %8, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  br label %213

50:                                               ; preds = %18
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMC_CLOSED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = load %struct.socket*, %struct.socket** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @sock_poll_wait(%struct.file* %57, %struct.socket* %58, i32* %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @EPOLLERR, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SHUTDOWN_MASK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SMC_CLOSED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @EPOLLHUP, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.sock*, %struct.sock** %8, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SMC_LISTEN, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = call i32 @smc_accept_poll(%struct.sock* %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %212

97:                                               ; preds = %86
  %98 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %99 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  %103 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %104 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32 (%struct.file*, %struct.TYPE_11__*, i32*)*, i32 (%struct.file*, %struct.TYPE_11__*, i32*)** %108, align 8
  %110 = load %struct.file*, %struct.file** %5, align 8
  %111 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %112 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 %109(%struct.file* %110, %struct.TYPE_11__* %113, i32* %114)
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %119 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sock*, %struct.sock** %8, align 8
  %126 = getelementptr inbounds %struct.sock, %struct.sock* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  br label %211

127:                                              ; preds = %97
  %128 = load %struct.sock*, %struct.sock** %8, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SMC_INIT, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %135 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = call i64 @atomic_read(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.sock*, %struct.sock** %8, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SEND_SHUTDOWN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139, %133
  %147 = load i32, i32* @EPOLLOUT, align 4
  %148 = load i32, i32* @EPOLLWRNORM, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %162

152:                                              ; preds = %139
  %153 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %154 = load %struct.sock*, %struct.sock** %8, align 8
  %155 = call i32 @sk_set_bit(i32 %153, %struct.sock* %154)
  %156 = load i32, i32* @SOCK_NOSPACE, align 4
  %157 = load %struct.sock*, %struct.sock** %8, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = call i32 @set_bit(i32 %156, i32* %160)
  br label %162

162:                                              ; preds = %152, %146
  %163 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %164 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = call i64 @atomic_read(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* @EPOLLIN, align 4
  %170 = load i32, i32* @EPOLLRDNORM, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %10, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %168, %162
  %175 = load %struct.sock*, %struct.sock** %8, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @RCV_SHUTDOWN, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load i32, i32* @EPOLLIN, align 4
  %183 = load i32, i32* @EPOLLRDNORM, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @EPOLLRDHUP, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %181, %174
  %190 = load %struct.sock*, %struct.sock** %8, align 8
  %191 = getelementptr inbounds %struct.sock, %struct.sock* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SMC_APPCLOSEWAIT1, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* @EPOLLIN, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %195, %189
  %200 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %201 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SMC_URG_VALID, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = load i32, i32* @EPOLLPRI, align 4
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %199
  br label %211

211:                                              ; preds = %210, %102
  br label %212

212:                                              ; preds = %211, %92
  br label %213

213:                                              ; preds = %212, %27
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %213, %16
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @smc_accept_poll(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
