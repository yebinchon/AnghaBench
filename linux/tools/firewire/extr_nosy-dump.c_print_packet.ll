; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_print_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_print_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_packet = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.link_packet = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%6u  \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bus reset\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"short packet: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%08x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ext phy config: phy_id=%02x\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"phy config:\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c" set_root_id=%02x\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" set_gap_count=%d\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"link-on packet, phy_id=%02x\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"extended self id: phy_id=%02x, seq=%d\00", align 1
@print_packet.speed_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"S100\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"S200\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"S400\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"BETA\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"self id: phy_id=%02x, link %s, gap_count=%d, speed=%s%s%s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"not active\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c", irm contender\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [12 x i8] c", initiator\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"unknown phy packet: \00", align 1
@option_verbose = common dso_local global i64 0, align 8
@PACKET_FIELD_DETAIL = common dso_local global i32 0, align 4
@option_hex = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"  [\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @print_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_packet(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_packet*, align 8
  %7 = alloca %struct.link_packet*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %207

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %17, 64
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %19
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = udiv i64 %24, 4
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %31, i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %21
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %206

43:                                               ; preds = %16
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 64
  br i1 %45, label %46, label %192

46:                                               ; preds = %43
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %192

55:                                               ; preds = %46
  %56 = load i32*, i32** %3, align 8
  %57 = bitcast i32* %56 to %struct.phy_packet*
  store %struct.phy_packet* %57, %struct.phy_packet** %6, align 8
  %58 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %59 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %167 [
    i32 130, label %62
    i32 129, label %107
    i32 128, label %113
  ]

62:                                               ; preds = %55
  %63 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %64 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  %69 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %70 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %76 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  br label %106

80:                                               ; preds = %68, %62
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %82 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %83 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %89 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %95 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %101 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %74
  br label %191

107:                                              ; preds = %55
  %108 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %109 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %111)
  br label %191

113:                                              ; preds = %55
  %114 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %115 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %121 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %125 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %123, i32 %127)
  br label %166

129:                                              ; preds = %113
  %130 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %131 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %135 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)
  %141 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %142 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %146 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_packet.speed_names, i64 0, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %152 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %158 = load %struct.phy_packet*, %struct.phy_packet** %6, align 8
  %159 = getelementptr inbounds %struct.phy_packet, %struct.phy_packet* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 %133, i8* %140, i32 %144, i8* %150, i8* %157, i8* %164)
  br label %166

166:                                              ; preds = %129, %119
  br label %191

167:                                              ; preds = %55
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %169

169:                                              ; preds = %186, %167
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %4, align 8
  %173 = udiv i64 %172, 4
  %174 = icmp ult i64 %171, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %179, i32 %184)
  br label %186

186:                                              ; preds = %175
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %169

189:                                              ; preds = %169
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %166, %107, %106
  br label %205

192:                                              ; preds = %46, %43
  %193 = load i32*, i32** %3, align 8
  %194 = bitcast i32* %193 to %struct.link_packet*
  store %struct.link_packet* %194, %struct.link_packet** %7, align 8
  %195 = load %struct.link_packet*, %struct.link_packet** %7, align 8
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @option_verbose, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @PACKET_FIELD_DETAIL, align 4
  br label %202

202:                                              ; preds = %200, %199
  %203 = phi i32 [ 0, %199 ], [ %201, %200 ]
  %204 = call i32 @decode_link_packet(%struct.link_packet* %195, i64 %196, i32 0, i32 %203)
  br label %205

205:                                              ; preds = %202, %191
  br label %206

206:                                              ; preds = %205, %41
  br label %207

207:                                              ; preds = %206, %14
  %208 = load i64, i64* @option_hex, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %212 = load i32*, i32** %3, align 8
  %213 = bitcast i32* %212 to i8*
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  %215 = load i64, i64* %4, align 8
  %216 = sub i64 %215, 4
  %217 = call i32 @dump_data(i8* %214, i64 %216)
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %219

219:                                              ; preds = %210, %207
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @decode_link_packet(%struct.link_packet*, i64, i32, i32) #1

declare dso_local i32 @dump_data(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
