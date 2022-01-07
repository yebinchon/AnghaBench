; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c___inet_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c___inet_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 (%struct.sock*, i16)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.inet_sock = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.net = type { i32 }

@RT_TABLE_LOCAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__inet_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %11, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call %struct.inet_sock* @inet_sk(%struct.sock* %20)
  store %struct.inet_sock* %21, %struct.inet_sock** %12, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call %struct.net* @sock_net(%struct.sock* %22)
  store %struct.net* %23, %struct.net** %13, align 8
  %24 = load i32, i32* @RT_TABLE_LOCAL, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i32, i32* @EAFNOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_UNSPEC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = call i64 @htonl(i32 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30
  br label %240

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %5
  %49 = load %struct.net*, %struct.net** %13, align 8
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @l3mdev_fib_table_by_index(%struct.net* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i64 [ %53, %55 ], [ %58, %56 ]
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load %struct.net*, %struct.net** %13, align 8
  %63 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @inet_addr_type_table(%struct.net* %62, i64 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* @EADDRNOTAVAIL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %17, align 4
  %71 = load %struct.net*, %struct.net** %13, align 8
  %72 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %73 = call i32 @inet_can_nonlocal_bind(%struct.net* %71, %struct.inet_sock* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %59
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @INADDR_ANY, align 4
  %81 = call i64 @htonl(i32 %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @RTN_LOCAL, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @RTN_MULTICAST, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @RTN_BROADCAST, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %240

96:                                               ; preds = %91, %87, %83, %75, %59
  %97 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call zeroext i16 @ntohs(i32 %99)
  store i16 %100, i16* %14, align 2
  %101 = load i32, i32* @EACCES, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  %103 = load i16, i16* %14, align 2
  %104 = zext i16 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %96
  %107 = load i16, i16* %14, align 2
  %108 = zext i16 %107 to i32
  %109 = load %struct.net*, %struct.net** %13, align 8
  %110 = call zeroext i16 @inet_prot_sock(%struct.net* %109)
  %111 = zext i16 %110 to i32
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.net*, %struct.net** %13, align 8
  %115 = getelementptr inbounds %struct.net, %struct.net* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %118 = call i32 @ns_capable(i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %240

121:                                              ; preds = %113, %106, %96
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.sock*, %struct.sock** %6, align 8
  %126 = call i32 @lock_sock(%struct.sock* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  %130 = load %struct.sock*, %struct.sock** %6, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TCP_CLOSE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %127
  %136 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %137 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %127
  br label %233

141:                                              ; preds = %135
  %142 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %147 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %149 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %148, i32 0, i32 0
  store i64 %145, i64* %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @RTN_MULTICAST, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @RTN_BROADCAST, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %141
  %158 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %159 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i16, i16* %14, align 2
  %162 = zext i16 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %166 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %200, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %200, label %172

172:                                              ; preds = %169, %160
  %173 = load %struct.sock*, %struct.sock** %6, align 8
  %174 = getelementptr inbounds %struct.sock, %struct.sock* %173, i32 0, i32 2
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64 (%struct.sock*, i16)*, i64 (%struct.sock*, i16)** %176, align 8
  %178 = load %struct.sock*, %struct.sock** %6, align 8
  %179 = load i16, i16* %14, align 2
  %180 = call i64 %177(%struct.sock* %178, i16 zeroext %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %184 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %183, i32 0, i32 0
  store i64 0, i64* %184, align 8
  %185 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %186 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* @EADDRINUSE, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %17, align 4
  br label %233

189:                                              ; preds = %172
  %190 = load %struct.sock*, %struct.sock** %6, align 8
  %191 = call i32 @BPF_CGROUP_RUN_PROG_INET4_POST_BIND(%struct.sock* %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %196 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %198 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  br label %233

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %169, %164
  %201 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %202 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %207 = load %struct.sock*, %struct.sock** %6, align 8
  %208 = getelementptr inbounds %struct.sock, %struct.sock* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i16, i16* %14, align 2
  %213 = icmp ne i16 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %216 = load %struct.sock*, %struct.sock** %6, align 8
  %217 = getelementptr inbounds %struct.sock, %struct.sock* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %211
  %221 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %222 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @htons(i64 %223)
  %225 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %226 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %228 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %227, i32 0, i32 3
  store i64 0, i64* %228, align 8
  %229 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %230 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %229, i32 0, i32 2
  store i64 0, i64* %230, align 8
  %231 = load %struct.sock*, %struct.sock** %6, align 8
  %232 = call i32 @sk_dst_reset(%struct.sock* %231)
  store i32 0, i32* %17, align 4
  br label %233

233:                                              ; preds = %220, %194, %182, %140
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.sock*, %struct.sock** %6, align 8
  %238 = call i32 @release_sock(%struct.sock* %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %120, %95, %46
  %241 = load i32, i32* %17, align 4
  ret i32 %241
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @l3mdev_fib_table_by_index(%struct.net*, i32) #1

declare dso_local i32 @inet_addr_type_table(%struct.net*, i64, i32) #1

declare dso_local i32 @inet_can_nonlocal_bind(%struct.net*, %struct.inet_sock*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local zeroext i16 @inet_prot_sock(%struct.net*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @BPF_CGROUP_RUN_PROG_INET4_POST_BIND(%struct.sock*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
