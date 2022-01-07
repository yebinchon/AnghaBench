; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_check_hwp_request_v_hwp_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_check_hwp_request_v_hwp_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i64, i64, i64 }
%struct.msr_hwp_cap = type { i64, i64 }

@update_hwp_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"cpu%d: requested max %d > capabilities highest %d, use --force?\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"cpu%d: requested max %d < capabilities lowest %d, use --force?\00", align 1
@update_hwp_min = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"cpu%d: requested min %d > capabilities highest %d, use --force?\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"cpu%d: requested min %d < capabilities lowest %d, use --force?\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cpu%d: requested min %d > requested max %d\00", align 1
@update_hwp_desired = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [61 x i8] c"cpu%d: requested desired %d > requested max %d, use --force?\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"cpu%d: requested desired %d < requested min %d, use --force?\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"cpu%d: requested desired %d < capabilities lowest %d, use --force?\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"cpu%d: requested desired %d > capabilities highest %d, use --force?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_hwp_request_v_hwp_capabilities(i32 %0, %struct.msr_hwp_request* %1, %struct.msr_hwp_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msr_hwp_request*, align 8
  %6 = alloca %struct.msr_hwp_cap*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msr_hwp_request* %1, %struct.msr_hwp_request** %5, align 8
  store %struct.msr_hwp_cap* %2, %struct.msr_hwp_cap** %6, align 8
  %7 = load i64, i64* @update_hwp_max, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %11 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %14 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %20 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %23 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %17, %9
  %27 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %28 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %31 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %37 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %40 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %38, i64 %41)
  br label %43

43:                                               ; preds = %34, %26
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i64, i64* @update_hwp_min, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %49 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %52 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %58 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %61 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %59, i64 %62)
  br label %64

64:                                               ; preds = %55, %47
  %65 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %66 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %69 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %75 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %78 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %73, i64 %76, i64 %79)
  br label %81

81:                                               ; preds = %72, %64
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i64, i64* @update_hwp_min, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i64, i64* @update_hwp_max, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %90 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %93 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %99 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %102 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %97, i64 %100, i64 %103)
  br label %105

105:                                              ; preds = %96, %88, %85, %82
  %106 = load i64, i64* @update_hwp_desired, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %182

108:                                              ; preds = %105
  %109 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %110 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %182

113:                                              ; preds = %108
  %114 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %115 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %118 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %124 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %127 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %122, i64 %125, i64 %128)
  br label %130

130:                                              ; preds = %121, %113
  %131 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %132 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %135 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %141 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %144 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %139, i64 %142, i64 %145)
  br label %147

147:                                              ; preds = %138, %130
  %148 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %149 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %152 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %158 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %161 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @errx(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %156, i64 %159, i64 %162)
  br label %164

164:                                              ; preds = %155, %147
  %165 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %166 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %169 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %167, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %175 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %6, align 8
  %178 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @errx(i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %173, i64 %176, i64 %179)
  br label %181

181:                                              ; preds = %172, %164
  br label %182

182:                                              ; preds = %181, %108, %105
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
