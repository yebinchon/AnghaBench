; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.sk_buff_head, %struct.sk_buff_head*, %struct.sk_buff_head, %struct.sk_buff_head, %struct.TYPE_2__*, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@LINK_LMAX = common dso_local global i64 0, align 8
@LINK_LMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"link data: (null)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"link data: %x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" | %u %u %u\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" | %u %u %u\0A\00", align 1
@TIPC_DUMP_TRANSMQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"transmq: \00", align 1
@TIPC_DUMP_BACKLOGQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"backlogq: <%u %u %u %u %u>, \00", align 1
@TIPC_LOW_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_MEDIUM_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_HIGH_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_DUMP_DEFERDQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"deferdq: \00", align 1
@TIPC_DUMP_INPUTQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"inputq: \00", align 1
@TIPC_DUMP_WAKEUP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"wakeup: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_dump(%struct.tipc_link* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @LINK_LMAX, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @LINK_LMIN, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %9, align 8
  %22 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %23 = icmp ne %struct.tipc_link* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %610

33:                                               ; preds = %20
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %36, i32 0, i32 18
  %38 = load i32, i32* %37, align 4
  %39 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %48, %50
  %52 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 8
  %55 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %47, i64 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %64, %66
  %68 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %63, i64 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %80, %82
  %84 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %85 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 8
  %87 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %79, i64 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 %96, %98
  %100 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %101 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 4
  %103 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %95, i64 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* %9, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %117 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 8
  %119 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %128, %130
  %132 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %133 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %127, i64 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i64, i64* %9, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 %144, %146
  %148 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %149 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 8
  %151 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %143, i64 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %8, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %165 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 4
  %167 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %159, i64 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %8, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i64, i64* %9, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = sub i64 %176, %178
  %180 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %181 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %175, i64 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i64, i64* %9, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 %192, %194
  %196 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %197 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %191, i64 %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %8, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i64, i64* %9, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = sub i64 %208, %210
  %212 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %213 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %207, i64 %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %8, align 4
  %220 = load i8*, i8** %7, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i64, i64* %9, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = sub i64 %224, %226
  %228 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %223, i64 %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %8, align 4
  %233 = load i8*, i8** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i64, i64* %9, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = sub i64 %237, %239
  %241 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %236, i64 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %8, align 4
  %246 = load i8*, i8** %7, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i64, i64* %9, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = sub i64 %250, %252
  %254 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %255 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %249, i64 %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %8, align 4
  %262 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %263 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %262, i32 0, i32 5
  store %struct.sk_buff_head* %263, %struct.sk_buff_head** %10, align 8
  %264 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %265 = call i64 @skb_queue_len(%struct.sk_buff_head* %264)
  store i64 %265, i64* %13, align 8
  %266 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %267 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %266)
  store %struct.sk_buff* %267, %struct.sk_buff** %11, align 8
  %268 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %269 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %268)
  store %struct.sk_buff* %269, %struct.sk_buff** %12, align 8
  %270 = load i8*, i8** %7, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i64, i64* %9, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = sub i64 %274, %276
  %278 = load i64, i64* %13, align 8
  %279 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %280 = icmp ne %struct.sk_buff* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %33
  %282 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %283 = call i32 @buf_msg(%struct.sk_buff* %282)
  %284 = call i32 @msg_seqno(i32 %283)
  br label %286

285:                                              ; preds = %33
  br label %286

