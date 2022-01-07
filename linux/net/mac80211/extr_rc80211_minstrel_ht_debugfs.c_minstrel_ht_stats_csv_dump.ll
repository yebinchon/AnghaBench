; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_csv_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_csv_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32, i32, i32*, i32 }
%struct.minstrel_ht_sta = type { i32*, i32*, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32, i32, i32, i64, i64 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_ht_stats_csv_dump.bitrates = internal constant [4 x i32] [i32 10, i32 20, i32 55, i32 110], align 16
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"HT%c0,\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%cGI,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"VHT%c0,\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCK,\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%cP,\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1,\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c",MCS%-2u,\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c",MCS%-1u/%1u,\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c",%2u.%1uM,\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"%u.%u,%u.%u,%u.%u,%u,%u,%u,%llu,%llu,\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%d,%d,%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.minstrel_ht_sta*, i32, i8*)* @minstrel_ht_stats_csv_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @minstrel_ht_stats_csv_dump(%struct.minstrel_ht_sta* %0, i32 %1, i8* %2) #0 {
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
  br label %393

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

58:                                               ; preds = %388, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MCS_GROUP_RATES, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %391

62:                                               ; preds = %58
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %64 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %63, i32 0, i32 6
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
  br label %388

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
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %15, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %113 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %114)
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
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load i8*, i8** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %141 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %7, align 8
  br label %167

147:                                              ; preds = %119
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i8*, i8** %7, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %7, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = icmp ult i32 %154, 4
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 76, i32 83
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %7, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %164 = load i8*, i8** %7, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %7, align 8
  br label %167

167:                                              ; preds = %147, %124
  br label %168

168:                                              ; preds = %167, %96
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %172 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %170, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  %180 = load i8*, i8** %7, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %7, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %186 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %184, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %192)
  %194 = load i8*, i8** %7, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %7, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %200 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %198, %203
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %206)
  %208 = load i8*, i8** %7, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %7, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i32, i32* %18, align 4
  %213 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %214 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %212, %217
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %220)
  %222 = load i8*, i8** %7, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %7, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %228 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %226, %229
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %233 = call i32 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %232)
  %234 = load i8*, i8** %7, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %7, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %168
  %242 = load i8*, i8** %7, align 8
  %243 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %244 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  %247 = mul nsw i32 %246, 8
  %248 = load i32, i32* %9, align 4
  %249 = add i32 %247, %248
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %249)
  %251 = load i8*, i8** %7, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8* %253, i8** %7, align 8
  br label %285

254:                                              ; preds = %168
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %254
  %260 = load i8*, i8** %7, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %263 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %260, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %261, i32 %264)
  %266 = load i8*, i8** %7, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8* %268, i8** %7, align 8
  br label %284

269:                                              ; preds = %254
  %270 = load i32, i32* %9, align 4
  %271 = urem i32 %270, 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* @minstrel_ht_stats_csv_dump.bitrates, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %20, align 4
  %275 = load i8*, i8** %7, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sdiv i32 %276, 10
  %278 = load i32, i32* %20, align 4
  %279 = srem i32 %278, 10
  %280 = call i32 (i8*, i8*, ...) @sprintf(i8* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %277, i32 %279)
  %281 = load i8*, i8** %7, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  store i8* %283, i8** %7, align 8
  br label %284

284:                                              ; preds = %269, %259
  br label %285

285:                                              ; preds = %284, %241
  %286 = load i8*, i8** %7, align 8
  %287 = load i32, i32* %18, align 4
  %288 = call i32 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %287)
  %289 = load i8*, i8** %7, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8* %291, i8** %7, align 8
  %292 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %293 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %19, align 4
  %299 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %300 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %19, align 4
  %303 = shl i32 %302, %301
  store i32 %303, i32* %19, align 4
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @DIV_ROUND_CLOSEST(i32 %304, i32 1000)
  store i32 %305, i32* %13, align 4
  %306 = load i8*, i8** %7, align 8
  %307 = load i32, i32* %13, align 4
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %307)
  %309 = load i8*, i8** %7, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %7, align 8
  %312 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @MINSTREL_FRAC(i32 100, i32 100)
  %316 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %312, i32 %313, i32 %314, i32 %315)
  store i32 %316, i32* %10, align 4
  %317 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %9, align 4
  %320 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %321 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %317, i32 %318, i32 %319, i32 %322)
  store i32 %323, i32* %11, align 4
  %324 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %325 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = mul nsw i32 %326, 1000
  %328 = call i32 @MINSTREL_TRUNC(i32 %327)
  store i32 %328, i32* %12, align 4
  %329 = load i8*, i8** %7, align 8
  %330 = load i32, i32* %10, align 4
  %331 = udiv i32 %330, 10
  %332 = load i32, i32* %10, align 4
  %333 = urem i32 %332, 10
  %334 = load i32, i32* %11, align 4
  %335 = udiv i32 %334, 10
  %336 = load i32, i32* %11, align 4
  %337 = urem i32 %336, 10
  %338 = load i32, i32* %12, align 4
  %339 = udiv i32 %338, 10
  %340 = load i32, i32* %12, align 4
  %341 = urem i32 %340, 10
  %342 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %343 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %346 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %349 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %352 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %351, i32 0, i32 5
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %355 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %329, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 %331, i32 %333, i32 %335, i32 %337, i32 %339, i32 %341, i32 %344, i32 %347, i32 %350, i64 %353, i64 %356)
  %358 = load i8*, i8** %7, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %7, align 8
  %361 = load i8*, i8** %7, align 8
  %362 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %363 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %362, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %367 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = sub nsw i32 %365, %368
  %370 = call i32 @max(i32 0, i32 %369)
  %371 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %372 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %375 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @MINSTREL_TRUNC(i32 %376)
  %378 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %379 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = mul nsw i32 %380, 10
  %382 = call i32 @MINSTREL_TRUNC(i32 %381)
  %383 = srem i32 %382, 10
  %384 = call i32 (i8*, i8*, ...) @sprintf(i8* %361, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %370, i32 %373, i32 %377, i32 %383)
  %385 = load i8*, i8** %7, align 8
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8* %387, i8** %7, align 8
  br label %388

388:                                              ; preds = %285, %90
  %389 = load i32, i32* %9, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %9, align 4
  br label %58

391:                                              ; preds = %58
  %392 = load i8*, i8** %7, align 8
  store i8* %392, i8** %4, align 8
  br label %393

393:                                              ; preds = %391, %29
  %394 = load i8*, i8** %4, align 8
  ret i8* %394
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
