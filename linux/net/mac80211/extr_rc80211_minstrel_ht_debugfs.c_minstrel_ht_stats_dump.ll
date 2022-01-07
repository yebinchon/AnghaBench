; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32, i32, i32*, i32 }
%struct.minstrel_ht_sta = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32, i32, i32, i64, i64 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_ht_stats_dump.bitrates = internal constant [4 x i32] [i32 10, i32 20, i32 55, i32 110], align 16
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HT%c0  \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%cGI  \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"VHT%c0 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%cGI \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"CCK    \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%cP  \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"  MCS%-2u\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"  MCS%-1u/%1u\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"   %2u.%1uM\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"  %3u  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%6u  \00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"%4u.%1u    %4u.%1u     %3u.%1u     %3u   %3u %-3u   %9llu   %-9llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.minstrel_ht_sta*, i32, i8*)* @minstrel_ht_stats_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @minstrel_ht_stats_dump(%struct.minstrel_ht_sta* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mcs_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.minstrel_rate_stats*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8 50, i8* %14, align 1
  store i8 76, i8* %15, align 1
  %21 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %22 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %4, align 8
  br label %356

31:                                               ; preds = %3
  %32 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %32, i64 %34
  store %struct.mcs_group* %35, %struct.mcs_group** %8, align 8
  %36 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %37 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i8 52, i8* %14, align 1
  br label %51

44:                                               ; preds = %31
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8 56, i8* %14, align 1
  br label %50

50:                                               ; preds = %49, %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8 83, i8* %15, align 1
  br label %57

57:                                               ; preds = %56, %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %351, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MCS_GROUP_RATES, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %354

62:                                               ; preds = %58
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %64 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %70, i64 %72
  store %struct.minstrel_rate_stats* %73, %struct.minstrel_rate_stats** %17, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MCS_GROUP_RATES, align 4
  %76 = mul i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %80 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %62
  br label %351

91:                                               ; preds = %62
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %14, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %15, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %113 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %7, align 8
  br label %168

119:                                              ; preds = %91
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %14, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %7, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %15, align 1
  %134 = sext i8 %133 to i32
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i8*, i8** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %141 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %7, align 8
  br label %167

147:                                              ; preds = %119
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i8*, i8** %7, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %7, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = icmp ult i32 %154, 4
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 76, i32 83
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %7, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i8*, i8** %7, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %7, align 8
  br label %167

167:                                              ; preds = %147, %124
  br label %168

168:                                              ; preds = %167, %96
  %169 = load i32, i32* %18, align 4
  %170 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %171 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %169, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 65, i32 32
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %7, align 8
  store i8 %178, i8* %179, align 1
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %183 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %181, %186
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 66, i32 32
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %7, align 8
  store i8 %190, i8* %191, align 1
  %193 = load i32, i32* %18, align 4
  %194 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %195 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %193, %198
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 67, i32 32
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %7, align 8
  store i8 %202, i8* %203, align 1
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %207 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %205, %210
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 68, i32 32
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  store i8 %214, i8* %215, align 1
  %217 = load i32, i32* %18, align 4
  %218 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %219 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 80, i32 32
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %7, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %168
  %232 = load i8*, i8** %7, align 8
  %233 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %234 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, 1
  %237 = mul nsw i32 %236, 8
  %238 = load i32, i32* %9, align 4
  %239 = add i32 %237, %238
  %240 = call i32 (i8*, i8*, ...) @sprintf(i8* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %239)
  %241 = load i8*, i8** %7, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %7, align 8
  br label %275

244:                                              ; preds = %168
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %253 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, i8*, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %251, i32 %254)
  %256 = load i8*, i8** %7, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8* %258, i8** %7, align 8
  br label %274

259:                                              ; preds = %244
  %260 = load i32, i32* %9, align 4
  %261 = urem i32 %260, 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* @minstrel_ht_stats_dump.bitrates, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %20, align 4
  %265 = load i8*, i8** %7, align 8
  %266 = load i32, i32* %20, align 4
  %267 = sdiv i32 %266, 10
  %268 = load i32, i32* %20, align 4
  %269 = srem i32 %268, 10
  %270 = call i32 (i8*, i8*, ...) @sprintf(i8* %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %267, i32 %269)
  %271 = load i8*, i8** %7, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %7, align 8
  br label %274

274:                                              ; preds = %259, %249
  br label %275

275:                                              ; preds = %274, %231
  %276 = load i8*, i8** %7, align 8
  %277 = load i32, i32* %18, align 4
  %278 = call i32 (i8*, i8*, ...) @sprintf(i8* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %277)
  %279 = load i8*, i8** %7, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8* %281, i8** %7, align 8
  %282 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %283 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %19, align 4
  %289 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %290 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %19, align 4
  %293 = shl i32 %292, %291
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* %19, align 4
  %295 = call i32 @DIV_ROUND_CLOSEST(i32 %294, i32 1000)
  store i32 %295, i32* %13, align 4
  %296 = load i8*, i8** %7, align 8
  %297 = load i32, i32* %13, align 4
  %298 = call i32 (i8*, i8*, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %297)
  %299 = load i8*, i8** %7, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %7, align 8
  %302 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @MINSTREL_FRAC(i32 100, i32 100)
  %306 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %302, i32 %303, i32 %304, i32 %305)
  store i32 %306, i32* %10, align 4
  %307 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %9, align 4
  %310 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %311 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %307, i32 %308, i32 %309, i32 %312)
  store i32 %313, i32* %11, align 4
  %314 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %315 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 %316, 1000
  %318 = call i32 @MINSTREL_TRUNC(i32 %317)
  store i32 %318, i32* %12, align 4
  %319 = load i8*, i8** %7, align 8
  %320 = load i32, i32* %10, align 4
  %321 = udiv i32 %320, 10
  %322 = load i32, i32* %10, align 4
  %323 = urem i32 %322, 10
  %324 = load i32, i32* %11, align 4
  %325 = udiv i32 %324, 10
  %326 = load i32, i32* %11, align 4
  %327 = urem i32 %326, 10
  %328 = load i32, i32* %12, align 4
  %329 = udiv i32 %328, 10
  %330 = load i32, i32* %12, align 4
  %331 = urem i32 %330, 10
  %332 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %333 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %336 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %339 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %342 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %345 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = call i32 (i8*, i8*, ...) @sprintf(i8* %319, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i32 %321, i32 %323, i32 %325, i32 %327, i32 %329, i32 %331, i32 %334, i32 %337, i32 %340, i64 %343, i64 %346)
  %348 = load i8*, i8** %7, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8* %350, i8** %7, align 8
  br label %351

351:                                              ; preds = %275, %90
  %352 = load i32, i32* %9, align 4
  %353 = add i32 %352, 1
  store i32 %353, i32* %9, align 4
  br label %58

354:                                              ; preds = %58
  %355 = load i8*, i8** %7, align 8
  store i8* %355, i8** %4, align 8
  br label %356

356:                                              ; preds = %354, %29
  %357 = load i8*, i8** %4, align 8
  ret i8* %357
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