286:                                              ; preds = %285, %281
  %287 = phi i32 [ %284, %281 ], [ 0, %285 ]
  %288 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %289 = icmp ne %struct.sk_buff* %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %292 = call i32 @buf_msg(%struct.sk_buff* %291)
  %293 = call i32 @msg_seqno(i32 %292)
  br label %295

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %294, %290
  %296 = phi i32 [ %293, %290 ], [ 0, %294 ]
  %297 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %273, i64 %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %278, i32 %287, i32 %296)
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %299, %297
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %8, align 4
  %302 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %303 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %302, i32 0, i32 2
  store %struct.sk_buff_head* %303, %struct.sk_buff_head** %10, align 8
  %304 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %305 = call i64 @skb_queue_len(%struct.sk_buff_head* %304)
  store i64 %305, i64* %13, align 8
  %306 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %307 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %306)
  store %struct.sk_buff* %307, %struct.sk_buff** %11, align 8
  %308 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %309 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %308)
  store %struct.sk_buff* %309, %struct.sk_buff** %12, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i64, i64* %9, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = sub i64 %314, %316
  %318 = load i64, i64* %13, align 8
  %319 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %320 = icmp ne %struct.sk_buff* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %295
  %322 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %323 = call i32 @buf_msg(%struct.sk_buff* %322)
  %324 = call i32 @msg_seqno(i32 %323)
  br label %326

325:                                              ; preds = %295
  br label %326

326:                                              ; preds = %325, %321
  %327 = phi i32 [ %324, %321 ], [ 0, %325 ]
  %328 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %329 = icmp ne %struct.sk_buff* %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %326
  %331 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %332 = call i32 @buf_msg(%struct.sk_buff* %331)
  %333 = call i32 @msg_seqno(i32 %332)
  br label %335

334:                                              ; preds = %326
  br label %335

335:                                              ; preds = %334, %330
  %336 = phi i32 [ %333, %330 ], [ 0, %334 ]
  %337 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %313, i64 %317, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %318, i32 %327, i32 %336)
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %8, align 4
  %342 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %343 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %342, i32 0, i32 3
  store %struct.sk_buff_head* %343, %struct.sk_buff_head** %10, align 8
  %344 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %345 = call i64 @skb_queue_len(%struct.sk_buff_head* %344)
  store i64 %345, i64* %13, align 8
  %346 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %347 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %346)
  store %struct.sk_buff* %347, %struct.sk_buff** %11, align 8
  %348 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %349 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %348)
  store %struct.sk_buff* %349, %struct.sk_buff** %12, align 8
  %350 = load i8*, i8** %7, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i64, i64* %9, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = sub i64 %354, %356
  %358 = load i64, i64* %13, align 8
  %359 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %360 = icmp ne %struct.sk_buff* %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %335
  %362 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %363 = call i32 @buf_msg(%struct.sk_buff* %362)
  %364 = call i32 @msg_seqno(i32 %363)
  br label %366

365:                                              ; preds = %335
  br label %366

366:                                              ; preds = %365, %361
  %367 = phi i32 [ %364, %361 ], [ 0, %365 ]
  %368 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %369 = icmp ne %struct.sk_buff* %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %366
  %371 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %372 = call i32 @buf_msg(%struct.sk_buff* %371)
  %373 = call i32 @msg_seqno(i32 %372)
  br label %375

374:                                              ; preds = %366
  br label %375

375:                                              ; preds = %374, %370
  %376 = phi i32 [ %373, %370 ], [ 0, %374 ]
  %377 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %353, i64 %357, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %358, i32 %367, i32 %376)
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %377
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %8, align 4
  %382 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %383 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %382, i32 0, i32 1
  %384 = load %struct.sk_buff_head*, %struct.sk_buff_head** %383, align 8
  store %struct.sk_buff_head* %384, %struct.sk_buff_head** %10, align 8
  %385 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %386 = call i64 @skb_queue_len(%struct.sk_buff_head* %385)
  store i64 %386, i64* %13, align 8
  %387 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %388 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %387)
  store %struct.sk_buff* %388, %struct.sk_buff** %11, align 8
  %389 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %390 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %389)
  store %struct.sk_buff* %390, %struct.sk_buff** %12, align 8
  %391 = load i8*, i8** %7, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  %395 = load i64, i64* %9, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = sub i64 %395, %397
  %399 = load i64, i64* %13, align 8
  %400 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %401 = icmp ne %struct.sk_buff* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %375
  %403 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %404 = call i32 @buf_msg(%struct.sk_buff* %403)
  %405 = call i32 @msg_seqno(i32 %404)
  br label %407

