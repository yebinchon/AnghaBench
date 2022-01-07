; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_match_regions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_match_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_query_region = type { i8*, i32, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Domain %s: Joining node %d has global heartbeat enabled but local node %d does not\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"Domain %s: Local node %d has global heartbeat enabled but joining node %d does not\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Region %.*s\0A\00", align 1
@O2HB_MAX_REGION_NAME_LEN = common dso_local global i32 0, align 4
@O2NM_MAX_REGIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"Domain %s: Region '%.*s' registered in local node %d but not in joining node %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Domain %s: Region '%.*s' registered in joining node %d but not in local node %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_query_region*, i8*, i32)* @dlm_match_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_match_regions(%struct.dlm_ctxt* %0, %struct.dlm_query_region* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_query_region*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_query_region* %1, %struct.dlm_query_region** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %18 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %16, align 4
  %20 = call i64 (...) @o2hb_global_heartbeat_active()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %4
  %23 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* @ML_ERROR, align 4
  %29 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @mlog(i32 %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %27, %22
  br label %204

42:                                               ; preds = %4
  %43 = call i64 (...) @o2hb_global_heartbeat_active()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ML_ERROR, align 4
  %52 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %53 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %59 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, ...) @mlog(i32 %51, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  br label %204

64:                                               ; preds = %45, %42
  %65 = load i8*, i8** %9, align 8
  store i8* %65, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %80, %64
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %69 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %74)
  %76 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* @O2NM_MAX_REGIONS, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %87 = sdiv i32 %85, %86
  %88 = call i32 @min(i32 %84, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @o2hb_get_all_regions(i8* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i8*, i8** %7, align 8
  store i8* %92, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %144, %83
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %93
  store i32 0, i32* %15, align 4
  %98 = load i8*, i8** %9, align 8
  store i8* %98, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %117, %97
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %102 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %109 = call i32 @memcmp(i8* %106, i8* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  br label %120

112:                                              ; preds = %105
  %113 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %11, align 8
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %99

120:                                              ; preds = %111, %99
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* @ML_ERROR, align 4
  %127 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %128 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %133 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %136 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, i32, ...) @mlog(i32 %126, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130, i8* %131, i32 %134, i32 %137)
  br label %204

139:                                              ; preds = %120
  %140 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %10, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %93

147:                                              ; preds = %93
  %148 = load i8*, i8** %9, align 8
  store i8* %148, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %200, %147
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %152 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %203

155:                                              ; preds = %149
  store i32 0, i32* %15, align 4
  %156 = load i8*, i8** %7, align 8
  store i8* %156, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %173, %155
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %165 = call i32 @memcmp(i8* %162, i8* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  store i32 1, i32* %15, align 4
  br label %176

168:                                              ; preds = %161
  %169 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %10, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %157

176:                                              ; preds = %167, %157
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* @ML_ERROR, align 4
  %183 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %184 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %187 = load i8*, i8** %11, align 8
  %188 = load %struct.dlm_query_region*, %struct.dlm_query_region** %6, align 8
  %189 = getelementptr inbounds %struct.dlm_query_region, %struct.dlm_query_region* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %192 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, i32, ...) @mlog(i32 %182, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %185, i32 %186, i8* %187, i32 %190, i32 %193)
  br label %204

195:                                              ; preds = %176
  %196 = load i32, i32* @O2HB_MAX_REGION_NAME_LEN, align 4
  %197 = load i8*, i8** %11, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %11, align 8
  br label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %149

203:                                              ; preds = %149
  br label %204

204:                                              ; preds = %203, %179, %123, %50, %41
  %205 = load i32, i32* %16, align 4
  ret i32 %205
}

declare dso_local i64 @o2hb_global_heartbeat_active(...) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @o2hb_get_all_regions(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
