; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_win_minmax.c_minmax_subwin_update.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_win_minmax.c_minmax_subwin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minmax = type { %struct.minmax_sample* }
%struct.minmax_sample = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minmax*, i32, %struct.minmax_sample*)* @minmax_subwin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minmax_subwin_update(%struct.minmax* %0, i32 %1, %struct.minmax_sample* %2) #0 {
  %4 = alloca %struct.minmax*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.minmax_sample*, align 8
  %7 = alloca i32, align 4
  store %struct.minmax* %0, %struct.minmax** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.minmax_sample* %2, %struct.minmax_sample** %6, align 8
  %8 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %9 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.minmax*, %struct.minmax** %4, align 8
  %12 = getelementptr inbounds %struct.minmax, %struct.minmax* %11, i32 0, i32 0
  %13 = load %struct.minmax_sample*, %struct.minmax_sample** %12, align 8
  %14 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %13, i64 0
  %15 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %10, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %96

24:                                               ; preds = %3
  %25 = load %struct.minmax*, %struct.minmax** %4, align 8
  %26 = getelementptr inbounds %struct.minmax, %struct.minmax* %25, i32 0, i32 0
  %27 = load %struct.minmax_sample*, %struct.minmax_sample** %26, align 8
  %28 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %27, i64 0
  %29 = load %struct.minmax*, %struct.minmax** %4, align 8
  %30 = getelementptr inbounds %struct.minmax, %struct.minmax* %29, i32 0, i32 0
  %31 = load %struct.minmax_sample*, %struct.minmax_sample** %30, align 8
  %32 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %31, i64 1
  %33 = bitcast %struct.minmax_sample* %28 to i8*
  %34 = bitcast %struct.minmax_sample* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = load %struct.minmax*, %struct.minmax** %4, align 8
  %36 = getelementptr inbounds %struct.minmax, %struct.minmax* %35, i32 0, i32 0
  %37 = load %struct.minmax_sample*, %struct.minmax_sample** %36, align 8
  %38 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %37, i64 1
  %39 = load %struct.minmax*, %struct.minmax** %4, align 8
  %40 = getelementptr inbounds %struct.minmax, %struct.minmax* %39, i32 0, i32 0
  %41 = load %struct.minmax_sample*, %struct.minmax_sample** %40, align 8
  %42 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %41, i64 2
  %43 = bitcast %struct.minmax_sample* %38 to i8*
  %44 = bitcast %struct.minmax_sample* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.minmax*, %struct.minmax** %4, align 8
  %46 = getelementptr inbounds %struct.minmax, %struct.minmax* %45, i32 0, i32 0
  %47 = load %struct.minmax_sample*, %struct.minmax_sample** %46, align 8
  %48 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %47, i64 2
  %49 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %50 = bitcast %struct.minmax_sample* %48 to i8*
  %51 = bitcast %struct.minmax_sample* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %53 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.minmax*, %struct.minmax** %4, align 8
  %56 = getelementptr inbounds %struct.minmax, %struct.minmax* %55, i32 0, i32 0
  %57 = load %struct.minmax_sample*, %struct.minmax_sample** %56, align 8
  %58 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %57, i64 0
  %59 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %54, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %24
  %68 = load %struct.minmax*, %struct.minmax** %4, align 8
  %69 = getelementptr inbounds %struct.minmax, %struct.minmax* %68, i32 0, i32 0
  %70 = load %struct.minmax_sample*, %struct.minmax_sample** %69, align 8
  %71 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %70, i64 0
  %72 = load %struct.minmax*, %struct.minmax** %4, align 8
  %73 = getelementptr inbounds %struct.minmax, %struct.minmax* %72, i32 0, i32 0
  %74 = load %struct.minmax_sample*, %struct.minmax_sample** %73, align 8
  %75 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %74, i64 1
  %76 = bitcast %struct.minmax_sample* %71 to i8*
  %77 = bitcast %struct.minmax_sample* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load %struct.minmax*, %struct.minmax** %4, align 8
  %79 = getelementptr inbounds %struct.minmax, %struct.minmax* %78, i32 0, i32 0
  %80 = load %struct.minmax_sample*, %struct.minmax_sample** %79, align 8
  %81 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %80, i64 1
  %82 = load %struct.minmax*, %struct.minmax** %4, align 8
  %83 = getelementptr inbounds %struct.minmax, %struct.minmax* %82, i32 0, i32 0
  %84 = load %struct.minmax_sample*, %struct.minmax_sample** %83, align 8
  %85 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %84, i64 2
  %86 = bitcast %struct.minmax_sample* %81 to i8*
  %87 = bitcast %struct.minmax_sample* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 8, i1 false)
  %88 = load %struct.minmax*, %struct.minmax** %4, align 8
  %89 = getelementptr inbounds %struct.minmax, %struct.minmax* %88, i32 0, i32 0
  %90 = load %struct.minmax_sample*, %struct.minmax_sample** %89, align 8
  %91 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %90, i64 2
  %92 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %93 = bitcast %struct.minmax_sample* %91 to i8*
  %94 = bitcast %struct.minmax_sample* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  br label %95

