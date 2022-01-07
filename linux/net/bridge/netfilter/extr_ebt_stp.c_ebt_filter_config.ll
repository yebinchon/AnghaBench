; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_filter_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_stp_info = type { i32, %struct.ebt_stp_config_info }
%struct.ebt_stp_config_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.stp_config_pdu = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@EBT_STP_FLAGS = common dso_local global i32 0, align 4
@EBT_STP_ROOTPRIO = common dso_local global i32 0, align 4
@EBT_STP_ROOTADDR = common dso_local global i32 0, align 4
@EBT_STP_ROOTCOST = common dso_local global i32 0, align 4
@EBT_STP_SENDERPRIO = common dso_local global i32 0, align 4
@EBT_STP_SENDERADDR = common dso_local global i32 0, align 4
@EBT_STP_PORT = common dso_local global i32 0, align 4
@EBT_STP_MSGAGE = common dso_local global i32 0, align 4
@EBT_STP_MAXAGE = common dso_local global i32 0, align 4
@EBT_STP_HELLOTIME = common dso_local global i32 0, align 4
@EBT_STP_FWDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_stp_info*, %struct.stp_config_pdu*)* @ebt_filter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_filter_config(%struct.ebt_stp_info* %0, %struct.stp_config_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebt_stp_info*, align 8
  %5 = alloca %struct.stp_config_pdu*, align 8
  %6 = alloca %struct.ebt_stp_config_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ebt_stp_info* %0, %struct.ebt_stp_info** %4, align 8
  store %struct.stp_config_pdu* %1, %struct.stp_config_pdu** %5, align 8
  %9 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %10 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %9, i32 0, i32 1
  store %struct.ebt_stp_config_info* %10, %struct.ebt_stp_config_info** %6, align 8
  %11 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %12 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EBT_STP_FLAGS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %19 = load i32, i32* @EBT_STP_FLAGS, align 4
  %20 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %21 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %24 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @NF_INVF(%struct.ebt_stp_info* %18, i32 %19, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %344

31:                                               ; preds = %17, %2
  %32 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %33 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EBT_STP_ROOTPRIO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %31
  %39 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %40 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @NR16(i32* %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %44 = load i32, i32* @EBT_STP_ROOTPRIO, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %47 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %53 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br label %56

56:                                               ; preds = %50, %38
  %57 = phi i1 [ true, %38 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @NF_INVF(%struct.ebt_stp_info* %43, i32 %44, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %344

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %65 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EBT_STP_ROOTADDR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %72 = load i32, i32* @EBT_STP_ROOTADDR, align 4
  %73 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %74 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %78 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %77, i32 0, i32 20
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %81 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %80, i32 0, i32 19
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ether_addr_equal_masked(i32* %76, i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @NF_INVF(%struct.ebt_stp_info* %71, i32 %72, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %344

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %93 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @EBT_STP_ROOTCOST, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %100 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @NR32(i32 %101)
  store i64 %102, i64* %8, align 8
  %103 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %104 = load i32, i32* @EBT_STP_ROOTCOST, align 4
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %107 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %98
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %113 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %111, %114
  br label %116

116:                                              ; preds = %110, %98
  %117 = phi i1 [ true, %98 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @NF_INVF(%struct.ebt_stp_info* %103, i32 %104, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %344

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %91
  %124 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %125 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EBT_STP_SENDERPRIO, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %132 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i64 @NR16(i32* %133)
  store i64 %134, i64* %7, align 8
  %135 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %136 = load i32, i32* @EBT_STP_SENDERPRIO, align 4
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %139 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %130
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %145 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %143, %146
  br label %148

148:                                              ; preds = %142, %130
  %149 = phi i1 [ true, %130 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  %151 = call i64 @NF_INVF(%struct.ebt_stp_info* %135, i32 %136, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %344

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %123
  %156 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %157 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @EBT_STP_SENDERADDR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %155
  %163 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %164 = load i32, i32* @EBT_STP_SENDERADDR, align 4
  %165 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %166 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %170 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %169, i32 0, i32 18
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %173 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %172, i32 0, i32 17
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ether_addr_equal_masked(i32* %168, i32 %171, i32 %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i64 @NF_INVF(%struct.ebt_stp_info* %163, i32 %164, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %344

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182, %155
  %184 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %185 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @EBT_STP_PORT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %183
  %191 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %192 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = call i64 @NR16(i32* %193)
  store i64 %194, i64* %7, align 8
  %195 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %196 = load i32, i32* @EBT_STP_PORT, align 4
  %197 = load i64, i64* %7, align 8
  %198 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %199 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %190
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %205 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %204, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %203, %206
  br label %208

208:                                              ; preds = %202, %190
  %209 = phi i1 [ true, %190 ], [ %207, %202 ]
  %210 = zext i1 %209 to i32
  %211 = call i64 @NF_INVF(%struct.ebt_stp_info* %195, i32 %196, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %344

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %183
  %216 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %217 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @EBT_STP_MSGAGE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %215
  %223 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %224 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @NR16(i32* %225)
  store i64 %226, i64* %7, align 8
  %227 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %228 = load i32, i32* @EBT_STP_MSGAGE, align 4
  %229 = load i64, i64* %7, align 8
  %230 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %231 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %229, %232
  br i1 %233, label %240, label %234

234:                                              ; preds = %222
  %235 = load i64, i64* %7, align 8
  %236 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %237 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %236, i32 0, i32 10
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %235, %238
  br label %240

240:                                              ; preds = %234, %222
  %241 = phi i1 [ true, %222 ], [ %239, %234 ]
  %242 = zext i1 %241 to i32
  %243 = call i64 @NF_INVF(%struct.ebt_stp_info* %227, i32 %228, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %344

246:                                              ; preds = %240
  br label %247

247:                                              ; preds = %246, %215
  %248 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %249 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @EBT_STP_MAXAGE, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %279

254:                                              ; preds = %247
  %255 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %256 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = call i64 @NR16(i32* %257)
  store i64 %258, i64* %7, align 8
  %259 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %260 = load i32, i32* @EBT_STP_MAXAGE, align 4
  %261 = load i64, i64* %7, align 8
  %262 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %263 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %262, i32 0, i32 11
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %261, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %254
  %267 = load i64, i64* %7, align 8
  %268 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %269 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %268, i32 0, i32 12
  %270 = load i64, i64* %269, align 8
  %271 = icmp sgt i64 %267, %270
  br label %272

272:                                              ; preds = %266, %254
  %273 = phi i1 [ true, %254 ], [ %271, %266 ]
  %274 = zext i1 %273 to i32
  %275 = call i64 @NF_INVF(%struct.ebt_stp_info* %259, i32 %260, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 0, i32* %3, align 4
  br label %344

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %247
  %280 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %281 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @EBT_STP_HELLOTIME, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %311

286:                                              ; preds = %279
  %287 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %288 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = call i64 @NR16(i32* %289)
  store i64 %290, i64* %7, align 8
  %291 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %292 = load i32, i32* @EBT_STP_HELLOTIME, align 4
  %293 = load i64, i64* %7, align 8
  %294 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %295 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %294, i32 0, i32 13
  %296 = load i64, i64* %295, align 8
  %297 = icmp slt i64 %293, %296
  br i1 %297, label %304, label %298

298:                                              ; preds = %286
  %299 = load i64, i64* %7, align 8
  %300 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %301 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %300, i32 0, i32 14
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %299, %302
  br label %304

304:                                              ; preds = %298, %286
  %305 = phi i1 [ true, %286 ], [ %303, %298 ]
  %306 = zext i1 %305 to i32
  %307 = call i64 @NF_INVF(%struct.ebt_stp_info* %291, i32 %292, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i32 0, i32* %3, align 4
  br label %344

310:                                              ; preds = %304
  br label %311

311:                                              ; preds = %310, %279
  %312 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %313 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @EBT_STP_FWDD, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %343

318:                                              ; preds = %311
  %319 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %320 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = call i64 @NR16(i32* %321)
  store i64 %322, i64* %7, align 8
  %323 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %324 = load i32, i32* @EBT_STP_FWDD, align 4
  %325 = load i64, i64* %7, align 8
  %326 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %327 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %326, i32 0, i32 15
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %336, label %330

330:                                              ; preds = %318
  %331 = load i64, i64* %7, align 8
  %332 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %333 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %332, i32 0, i32 16
  %334 = load i64, i64* %333, align 8
  %335 = icmp sgt i64 %331, %334
  br label %336

336:                                              ; preds = %330, %318
  %337 = phi i1 [ true, %318 ], [ %335, %330 ]
  %338 = zext i1 %337 to i32
  %339 = call i64 @NF_INVF(%struct.ebt_stp_info* %323, i32 %324, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  store i32 0, i32* %3, align 4
  br label %344

342:                                              ; preds = %336
  br label %343

343:                                              ; preds = %342, %311
  store i32 1, i32* %3, align 4
  br label %344

344:                                              ; preds = %343, %341, %309, %277, %245, %213, %181, %153, %121, %89, %61, %30
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i64 @NF_INVF(%struct.ebt_stp_info*, i32, i32) #1

declare dso_local i64 @NR16(i32*) #1

declare dso_local i32 @ether_addr_equal_masked(i32*, i32, i32) #1

declare dso_local i64 @NR32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
