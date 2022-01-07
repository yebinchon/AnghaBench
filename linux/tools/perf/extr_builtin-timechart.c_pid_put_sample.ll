; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_put_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_put_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.per_pid = type { i64, i32, %struct.per_pidcomm*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i64, i32, %struct.cpu_sample*, %struct.per_pidcomm* }
%struct.cpu_sample = type { i32, i32, i8*, %struct.cpu_sample*, i64, i64 }

@TYPE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i32, i32, i64, i64, i8*)* @pid_put_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_put_sample(%struct.timechart* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.timechart*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.per_pid*, align 8
  %16 = alloca %struct.per_pidcomm*, align 8
  %17 = alloca %struct.cpu_sample*, align 8
  store %struct.timechart* %0, %struct.timechart** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.timechart*, %struct.timechart** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.per_pid* @find_create_pid(%struct.timechart* %18, i32 %19)
  store %struct.per_pid* %20, %struct.per_pid** %15, align 8
  %21 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 3
  %23 = load %struct.per_pidcomm*, %struct.per_pidcomm** %22, align 8
  store %struct.per_pidcomm* %23, %struct.per_pidcomm** %16, align 8
  %24 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %25 = icmp ne %struct.per_pidcomm* %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %7
  %27 = call i8* @zalloc(i32 32)
  %28 = bitcast i8* %27 to %struct.per_pidcomm*
  store %struct.per_pidcomm* %28, %struct.per_pidcomm** %16, align 8
  %29 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %30 = icmp ne %struct.per_pidcomm* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %34 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %35 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %34, i32 0, i32 3
  store %struct.per_pidcomm* %33, %struct.per_pidcomm** %35, align 8
  %36 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %37 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %36, i32 0, i32 2
  %38 = load %struct.per_pidcomm*, %struct.per_pidcomm** %37, align 8
  %39 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %40 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %39, i32 0, i32 3
  store %struct.per_pidcomm* %38, %struct.per_pidcomm** %40, align 8
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %42 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %43 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %42, i32 0, i32 2
  store %struct.per_pidcomm* %41, %struct.per_pidcomm** %43, align 8
  br label %44

44:                                               ; preds = %26, %7
  %45 = call i8* @zalloc(i32 40)
  %46 = bitcast i8* %45 to %struct.cpu_sample*
  store %struct.cpu_sample* %46, %struct.cpu_sample** %17, align 8
  %47 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %48 = icmp ne %struct.cpu_sample* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %53 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %56 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %59 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %61 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %60, i32 0, i32 2
  %62 = load %struct.cpu_sample*, %struct.cpu_sample** %61, align 8
  %63 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %64 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %63, i32 0, i32 3
  store %struct.cpu_sample* %62, %struct.cpu_sample** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %67 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %70 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %72 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %73 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %72, i32 0, i32 2
  store %struct.cpu_sample* %71, %struct.cpu_sample** %73, align 8
  %74 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  %75 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TYPE_RUNNING, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %44
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load i64, i64* %12, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %91 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %12, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %100 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %105

105:                                              ; preds = %86, %83, %79, %44
  %106 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %107 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %112 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %105
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.per_pidcomm*, %struct.per_pidcomm** %16, align 8
  %119 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %122 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %127 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125, %120
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %134 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %125
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