95:                                               ; preds = %67, %24
  br label %164

96:                                               ; preds = %3
  %97 = load %struct.minmax*, %struct.minmax** %4, align 8
  %98 = getelementptr inbounds %struct.minmax, %struct.minmax* %97, i32 0, i32 0
  %99 = load %struct.minmax_sample*, %struct.minmax_sample** %98, align 8
  %100 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %99, i64 1
  %101 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.minmax*, %struct.minmax** %4, align 8
  %104 = getelementptr inbounds %struct.minmax, %struct.minmax* %103, i32 0, i32 0
  %105 = load %struct.minmax_sample*, %struct.minmax_sample** %104, align 8
  %106 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %105, i64 0
  %107 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %102, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %96
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %5, align 4
  %116 = sdiv i32 %115, 4
  %117 = icmp sgt i32 %114, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.minmax*, %struct.minmax** %4, align 8
  %120 = getelementptr inbounds %struct.minmax, %struct.minmax* %119, i32 0, i32 0
  %121 = load %struct.minmax_sample*, %struct.minmax_sample** %120, align 8
  %122 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %121, i64 2
  %123 = load %struct.minmax*, %struct.minmax** %4, align 8
  %124 = getelementptr inbounds %struct.minmax, %struct.minmax* %123, i32 0, i32 0
  %125 = load %struct.minmax_sample*, %struct.minmax_sample** %124, align 8
  %126 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %125, i64 1
  %127 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %128 = bitcast %struct.minmax_sample* %126 to i8*
  %129 = bitcast %struct.minmax_sample* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 8, i1 false)
  %130 = bitcast %struct.minmax_sample* %122 to i8*
  %131 = bitcast %struct.minmax_sample* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 8, i1 false)
  br label %163

132:                                              ; preds = %113, %96
  %133 = load %struct.minmax*, %struct.minmax** %4, align 8
  %134 = getelementptr inbounds %struct.minmax, %struct.minmax* %133, i32 0, i32 0
  %135 = load %struct.minmax_sample*, %struct.minmax_sample** %134, align 8
  %136 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %135, i64 2
  %137 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.minmax*, %struct.minmax** %4, align 8
  %140 = getelementptr inbounds %struct.minmax, %struct.minmax* %139, i32 0, i32 0
  %141 = load %struct.minmax_sample*, %struct.minmax_sample** %140, align 8
  %142 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %141, i64 1
  %143 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %138, %144
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %132
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %5, align 4
  %152 = sdiv i32 %151, 2
  %153 = icmp sgt i32 %150, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.minmax*, %struct.minmax** %4, align 8
  %156 = getelementptr inbounds %struct.minmax, %struct.minmax* %155, i32 0, i32 0
  %157 = load %struct.minmax_sample*, %struct.minmax_sample** %156, align 8
  %158 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %157, i64 2
  %159 = load %struct.minmax_sample*, %struct.minmax_sample** %6, align 8
  %160 = bitcast %struct.minmax_sample* %158 to i8*
  %161 = bitcast %struct.minmax_sample* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %161, i64 8, i1 false)
  br label %162

162:                                              ; preds = %154, %149, %132
  br label %163

163:                                              ; preds = %162, %118
  br label %164

164:                                              ; preds = %163, %95
  %165 = load %struct.minmax*, %struct.minmax** %4, align 8
  %166 = getelementptr inbounds %struct.minmax, %struct.minmax* %165, i32 0, i32 0
  %167 = load %struct.minmax_sample*, %struct.minmax_sample** %166, align 8
  %168 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %167, i64 0
  %169 = getelementptr inbounds %struct.minmax_sample, %struct.minmax_sample* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  ret i32 %170
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
