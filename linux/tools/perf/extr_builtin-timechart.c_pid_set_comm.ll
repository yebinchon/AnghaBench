; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_set_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_set_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.per_pid = type { %struct.per_pidcomm*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { %struct.per_pidcomm*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i8*)* @pid_set_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_set_comm(%struct.timechart* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.timechart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.per_pid*, align 8
  %8 = alloca %struct.per_pidcomm*, align 8
  store %struct.timechart* %0, %struct.timechart** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.timechart*, %struct.timechart** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.per_pid* @find_create_pid(%struct.timechart* %9, i32 %10)
  store %struct.per_pid* %11, %struct.per_pid** %7, align 8
  %12 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %13 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %12, i32 0, i32 0
  %14 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  store %struct.per_pidcomm* %14, %struct.per_pidcomm** %8, align 8
  br label %15

15:                                               ; preds = %47, %3
  %16 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %17 = icmp ne %struct.per_pidcomm* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %20 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %25 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %32 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %33 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %32, i32 0, i32 1
  store %struct.per_pidcomm* %31, %struct.per_pidcomm** %33, align 8
  br label %72

34:                                               ; preds = %23, %18
  %35 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %36 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strdup(i8* %40)
  %42 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %43 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %45 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %46 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %45, i32 0, i32 1
  store %struct.per_pidcomm* %44, %struct.per_pidcomm** %46, align 8
  br label %72

47:                                               ; preds = %34
  %48 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %49 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %48, i32 0, i32 0
  %50 = load %struct.per_pidcomm*, %struct.per_pidcomm** %49, align 8
  store %struct.per_pidcomm* %50, %struct.per_pidcomm** %8, align 8
  br label %15

51:                                               ; preds = %15
  %52 = call %struct.per_pidcomm* @zalloc(i32 16)
  store %struct.per_pidcomm* %52, %struct.per_pidcomm** %8, align 8
  %53 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %54 = icmp ne %struct.per_pidcomm* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strdup(i8* %57)
  %59 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %60 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %62 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %63 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %62, i32 0, i32 1
  store %struct.per_pidcomm* %61, %struct.per_pidcomm** %63, align 8
  %64 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %65 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %64, i32 0, i32 0
  %66 = load %struct.per_pidcomm*, %struct.per_pidcomm** %65, align 8
  %67 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %68 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %67, i32 0, i32 0
  store %struct.per_pidcomm* %66, %struct.per_pidcomm** %68, align 8
  %69 = load %struct.per_pidcomm*, %struct.per_pidcomm** %8, align 8
  %70 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %71 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %70, i32 0, i32 0
  store %struct.per_pidcomm* %69, %struct.per_pidcomm** %71, align 8
  br label %72

72:                                               ; preds = %51, %39, %30
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.per_pidcomm* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