406:                                              ; preds = %375
  br label %407

407:                                              ; preds = %406, %402
  %408 = phi i32 [ %405, %402 ], [ 0, %406 ]
  %409 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %410 = icmp ne %struct.sk_buff* %409, null
  br i1 %410, label %411, label %415

411:                                              ; preds = %407
  %412 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %413 = call i32 @buf_msg(%struct.sk_buff* %412)
  %414 = call i32 @msg_seqno(i32 %413)
  br label %416

415:                                              ; preds = %407
  br label %416

416:                                              ; preds = %415, %411
  %417 = phi i32 [ %414, %411 ], [ 0, %415 ]
  %418 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %394, i64 %398, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %399, i32 %408, i32 %417)
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %420, %418
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %8, align 4
  %423 = load i32, i32* %6, align 4
  %424 = load i32, i32* @TIPC_DUMP_TRANSMQ, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %452

427:                                              ; preds = %416
  %428 = load i8*, i8** %7, align 8
  %429 = load i32, i32* %8, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  %432 = load i64, i64* %9, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = sub i64 %432, %434
  %436 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %431, i64 %435, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %437 = load i32, i32* %8, align 4
  %438 = sext i32 %437 to i64
  %439 = add nsw i64 %438, %436
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %8, align 4
  %441 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %442 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %441, i32 0, i32 5
  %443 = load i8*, i8** %7, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %443, i64 %445
  %447 = call i64 @tipc_list_dump(%struct.sk_buff_head* %442, i32 0, i8* %446)
  %448 = load i32, i32* %8, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %447
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %8, align 4
  br label %452

452:                                              ; preds = %427, %416
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* @TIPC_DUMP_BACKLOGQ, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %517

457:                                              ; preds = %452
  %458 = load i8*, i8** %7, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %458, i64 %460
  %462 = load i64, i64* %9, align 8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = sub i64 %462, %464
  %466 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %467 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %466, i32 0, i32 4
  %468 = load %struct.TYPE_2__*, %struct.TYPE_2__** %467, align 8
  %469 = load i64, i64* @TIPC_LOW_IMPORTANCE, align 8
  %470 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %474 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %473, i32 0, i32 4
  %475 = load %struct.TYPE_2__*, %struct.TYPE_2__** %474, align 8
  %476 = load i64, i64* @TIPC_MEDIUM_IMPORTANCE, align 8
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %481 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %480, i32 0, i32 4
  %482 = load %struct.TYPE_2__*, %struct.TYPE_2__** %481, align 8
  %483 = load i64, i64* @TIPC_HIGH_IMPORTANCE, align 8
  %484 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %488 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %487, i32 0, i32 4
  %489 = load %struct.TYPE_2__*, %struct.TYPE_2__** %488, align 8
  %490 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %491 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %489, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %495 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %494, i32 0, i32 4
  %496 = load %struct.TYPE_2__*, %struct.TYPE_2__** %495, align 8
  %497 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %498 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %461, i64 %465, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %472, i32 %479, i32 %486, i32 %493, i32 %500)
  %502 = load i32, i32* %8, align 4
  %503 = sext i32 %502 to i64
  %504 = add nsw i64 %503, %501
  %505 = trunc i64 %504 to i32
  store i32 %505, i32* %8, align 4
  %506 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %507 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %506, i32 0, i32 3
  %508 = load i8*, i8** %7, align 8
  %509 = load i32, i32* %8, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %508, i64 %510
  %512 = call i64 @tipc_list_dump(%struct.sk_buff_head* %507, i32 0, i8* %511)
  %513 = load i32, i32* %8, align 4
  %514 = sext i32 %513 to i64
  %515 = add nsw i64 %514, %512
  %516 = trunc i64 %515 to i32
  store i32 %516, i32* %8, align 4
  br label %517

517:                                              ; preds = %457, %452
  %518 = load i32, i32* %6, align 4
  %519 = load i32, i32* @TIPC_DUMP_DEFERDQ, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %547

