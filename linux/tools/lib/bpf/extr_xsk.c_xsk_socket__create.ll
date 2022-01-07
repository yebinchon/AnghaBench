; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_socket__create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_socket__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i64, i8*, i32, %struct.TYPE_6__, i32, i64, %struct.xsk_ring_prod*, %struct.xsk_ring_cons*, %struct.xsk_umem*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.xsk_umem = type { i64, i64 }
%struct.xsk_ring_cons = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.xsk_ring_prod = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.xsk_socket_config = type { i32 }
%struct.sockaddr_xdp = type { i32, i32, i64, i32 }
%struct.xdp_mmap_offsets = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error: shared umems not supported by libbpf.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_XDP = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SOL_XDP = common dso_local global i32 0, align 4
@XDP_RX_RING = common dso_local global i32 0, align 4
@XDP_TX_RING = common dso_local global i32 0, align 4
@XDP_MMAP_OFFSETS = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@XDP_PGOFF_RX_RING = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@XDP_PGOFF_TX_RING = common dso_local global i32 0, align 4
@PF_XDP = common dso_local global i32 0, align 4
@XSK_LIBBPF_FLAGS__INHIBIT_PROG_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsk_socket__create(%struct.xsk_socket** %0, i8* %1, i32 %2, %struct.xsk_umem* %3, %struct.xsk_ring_cons* %4, %struct.xsk_ring_prod* %5, %struct.xsk_socket_config* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xsk_socket**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xsk_umem*, align 8
  %13 = alloca %struct.xsk_ring_cons*, align 8
  %14 = alloca %struct.xsk_ring_prod*, align 8
  %15 = alloca %struct.xsk_socket_config*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_xdp, align 8
  %19 = alloca %struct.xdp_mmap_offsets, align 4
  %20 = alloca %struct.xsk_socket*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.xsk_socket** %0, %struct.xsk_socket*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.xsk_umem* %3, %struct.xsk_umem** %12, align 8
  store %struct.xsk_ring_cons* %4, %struct.xsk_ring_cons** %13, align 8
  store %struct.xsk_ring_prod* %5, %struct.xsk_ring_prod** %14, align 8
  store %struct.xsk_socket_config* %6, %struct.xsk_socket_config** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %23 = bitcast %struct.sockaddr_xdp* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %25 = icmp ne %struct.xsk_umem* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load %struct.xsk_socket**, %struct.xsk_socket*** %9, align 8
  %28 = icmp ne %struct.xsk_socket** %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %31 = icmp ne %struct.xsk_ring_cons* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %34 = icmp ne %struct.xsk_ring_prod* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29, %26, %7
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %442

38:                                               ; preds = %32
  %39 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %40 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %442

47:                                               ; preds = %38
  %48 = call %struct.xsk_socket* @calloc(i32 1, i32 80)
  store %struct.xsk_socket* %48, %struct.xsk_socket** %20, align 8
  %49 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %50 = icmp ne %struct.xsk_socket* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %442

54:                                               ; preds = %47
  %55 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %56 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = icmp sgt i64 %57, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32, i32* @AF_XDP, align 4
  %62 = load i32, i32* @SOCK_RAW, align 4
  %63 = call i64 @socket(i32 %61, i32 %62, i32 0)
  %64 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %65 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %67 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @errno, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %22, align 4
  br label %438

73:                                               ; preds = %60
  br label %80

74:                                               ; preds = %54
  %75 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %76 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %79 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %73
  %81 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %82 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %81, i32 0, i32 9
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %85 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %87 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %88 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %87, i32 0, i32 8
  store %struct.xsk_umem* %86, %struct.xsk_umem** %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @if_nametoindex(i8* %89)
  %91 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %92 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  %93 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %94 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %80
  %98 = load i32, i32* @errno, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %22, align 4
  br label %426

100:                                              ; preds = %80
  %101 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %102 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* @IFNAMSIZ, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @memcpy(i8* %103, i8* %104, i32 %106)
  %108 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %109 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @IFNAMSIZ, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %116 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %115, i32 0, i32 3
  %117 = load %struct.xsk_socket_config*, %struct.xsk_socket_config** %15, align 8
  %118 = call i32 @xsk_set_xdp_socket_config(%struct.TYPE_6__* %116, %struct.xsk_socket_config* %117)
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %100
  br label %426

122:                                              ; preds = %100
  %123 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %124 = icmp ne %struct.xsk_ring_cons* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %127 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @SOL_XDP, align 4
  %130 = load i32, i32* @XDP_RX_RING, align 4
  %131 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %132 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = call i32 @setsockopt(i64 %128, i32 %129, i32 %130, i32* %133, i32 4)
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %125
  %138 = load i32, i32* @errno, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %22, align 4
  br label %426

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140, %122
  %142 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %143 = icmp ne %struct.xsk_ring_prod* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %146 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @SOL_XDP, align 4
  %149 = load i32, i32* @XDP_TX_RING, align 4
  %150 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %151 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = call i32 @setsockopt(i64 %147, i32 %148, i32 %149, i32* %152, i32 4)
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load i32, i32* @errno, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %22, align 4
  br label %426

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %141
  store i32 32, i32* %21, align 4
  %161 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %162 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @SOL_XDP, align 4
  %165 = load i32, i32* @XDP_MMAP_OFFSETS, align 4
  %166 = call i32 @getsockopt(i64 %163, i32 %164, i32 %165, %struct.xdp_mmap_offsets* %19, i32* %21)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* @errno, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %22, align 4
  br label %426

172:                                              ; preds = %160
  %173 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %174 = icmp ne %struct.xsk_ring_cons* %173, null
  br i1 %174, label %175, label %251

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %181 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = add i64 %179, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @PROT_READ, align 4
  %189 = load i32, i32* @PROT_WRITE, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @MAP_SHARED, align 4
  %192 = load i32, i32* @MAP_POPULATE, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %195 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @XDP_PGOFF_RX_RING, align 4
  %198 = call i8* @mmap(i32* null, i32 %187, i32 %190, i32 %193, i64 %196, i32 %197)
  store i8* %198, i8** %16, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = load i8*, i8** @MAP_FAILED, align 8
  %201 = icmp eq i8* %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %175
  %203 = load i32, i32* @errno, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %22, align 4
  br label %426

205:                                              ; preds = %175
  %206 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %207 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, 1
  %211 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %212 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %214 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %218 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i8*, i8** %16, align 8
  %220 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr i8, i8* %219, i64 %223
  %225 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %226 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr i8, i8* %227, i64 %231
  %233 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %234 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %233, i32 0, i32 4
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** %16, align 8
  %236 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr i8, i8* %235, i64 %239
  %241 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %242 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  %243 = load i8*, i8** %16, align 8
  %244 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr i8, i8* %243, i64 %247
  %249 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %250 = getelementptr inbounds %struct.xsk_ring_cons, %struct.xsk_ring_cons* %249, i32 0, i32 2
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %205, %172
  %252 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %253 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %254 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %253, i32 0, i32 7
  store %struct.xsk_ring_cons* %252, %struct.xsk_ring_cons** %254, align 8
  %255 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %256 = icmp ne %struct.xsk_ring_prod* %255, null
  br i1 %256, label %257, label %339

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %263 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 %266, 4
  %268 = add i64 %261, %267
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* @PROT_READ, align 4
  %271 = load i32, i32* @PROT_WRITE, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @MAP_SHARED, align 4
  %274 = load i32, i32* @MAP_POPULATE, align 4
  %275 = or i32 %273, %274
  %276 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %277 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* @XDP_PGOFF_TX_RING, align 4
  %280 = call i8* @mmap(i32* null, i32 %269, i32 %272, i32 %275, i64 %278, i32 %279)
  store i8* %280, i8** %17, align 8
  %281 = load i8*, i8** %17, align 8
  %282 = load i8*, i8** @MAP_FAILED, align 8
  %283 = icmp eq i8* %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %257
  %285 = load i32, i32* @errno, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %22, align 4
  br label %407

287:                                              ; preds = %257
  %288 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %289 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, 1
  %293 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %294 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %296 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %300 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load i8*, i8** %17, align 8
  %302 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr i8, i8* %301, i64 %305
  %307 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %308 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %307, i32 0, i32 6
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** %17, align 8
  %310 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr i8, i8* %309, i64 %313
  %315 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %316 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %315, i32 0, i32 5
  store i8* %314, i8** %316, align 8
  %317 = load i8*, i8** %17, align 8
  %318 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr i8, i8* %317, i64 %321
  %323 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %324 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %323, i32 0, i32 4
  store i8* %322, i8** %324, align 8
  %325 = load i8*, i8** %17, align 8
  %326 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr i8, i8* %325, i64 %329
  %331 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %332 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %331, i32 0, i32 3
  store i8* %330, i8** %332, align 8
  %333 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %334 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %338 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %287, %251
  %340 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %341 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %342 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %341, i32 0, i32 6
  store %struct.xsk_ring_prod* %340, %struct.xsk_ring_prod** %342, align 8
  %343 = load i32, i32* @PF_XDP, align 4
  %344 = getelementptr inbounds %struct.sockaddr_xdp, %struct.sockaddr_xdp* %18, i32 0, i32 3
  store i32 %343, i32* %344, align 8
  %345 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %346 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.sockaddr_xdp, %struct.sockaddr_xdp* %18, i32 0, i32 2
  store i64 %347, i64* %348, align 8
  %349 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %350 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds %struct.sockaddr_xdp, %struct.sockaddr_xdp* %18, i32 0, i32 1
  store i32 %351, i32* %352, align 4
  %353 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %354 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.sockaddr_xdp, %struct.sockaddr_xdp* %18, i32 0, i32 0
  store i32 %356, i32* %357, align 8
  %358 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %359 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = bitcast %struct.sockaddr_xdp* %18 to %struct.sockaddr*
  %362 = call i32 @bind(i64 %360, %struct.sockaddr* %361, i32 24)
  store i32 %362, i32* %22, align 4
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %339
  %366 = load i32, i32* @errno, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %22, align 4
  br label %388

368:                                              ; preds = %339
  %369 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %370 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %369, i32 0, i32 2
  store i32 -1, i32* %370, align 8
  %371 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %372 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @XSK_LIBBPF_FLAGS__INHIBIT_PROG_LOAD, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %368
  %379 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %380 = call i32 @xsk_setup_xdp_prog(%struct.xsk_socket* %379)
  store i32 %380, i32* %22, align 4
  %381 = load i32, i32* %22, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  br label %388

384:                                              ; preds = %378
  br label %385

385:                                              ; preds = %384, %368
  %386 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %387 = load %struct.xsk_socket**, %struct.xsk_socket*** %9, align 8
  store %struct.xsk_socket* %386, %struct.xsk_socket** %387, align 8
  store i32 0, i32* %8, align 4
  br label %442

388:                                              ; preds = %383, %365
  %389 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %14, align 8
  %390 = icmp ne %struct.xsk_ring_prod* %389, null
  br i1 %390, label %391, label %406

391:                                              ; preds = %388
  %392 = load i8*, i8** %17, align 8
  %393 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %398 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = mul i64 %401, 4
  %403 = add i64 %396, %402
  %404 = trunc i64 %403 to i32
  %405 = call i32 @munmap(i8* %392, i32 %404)
  br label %406

406:                                              ; preds = %391, %388
  br label %407

407:                                              ; preds = %406, %284
  %408 = load %struct.xsk_ring_cons*, %struct.xsk_ring_cons** %13, align 8
  %409 = icmp ne %struct.xsk_ring_cons* %408, null
  br i1 %409, label %410, label %425

410:                                              ; preds = %407
  %411 = load i8*, i8** %16, align 8
  %412 = getelementptr inbounds %struct.xdp_mmap_offsets, %struct.xdp_mmap_offsets* %19, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = sext i32 %414 to i64
  %416 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %417 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = mul i64 %420, 4
  %422 = add i64 %415, %421
  %423 = trunc i64 %422 to i32
  %424 = call i32 @munmap(i8* %411, i32 %423)
  br label %425

425:                                              ; preds = %410, %407
  br label %426

426:                                              ; preds = %425, %202, %169, %156, %137, %121, %97
  %427 = load %struct.xsk_umem*, %struct.xsk_umem** %12, align 8
  %428 = getelementptr inbounds %struct.xsk_umem, %struct.xsk_umem* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %429, -1
  store i64 %430, i64* %428, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %434 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = call i32 @close(i64 %435)
  br label %437

437:                                              ; preds = %432, %426
  br label %438

438:                                              ; preds = %437, %70
  %439 = load %struct.xsk_socket*, %struct.xsk_socket** %20, align 8
  %440 = call i32 @free(%struct.xsk_socket* %439)
  %441 = load i32, i32* %22, align 4
  store i32 %441, i32* %8, align 4
  br label %442

442:                                              ; preds = %438, %385, %51, %43, %35
  %443 = load i32, i32* %8, align 4
  ret i32 %443
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_warning(i8*) #2

declare dso_local %struct.xsk_socket* @calloc(i32, i32) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i64 @if_nametoindex(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @xsk_set_xdp_socket_config(%struct.TYPE_6__*, %struct.xsk_socket_config*) #2

declare dso_local i32 @setsockopt(i64, i32, i32, i32*, i32) #2

declare dso_local i32 @getsockopt(i64, i32, i32, %struct.xdp_mmap_offsets*, i32*) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #2

declare dso_local i32 @xsk_setup_xdp_prog(%struct.xsk_socket*) #2

declare dso_local i32 @munmap(i8*, i32) #2

declare dso_local i32 @close(i64) #2

declare dso_local i32 @free(%struct.xsk_socket*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
