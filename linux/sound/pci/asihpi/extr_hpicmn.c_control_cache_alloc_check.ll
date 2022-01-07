; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_control_cache_alloc_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_control_cache_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_control_cache = type { i32, i32, i32, i32, %struct.hpi_control_cache_info**, i64 }
%struct.hpi_control_cache_info = type { i64, i32, i64 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"check %d controls\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"adap %d control index %d out of range, cache not ready?\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"adap %d cache not ready?\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"adap %d zero size cache entry %d\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"cached %d, pinfo %p index %d type %d size %d\0A\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"adap %d bytecount %d != cache size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"adap %d cache good, bytecount == cache size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_control_cache*)* @control_cache_alloc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_cache_alloc_check(%struct.hpi_control_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpi_control_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpi_control_cache_info*, align 8
  %9 = alloca i64, align 8
  store %struct.hpi_control_cache* %0, %struct.hpi_control_cache** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %11 = icmp ne %struct.hpi_control_cache* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %198

13:                                               ; preds = %1
  %14 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %15 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %20 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  br label %198

22:                                               ; preds = %13
  %23 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %24 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %198

28:                                               ; preds = %22
  %29 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %30 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %194

33:                                               ; preds = %28
  %34 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %35 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %194

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %39 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %40 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = load i32, i32* @DEBUG, align 4
  %44 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %45 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %162, %38
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %51 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %165

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to %struct.hpi_control_cache_info*
  store %struct.hpi_control_cache_info* %59, %struct.hpi_control_cache_info** %8, align 8
  %60 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %61 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %65 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp uge i64 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %54
  %70 = load i32, i32* @INFO, align 4
  %71 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %72 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %9, align 8
  %75 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %74)
  store i32 0, i32* %2, align 4
  br label %198

76:                                               ; preds = %54
  %77 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %78 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @INFO, align 4
  %86 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %87 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  store i32 0, i32* %2, align 4
  br label %198

90:                                               ; preds = %81
  %91 = load i32, i32* @ERROR, align 4
  %92 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %93 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95)
  br label %165

97:                                               ; preds = %76
  %98 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %99 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %104 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %105 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %104, i32 0, i32 4
  %106 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %106, i64 %107
  store %struct.hpi_control_cache_info* %103, %struct.hpi_control_cache_info** %108, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %117

111:                                              ; preds = %97
  %112 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %113 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %112, i32 0, i32 4
  %114 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %114, i64 %115
  store %struct.hpi_control_cache_info* null, %struct.hpi_control_cache_info** %116, align 8
  br label %117

117:                                              ; preds = %111, %102
  %118 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %119 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 4
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @VERBOSE, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %127 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %126, i32 0, i32 4
  %128 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %127, align 8
  %129 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %130 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %128, i64 %131
  %133 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %132, align 8
  %134 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %135 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %138 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %141 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %125, %struct.hpi_control_cache_info* %133, i64 %136, i64 %139, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %146 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp uge i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %117
  br label %165

150:                                              ; preds = %117
  %151 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %8, align 8
  %152 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %155 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = icmp eq i64 %153, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %165

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %48

165:                                              ; preds = %160, %149, %90, %48
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %168 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %166, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load i32, i32* @WARNING, align 4
  %173 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %174 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %178 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32 %176, i32 %179)
  br label %188

181:                                              ; preds = %165
  %182 = load i32, i32* @DEBUG, align 4
  %183 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %184 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 (i32, i8*, i32, ...) @HPI_DEBUG_LOG(i32 %182, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %181, %171
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = trunc i64 %190 to i32
  %192 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %193 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  br label %194

194:                                              ; preds = %188, %33, %28
  %195 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %3, align 8
  %196 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %194, %84, %69, %27, %18, %12
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