522:                                              ; preds = %517
  %523 = load i8*, i8** %7, align 8
  %524 = load i32, i32* %8, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %523, i64 %525
  %527 = load i64, i64* %9, align 8
  %528 = load i32, i32* %8, align 4
  %529 = sext i32 %528 to i64
  %530 = sub i64 %527, %529
  %531 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %526, i64 %530, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %532 = load i32, i32* %8, align 4
  %533 = sext i32 %532 to i64
  %534 = add nsw i64 %533, %531
  %535 = trunc i64 %534 to i32
  store i32 %535, i32* %8, align 4
  %536 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %537 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %536, i32 0, i32 2
  %538 = load i8*, i8** %7, align 8
  %539 = load i32, i32* %8, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %538, i64 %540
  %542 = call i64 @tipc_list_dump(%struct.sk_buff_head* %537, i32 0, i8* %541)
  %543 = load i32, i32* %8, align 4
  %544 = sext i32 %543 to i64
  %545 = add nsw i64 %544, %542
  %546 = trunc i64 %545 to i32
  store i32 %546, i32* %8, align 4
  br label %547

547:                                              ; preds = %522, %517
  %548 = load i32, i32* %6, align 4
  %549 = load i32, i32* @TIPC_DUMP_INPUTQ, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %578

552:                                              ; preds = %547
  %553 = load i8*, i8** %7, align 8
  %554 = load i32, i32* %8, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %553, i64 %555
  %557 = load i64, i64* %9, align 8
  %558 = load i32, i32* %8, align 4
  %559 = sext i32 %558 to i64
  %560 = sub i64 %557, %559
  %561 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %556, i64 %560, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %562 = load i32, i32* %8, align 4
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %563, %561
  %565 = trunc i64 %564 to i32
  store i32 %565, i32* %8, align 4
  %566 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %567 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %566, i32 0, i32 1
  %568 = load %struct.sk_buff_head*, %struct.sk_buff_head** %567, align 8
  %569 = load i8*, i8** %7, align 8
  %570 = load i32, i32* %8, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, i8* %569, i64 %571
  %573 = call i64 @tipc_list_dump(%struct.sk_buff_head* %568, i32 0, i8* %572)
  %574 = load i32, i32* %8, align 4
  %575 = sext i32 %574 to i64
  %576 = add nsw i64 %575, %573
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %8, align 4
  br label %578

578:                                              ; preds = %552, %547
  %579 = load i32, i32* %6, align 4
  %580 = load i32, i32* @TIPC_DUMP_WAKEUP, align 4
  %581 = and i32 %579, %580
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %608

583:                                              ; preds = %578
  %584 = load i8*, i8** %7, align 8
  %585 = load i32, i32* %8, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %584, i64 %586
  %588 = load i64, i64* %9, align 8
  %589 = load i32, i32* %8, align 4
  %590 = sext i32 %589 to i64
  %591 = sub i64 %588, %590
  %592 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %587, i64 %591, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %593 = load i32, i32* %8, align 4
  %594 = sext i32 %593 to i64
  %595 = add nsw i64 %594, %592
  %596 = trunc i64 %595 to i32
  store i32 %596, i32* %8, align 4
  %597 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %598 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %597, i32 0, i32 0
  %599 = load i8*, i8** %7, align 8
  %600 = load i32, i32* %8, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i8, i8* %599, i64 %601
  %603 = call i64 @tipc_list_dump(%struct.sk_buff_head* %598, i32 0, i8* %602)
  %604 = load i32, i32* %8, align 4
  %605 = sext i32 %604 to i64
  %606 = add nsw i64 %605, %603
  %607 = trunc i64 %606 to i32
  store i32 %607, i32* %8, align 4
  br label %608

608:                                              ; preds = %583, %578
  %609 = load i32, i32* %8, align 4
  store i32 %609, i32* %4, align 4
  br label %610

610:                                              ; preds = %608, %24
  %611 = load i32, i32* %4, align 4
  ret i32 %611
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local i32 @msg_seqno(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @tipc_list_dump(%struct.sk_buff_head*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
