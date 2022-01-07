; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_tx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pollfd = type { i32, i32, i64 }
%union.frame_map = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.sockaddr_ll = type { i32, i32, i32 }
%struct.tpacket3_hdr = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@PACKET_TX_RING = common dso_local global i64 0, align 8
@NUM_PACKETS = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@total_packets = common dso_local global i32 0, align 4
@TPACKET_HDRLEN = common dso_local global i32 0, align 4
@total_bytes = common dso_local global i64 0, align 8
@TPACKET2_HDRLEN = common dso_local global i32 0, align 4
@TPACKET3_HDRLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"walk_v%d_rx: received %u out of %u pkts\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" %u pkts (%u bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ring*)* @walk_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_tx(i32 %0, %struct.ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring*, align 8
  %5 = alloca %struct.pollfd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %union.frame_map, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_ll, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tpacket3_hdr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ring* %1, %struct.ring** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %13, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %13, i32 0, i32 1
  %19 = load i32, i32* @ETH_ALEN, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %13, i32 0, i32 2
  %21 = load i32, i32* @PF_PACKET, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.ring*, %struct.ring** %4, align 8
  %23 = getelementptr inbounds %struct.ring, %struct.ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 129
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.ring*, %struct.ring** %4, align 8
  %28 = getelementptr inbounds %struct.ring, %struct.ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.ring*, %struct.ring** %4, align 8
  %32 = getelementptr inbounds %struct.ring, %struct.ring* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.ring*, %struct.ring** %4, align 8
  %37 = getelementptr inbounds %struct.ring, %struct.ring* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PACKET_TX_RING, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @bug_on(i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @NUM_PACKETS, align 4
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @bug_on(i32 %46)
  %48 = load i32, i32* @PF_PACKET, align 4
  %49 = load i32, i32* @SOCK_RAW, align 4
  %50 = load i32, i32* @ETH_P_ALL, align 4
  %51 = call i32 @htons(i32 %50)
  %52 = call i32 @socket(i32 %48, i32 %49, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %35
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pair_udp_setfilter(i32 %59)
  %61 = call i32 @if_nametoindex(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %13, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = bitcast %struct.sockaddr_ll* %13 to %struct.sockaddr*
  %65 = call i32 @bind(i32 %63, %struct.sockaddr* %64, i32 12)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %58
  %72 = call i32 @memset(%struct.pollfd* %5, i32 0, i32 16)
  %73 = load i32, i32* %3, align 4
  %74 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @POLLOUT, align 4
  %76 = load i32, i32* @POLLERR, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @NUM_PACKETS, align 4
  store i32 %80, i32* @total_packets, align 4
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %82 = call i32 @create_payload(i8* %81, i64* %8)
  br label %83

83:                                               ; preds = %205, %71
  %84 = load i32, i32* @total_packets, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %207

86:                                               ; preds = %83
  %87 = load %struct.ring*, %struct.ring** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i8* @get_next_frame(%struct.ring* %87, i32 %88)
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %192, %86
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.ring*, %struct.ring** %4, align 8
  %93 = getelementptr inbounds %struct.ring, %struct.ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @__tx_kernel_ready(i8* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @total_packets, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi i1 [ false, %90 ], [ %99, %97 ]
  br i1 %101, label %102, label %205

102:                                              ; preds = %100
  %103 = load i8*, i8** %15, align 8
  %104 = bitcast %union.frame_map* %9 to i8**
  store i8* %103, i8** %104, align 8
  %105 = load %struct.ring*, %struct.ring** %4, align 8
  %106 = getelementptr inbounds %struct.ring, %struct.ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %192 [
    i32 130, label %108
    i32 129, label %137
    i32 128, label %166
  ]

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = bitcast %union.frame_map* %9 to %struct.TYPE_8__**
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i64 %109, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = bitcast %union.frame_map* %9 to %struct.TYPE_8__**
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i64 %114, i64* %118, align 8
  %119 = bitcast %union.frame_map* %9 to i8**
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = load i32, i32* @TPACKET_HDRLEN, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = getelementptr inbounds i32, i32* %124, i64 -12
  %126 = ptrtoint i32* %125 to i32
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @memcpy(i32 %126, i8* %127, i64 %128)
  %130 = bitcast %union.frame_map* %9 to %struct.TYPE_8__**
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @total_bytes, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* @total_bytes, align 8
  br label %192

137:                                              ; preds = %102
  %138 = load i64, i64* %8, align 8
  %139 = bitcast %union.frame_map* %9 to %struct.TYPE_10__**
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i64 %138, i64* %142, align 8
  %143 = load i64, i64* %8, align 8
  %144 = bitcast %union.frame_map* %9 to %struct.TYPE_10__**
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i64 %143, i64* %147, align 8
  %148 = bitcast %union.frame_map* %9 to i8**
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i32, i32* @TPACKET2_HDRLEN, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = getelementptr inbounds i32, i32* %153, i64 -12
  %155 = ptrtoint i32* %154 to i32
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @memcpy(i32 %155, i8* %156, i64 %157)
  %159 = bitcast %union.frame_map* %9 to %struct.TYPE_10__**
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @total_bytes, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* @total_bytes, align 8
  br label %192

166:                                              ; preds = %102
  %167 = load i8*, i8** %15, align 8
  %168 = bitcast i8* %167 to %struct.tpacket3_hdr*
  store %struct.tpacket3_hdr* %168, %struct.tpacket3_hdr** %16, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.tpacket3_hdr*, %struct.tpacket3_hdr** %16, align 8
  %171 = getelementptr inbounds %struct.tpacket3_hdr, %struct.tpacket3_hdr* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.tpacket3_hdr*, %struct.tpacket3_hdr** %16, align 8
  %174 = getelementptr inbounds %struct.tpacket3_hdr, %struct.tpacket3_hdr* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.tpacket3_hdr*, %struct.tpacket3_hdr** %16, align 8
  %176 = getelementptr inbounds %struct.tpacket3_hdr, %struct.tpacket3_hdr* %175, i32 0, i32 2
  store i32 0, i32* %176, align 8
  %177 = load %struct.tpacket3_hdr*, %struct.tpacket3_hdr** %16, align 8
  %178 = bitcast %struct.tpacket3_hdr* %177 to i32*
  %179 = load i32, i32* @TPACKET3_HDRLEN, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = getelementptr inbounds i32, i32* %181, i64 -12
  %183 = ptrtoint i32* %182 to i32
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %185 = load i64, i64* %8, align 8
  %186 = call i32 @memcpy(i32 %183, i8* %184, i64 %185)
  %187 = load %struct.tpacket3_hdr*, %struct.tpacket3_hdr** %16, align 8
  %188 = getelementptr inbounds %struct.tpacket3_hdr, %struct.tpacket3_hdr* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @total_bytes, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* @total_bytes, align 8
  br label %192

192:                                              ; preds = %102, %166, %137, %108
  %193 = call i32 (...) @status_bar_update()
  %194 = load i32, i32* @total_packets, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* @total_packets, align 4
  %196 = load i8*, i8** %15, align 8
  %197 = load %struct.ring*, %struct.ring** %4, align 8
  %198 = getelementptr inbounds %struct.ring, %struct.ring* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @__tx_user_ready(i8* %196, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, 1
  %203 = load i32, i32* %14, align 4
  %204 = urem i32 %202, %203
  store i32 %204, i32* %11, align 4
  br label %90

205:                                              ; preds = %100
  %206 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 1)
  br label %83

207:                                              ; preds = %83
  %208 = load i32, i32* @total_packets, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @bug_on(i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @sendto(i32 %212, i32* null, i32 0, i32 0, i32* null, i32 0)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %218 = call i32 @exit(i32 1) #3
  unreachable

219:                                              ; preds = %207
  br label %220

220:                                              ; preds = %231, %219
  %221 = load i32, i32* %6, align 4
  %222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %223 = call i32 @recvfrom(i32 %221, i8* %222, i32 1024, i32 0, i32* null, i32* null)
  store i32 %223, i32* %7, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @total_packets, align 4
  %227 = load i32, i32* @NUM_PACKETS, align 4
  %228 = icmp slt i32 %226, %227
  br label %229

229:                                              ; preds = %225, %220
  %230 = phi i1 [ false, %220 ], [ %228, %225 ]
  br i1 %230, label %231, label %241

231:                                              ; preds = %229
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %12, align 4
  %234 = add i32 %233, %232
  store i32 %234, i32* %12, align 4
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @test_payload(i8* %235, i32 %236)
  %238 = call i32 (...) @status_bar_update()
  %239 = load i32, i32* @total_packets, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* @total_packets, align 4
  br label %220

241:                                              ; preds = %229
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @close(i32 %242)
  %244 = load i32, i32* @total_packets, align 4
  %245 = load i32, i32* @NUM_PACKETS, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %241
  %248 = load i32, i32* @stderr, align 4
  %249 = load %struct.ring*, %struct.ring** %4, align 8
  %250 = getelementptr inbounds %struct.ring, %struct.ring* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @total_packets, align 4
  %253 = load i32, i32* @NUM_PACKETS, align 4
  %254 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %251, i32 %252, i32 %253)
  %255 = call i32 @exit(i32 1) #3
  unreachable

256:                                              ; preds = %241
  %257 = load i32, i32* @stderr, align 4
  %258 = load i32, i32* @NUM_PACKETS, align 4
  %259 = load i32, i32* %12, align 4
  %260 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %257, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %258, i32 %259)
  ret void
}

declare dso_local i32 @bug_on(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pair_udp_setfilter(i32) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @memset(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @create_payload(i8*, i64*) #1

declare dso_local i8* @get_next_frame(%struct.ring*, i32) #1

declare dso_local i64 @__tx_kernel_ready(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @status_bar_update(...) #1

declare dso_local i32 @__tx_user_ready(i8*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @test_payload(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
