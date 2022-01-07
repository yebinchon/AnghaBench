; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_process_ctdp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_process_ctdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp = type { i32, i32, %struct.isst_pkg_ctdp_level_info*, i32, i32 }
%struct.isst_pkg_ctdp_level_info = type { i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"cpu: %d ctdp enable:%d current level: %d levels:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cpu:%d Get Information for TDP level:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_process_ctdp(i32 %0, i32 %1, %struct.isst_pkg_ctdp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_pkg_ctdp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.isst_pkg_ctdp_level_info*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_pkg_ctdp* %2, %struct.isst_pkg_ctdp** %7, align 8
  %11 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %12 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %207

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %19 = call i32 @isst_get_ctdp_levels(i32 %17, %struct.isst_pkg_ctdp* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %207

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %27 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %30 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %33 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i32, ...) @debug_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %201, %24
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %39 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %204

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %201

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, i32, i32, ...) @debug_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %55 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %54, i32 0, i32 2
  %56 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %56, i64 %58
  store %struct.isst_pkg_ctdp_level_info* %59, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %60 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %61 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %64 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %67 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @get_physical_package_id(i32 %68)
  %70 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %71 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @get_physical_die_id(i32 %72)
  %74 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %75 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %74, i32 0, i32 14
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %79 = call i32 @isst_get_ctdp_control(i32 %76, i32 %77, %struct.isst_pkg_ctdp_level_info* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %207

84:                                               ; preds = %50
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %88 = call i32 @isst_get_tdp_info(i32 %85, i32 %86, %struct.isst_pkg_ctdp_level_info* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %207

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %97 = call i32 @isst_get_pwr_info(i32 %94, i32 %95, %struct.isst_pkg_ctdp_level_info* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %207

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %106 = call i32 @isst_get_tjmax_info(i32 %103, i32 %104, %struct.isst_pkg_ctdp_level_info* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %207

111:                                              ; preds = %102
  %112 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %113 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %112, i32 0, i32 12
  %114 = call i32 @alloc_cpu_set(i32* %113)
  %115 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %116 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %115, i32 0, i32 13
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %120 = call i32 @isst_get_coremask_info(i32 %117, i32 %118, %struct.isst_pkg_ctdp_level_info* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %207

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %128 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %127, i32 0, i32 11
  %129 = call i32 @isst_get_trl_bucket_info(i32 %126, i32* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %207

134:                                              ; preds = %125
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %138 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @isst_get_get_trl(i32 %135, i32 %136, i32 0, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %4, align 4
  br label %207

145:                                              ; preds = %134
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %149 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @isst_get_get_trl(i32 %146, i32 %147, i32 1, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %207

156:                                              ; preds = %145
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %160 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @isst_get_get_trl(i32 %157, i32 %158, i32 2, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %4, align 4
  br label %207

167:                                              ; preds = %156
  %168 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %169 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %176 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %175, i32 0, i32 6
  %177 = call i32 @isst_get_pbf_info(i32 %173, i32 %174, i32* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %172
  %181 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %182 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %172
  br label %184

184:                                              ; preds = %183, %167
  %185 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %186 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %10, align 8
  %193 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %192, i32 0, i32 4
  %194 = call i32 @isst_get_fact_info(i32 %190, i32 %191, i32* %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %4, align 4
  br label %207

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %184
  br label %201

201:                                              ; preds = %200, %49
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %36

204:                                              ; preds = %36
  %205 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %7, align 8
  %206 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %204, %197, %165, %154, %143, %132, %123, %109, %100, %91, %82, %22, %15
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @isst_get_ctdp_levels(i32, %struct.isst_pkg_ctdp*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, ...) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @get_physical_die_id(i32) #1

declare dso_local i32 @isst_get_ctdp_control(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @isst_get_tdp_info(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @isst_get_pwr_info(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @isst_get_tjmax_info(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @alloc_cpu_set(i32*) #1

declare dso_local i32 @isst_get_coremask_info(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @isst_get_trl_bucket_info(i32, i32*) #1

declare dso_local i32 @isst_get_get_trl(i32, i32, i32, i32) #1

declare dso_local i32 @isst_get_pbf_info(i32, i32, i32*) #1

declare dso_local i32 @isst_get_fact_info(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
