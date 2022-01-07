; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_do_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.packet_sock = type { i32, i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i32, i64)* @packet_do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_do_bind(%struct.sock* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.packet_sock*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.packet_sock* @pkt_sk(%struct.sock* %16)
  store %struct.packet_sock* %17, %struct.packet_sock** %9, align 8
  store %struct.net_device* null, %struct.net_device** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %21 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %25 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  br label %206

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.net_device* @dev_get_by_name_rcu(i32 %36, i8* %37)
  store %struct.net_device* %38, %struct.net_device** %13, align 8
  %39 = load %struct.net_device*, %struct.net_device** %13, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  br label %206

44:                                               ; preds = %34
  br label %60

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = call i32 @sock_net(%struct.sock* %49)
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.net_device* @dev_get_by_index_rcu(i32 %50, i32 %51)
  store %struct.net_device* %52, %struct.net_device** %13, align 8
  %53 = load %struct.net_device*, %struct.net_device** %13, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %206

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.net_device*, %struct.net_device** %13, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.net_device*, %struct.net_device** %13, align 8
  %65 = call i32 @dev_hold(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %68 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %72 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load %struct.net_device*, %struct.net_device** %73, align 8
  store %struct.net_device* %74, %struct.net_device** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = load %struct.net_device*, %struct.net_device** %13, align 8
  %81 = icmp ne %struct.net_device* %79, %80
  br label %82

82:                                               ; preds = %78, %66
  %83 = phi i1 [ true, %66 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %161

87:                                               ; preds = %82
  %88 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %89 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %87
  %93 = call i32 (...) @rcu_read_unlock()
  %94 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %95 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = call i32 @__unregister_prot_hook(%struct.sock* %96, i32 1)
  %98 = call i32 (...) @rcu_read_lock()
  %99 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %100 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  store %struct.net_device* %102, %struct.net_device** %10, align 8
  %103 = load %struct.net_device*, %struct.net_device** %13, align 8
  %104 = icmp ne %struct.net_device* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %92
  %106 = load %struct.sock*, %struct.sock** %5, align 8
  %107 = call i32 @sock_net(%struct.sock* %106)
  %108 = load %struct.net_device*, %struct.net_device** %13, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.net_device* @dev_get_by_index_rcu(i32 %107, i32 %110)
  %112 = icmp ne %struct.net_device* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %105, %92
  br label %116

116:                                              ; preds = %115, %87
  %117 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %118 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @BUG_ON(i64 %119)
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %123 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %126 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %116
  %132 = load %struct.net_device*, %struct.net_device** %13, align 8
  %133 = call i32 @dev_put(%struct.net_device* %132)
  %134 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %135 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %136, align 8
  %137 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %138 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 8
  %139 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %140 = call i32 @packet_cached_dev_reset(%struct.packet_sock* %139)
  br label %160

141:                                              ; preds = %116
  %142 = load %struct.net_device*, %struct.net_device** %13, align 8
  %143 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %144 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  store %struct.net_device* %142, %struct.net_device** %145, align 8
  %146 = load %struct.net_device*, %struct.net_device** %13, align 8
  %147 = icmp ne %struct.net_device* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load %struct.net_device*, %struct.net_device** %13, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  br label %153

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  %155 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %156 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %158 = load %struct.net_device*, %struct.net_device** %13, align 8
  %159 = call i32 @packet_cached_dev_assign(%struct.packet_sock* %157, %struct.net_device* %158)
  br label %160

160:                                              ; preds = %153, %131
  br label %161

161:                                              ; preds = %160, %82
  %162 = load %struct.net_device*, %struct.net_device** %10, align 8
  %163 = icmp ne %struct.net_device* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.net_device*, %struct.net_device** %10, align 8
  %166 = call i32 @dev_put(%struct.net_device* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i64, i64* %8, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170, %167
  br label %206

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %174
  %178 = load %struct.net_device*, %struct.net_device** %13, align 8
  %179 = icmp ne %struct.net_device* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.net_device*, %struct.net_device** %13, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IFF_UP, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180, %177
  %188 = load %struct.sock*, %struct.sock** %5, align 8
  %189 = call i32 @register_prot_hook(%struct.sock* %188)
  br label %205

190:                                              ; preds = %180, %174
  %191 = load i32, i32* @ENETDOWN, align 4
  %192 = load %struct.sock*, %struct.sock** %5, align 8
  %193 = getelementptr inbounds %struct.sock, %struct.sock* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.sock*, %struct.sock** %5, align 8
  %195 = load i32, i32* @SOCK_DEAD, align 4
  %196 = call i32 @sock_flag(%struct.sock* %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %190
  %199 = load %struct.sock*, %struct.sock** %5, align 8
  %200 = getelementptr inbounds %struct.sock, %struct.sock* %199, i32 0, i32 0
  %201 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %200, align 8
  %202 = load %struct.sock*, %struct.sock** %5, align 8
  %203 = call i32 %201(%struct.sock* %202)
  br label %204

204:                                              ; preds = %198, %190
  br label %205

205:                                              ; preds = %204, %187
  br label %206

206:                                              ; preds = %205, %173, %55, %41, %28
  %207 = call i32 (...) @rcu_read_unlock()
  %208 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %209 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %208, i32 0, i32 1
  %210 = call i32 @spin_unlock(i32* %209)
  %211 = load %struct.sock*, %struct.sock** %5, align 8
  %212 = call i32 @release_sock(%struct.sock* %211)
  %213 = load i32, i32* %14, align 4
  ret i32 %213
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_name_rcu(i32, i8*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__unregister_prot_hook(%struct.sock*, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @packet_cached_dev_reset(%struct.packet_sock*) #1

declare dso_local i32 @packet_cached_dev_assign(%struct.packet_sock*, %struct.net_device*) #1

declare dso_local i32 @register_prot_hook(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
