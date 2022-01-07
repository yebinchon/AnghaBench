; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net = type { i32 }
%struct.netlink_sock = type { i64, i32, i64, i32 (%struct.net.0*, i32)*, i64*, i64 }
%struct.net.0 = type opaque
%struct.sockaddr_nl = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@NL_CFG_F_NONROOT_RECV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @netlink_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.netlink_sock*, align 8
  %11 = alloca %struct.sockaddr_nl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.net* @sock_net(%struct.sock* %19)
  store %struct.net* %20, %struct.net** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %21)
  store %struct.netlink_sock* %22, %struct.netlink_sock** %10, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = bitcast %struct.sockaddr* %23 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %24, %struct.sockaddr_nl** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 24
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %221

31:                                               ; preds = %3
  %32 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %33 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_NETLINK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %221

40:                                               ; preds = %31
  %41 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = load i32, i32* @NL_CFG_F_NONROOT_RECV, align 4
  %49 = call i32 @netlink_allowed(%struct.socket* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %221

54:                                               ; preds = %46
  %55 = load %struct.sock*, %struct.sock** %8, align 8
  %56 = call i32 @netlink_realloc_groups(%struct.sock* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %221

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %64 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BITS_PER_LONG, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %70 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 1, %71
  %73 = sub i64 %72, 1
  %74 = load i64, i64* %13, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %78 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = call i32 (...) @smp_rmb()
  %84 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %85 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %88 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %221

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %76
  %96 = call i32 (...) @netlink_lock_table()
  %97 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %98 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %97, i32 0, i32 3
  %99 = load i32 (%struct.net.0*, i32)*, i32 (%struct.net.0*, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.net.0*, i32)* %99, null
  br i1 %100, label %101, label %138

101:                                              ; preds = %95
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %134, %104
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %109 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %105
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @test_bit(i32 %113, i64* %13)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %134

117:                                              ; preds = %112
  %118 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %119 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %118, i32 0, i32 3
  %120 = load i32 (%struct.net.0*, i32)*, i32 (%struct.net.0*, i32)** %119, align 8
  %121 = load %struct.net*, %struct.net** %9, align 8
  %122 = bitcast %struct.net* %121 to %struct.net.0*
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 %120(%struct.net.0* %122, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %117
  br label %134

129:                                              ; preds = %117
  %130 = load i32, i32* %15, align 4
  %131 = load i64, i64* %13, align 8
  %132 = load %struct.sock*, %struct.sock** %8, align 8
  %133 = call i32 @netlink_undo_bind(i32 %130, i64 %131, %struct.sock* %132)
  br label %218

134:                                              ; preds = %128, %116
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %105

137:                                              ; preds = %105
  br label %138

138:                                              ; preds = %137, %101, %95
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %138
  %142 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %143 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.sock*, %struct.sock** %8, align 8
  %148 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %149 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @netlink_insert(%struct.sock* %147, i64 %150)
  br label %155

152:                                              ; preds = %141
  %153 = load %struct.socket*, %struct.socket** %5, align 8
  %154 = call i32 @netlink_autobind(%struct.socket* %153)
  br label %155

155:                                              ; preds = %152, %146
  %156 = phi i32 [ %151, %146 ], [ %154, %152 ]
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %161 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i64, i64* %13, align 8
  %165 = load %struct.sock*, %struct.sock** %8, align 8
  %166 = call i32 @netlink_undo_bind(i32 %163, i64 %164, %struct.sock* %165)
  br label %218

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %138
  %169 = load i64, i64* %13, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %168
  %172 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %173 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %172, i32 0, i32 4
  %174 = load i64*, i64** %173, align 8
  %175 = icmp eq i64* %174, null
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %178 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %176, %171
  br label %218

185:                                              ; preds = %176, %168
  %186 = call i32 (...) @netlink_unlock_table()
  %187 = call i32 (...) @netlink_table_grab()
  %188 = load %struct.sock*, %struct.sock** %8, align 8
  %189 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %190 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %13, align 8
  %193 = call i64 @hweight32(i64 %192)
  %194 = add nsw i64 %191, %193
  %195 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %196 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %195, i32 0, i32 4
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @hweight32(i64 %199)
  %201 = sub nsw i64 %194, %200
  %202 = call i32 @netlink_update_subscriptions(%struct.sock* %188, i64 %201)
  %203 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %204 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %203, i32 0, i32 4
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = and i64 %207, -4294967296
  %209 = load i64, i64* %13, align 8
  %210 = or i64 %208, %209
  %211 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %212 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %211, i32 0, i32 4
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  store i64 %210, i64* %214, align 8
  %215 = load %struct.sock*, %struct.sock** %8, align 8
  %216 = call i32 @netlink_update_listeners(%struct.sock* %215)
  %217 = call i32 (...) @netlink_table_ungrab()
  store i32 0, i32* %4, align 4
  br label %221

218:                                              ; preds = %184, %159, %129
  %219 = call i32 (...) @netlink_unlock_table()
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %218, %185, %91, %59, %51, %37, %28
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_allowed(%struct.socket*, i32) #1

declare dso_local i32 @netlink_realloc_groups(%struct.sock*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @netlink_lock_table(...) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @netlink_undo_bind(i32, i64, %struct.sock*) #1

declare dso_local i32 @netlink_insert(%struct.sock*, i64) #1

declare dso_local i32 @netlink_autobind(%struct.socket*) #1

declare dso_local i32 @netlink_unlock_table(...) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @netlink_update_subscriptions(%struct.sock*, i64) #1

declare dso_local i64 @hweight32(i64) #1

declare dso_local i32 @netlink_update_listeners(%struct.sock*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
