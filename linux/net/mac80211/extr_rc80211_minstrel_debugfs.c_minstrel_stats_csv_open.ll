; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_debugfs.c_minstrel_stats_csv_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_debugfs.c_minstrel_stats_csv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.minstrel_sta_info* }
%struct.minstrel_sta_info = type { i32, i32*, i32, i64, i64, %struct.minstrel_rate* }
%struct.minstrel_rate = type { i32, i32, %struct.minstrel_rate_stats }
%struct.minstrel_rate_stats = type { i32, i32, i32, i32, i64, i64 }
%struct.file = type { %struct.minstrel_debugfs_info* }
%struct.minstrel_debugfs_info = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c",%u%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".5,\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%u.%u,%u.%u,%u.%u,%u,%u,%u,%llu,%llu,%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minstrel_stats_csv_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.minstrel_sta_info*, align 8
  %7 = alloca %struct.minstrel_debugfs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.minstrel_rate*, align 8
  %14 = alloca %struct.minstrel_rate_stats*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %16, align 8
  store %struct.minstrel_sta_info* %17, %struct.minstrel_sta_info** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.minstrel_debugfs_info* @kmalloc(i32 2048, i32 %18)
  store %struct.minstrel_debugfs_info* %19, %struct.minstrel_debugfs_info** %7, align 8
  %20 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %21 = icmp ne %struct.minstrel_debugfs_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %227

25:                                               ; preds = %2
  %26 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.minstrel_debugfs_info* %26, %struct.minstrel_debugfs_info** %28, align 8
  %29 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %30 = getelementptr inbounds %struct.minstrel_debugfs_info, %struct.minstrel_debugfs_info* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %205, %25
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %35 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %208

38:                                               ; preds = %32
  %39 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %40 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %39, i32 0, i32 5
  %41 = load %struct.minstrel_rate*, %struct.minstrel_rate** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %41, i64 %43
  store %struct.minstrel_rate* %44, %struct.minstrel_rate** %13, align 8
  %45 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %46 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %45, i32 0, i32 5
  %47 = load %struct.minstrel_rate*, %struct.minstrel_rate** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %47, i64 %49
  %51 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %50, i32 0, i32 2
  store %struct.minstrel_rate_stats* %51, %struct.minstrel_rate_stats** %14, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %55 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %53, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %12, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %69 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %83 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %81, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %89)
  %91 = load i8*, i8** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %97 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %95, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %111 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %12, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.minstrel_rate*, %struct.minstrel_rate** %13, align 8
  %122 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = load %struct.minstrel_rate*, %struct.minstrel_rate** %13, align 8
  %126 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %124, i8* %131)
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %12, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %12, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load %struct.minstrel_rate*, %struct.minstrel_rate** %13, align 8
  %144 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** %12, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %12, align 8
  %150 = load %struct.minstrel_rate*, %struct.minstrel_rate** %13, align 8
  %151 = call i32 @MINSTREL_FRAC(i32 100, i32 100)
  %152 = call i32 @minstrel_get_tp_avg(%struct.minstrel_rate* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.minstrel_rate*, %struct.minstrel_rate** %13, align 8
  %154 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %155 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @minstrel_get_tp_avg(%struct.minstrel_rate* %153, i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %159 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 1000
  %162 = call i32 @MINSTREL_TRUNC(i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %9, align 4
  %165 = udiv i32 %164, 10
  %166 = load i32, i32* %9, align 4
  %167 = urem i32 %166, 10
  %168 = load i32, i32* %10, align 4
  %169 = udiv i32 %168, 10
  %170 = load i32, i32* %10, align 4
  %171 = urem i32 %170, 10
  %172 = load i32, i32* %11, align 4
  %173 = udiv i32 %172, 10
  %174 = load i32, i32* %11, align 4
  %175 = urem i32 %174, 10
  %176 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %177 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %180 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %183 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %186 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %189 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %192 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %195 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %193, %196
  %198 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %6, align 8
  %199 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %165, i32 %167, i32 %169, i32 %171, i32 %173, i32 %175, i32 %178, i32 %181, i32 %184, i64 %187, i64 %190, i64 %197, i64 %200)
  %202 = load i8*, i8** %12, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %12, align 8
  br label %205

205:                                              ; preds = %38
  %206 = load i32, i32* %8, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %32

208:                                              ; preds = %32
  %209 = load i8*, i8** %12, align 8
  %210 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %211 = getelementptr inbounds %struct.minstrel_debugfs_info, %struct.minstrel_debugfs_info* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = ptrtoint i8* %209 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %218 = getelementptr inbounds %struct.minstrel_debugfs_info, %struct.minstrel_debugfs_info* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  %219 = load %struct.minstrel_debugfs_info*, %struct.minstrel_debugfs_info** %7, align 8
  %220 = getelementptr inbounds %struct.minstrel_debugfs_info, %struct.minstrel_debugfs_info* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = add i64 %222, 16
  %224 = icmp ugt i64 %223, 2048
  %225 = zext i1 %224 to i32
  %226 = call i32 @WARN_ON(i32 %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %208, %22
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.minstrel_debugfs_info* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @minstrel_get_tp_avg(%struct.minstrel_rate*, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
