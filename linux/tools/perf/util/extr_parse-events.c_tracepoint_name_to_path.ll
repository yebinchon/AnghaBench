; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_tracepoint_name_to_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_tracepoint_name_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { %struct.tracepoint_path*, %struct.tracepoint_path* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tracepoint_path* @tracepoint_name_to_path(i8* %0) #0 {
  %2 = alloca %struct.tracepoint_path*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tracepoint_path*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call %struct.tracepoint_path* @zalloc(i32 16)
  store %struct.tracepoint_path* %6, %struct.tracepoint_path** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 58)
  store i8* %8, i8** %5, align 8
  %9 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %10 = icmp eq %struct.tracepoint_path* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %1
  %15 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %16 = call i32 @free(%struct.tracepoint_path* %15)
  store %struct.tracepoint_path* null, %struct.tracepoint_path** %2, align 8
  br label %52

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.tracepoint_path* @strndup(i8* %18, i32 %24)
  %26 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %27 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %26, i32 0, i32 1
  store %struct.tracepoint_path* %25, %struct.tracepoint_path** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call %struct.tracepoint_path* @strdup(i8* %29)
  %31 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %32 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %31, i32 0, i32 0
  store %struct.tracepoint_path* %30, %struct.tracepoint_path** %32, align 8
  %33 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %34 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %33, i32 0, i32 1
  %35 = load %struct.tracepoint_path*, %struct.tracepoint_path** %34, align 8
  %36 = icmp eq %struct.tracepoint_path* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %17
  %38 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %39 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %38, i32 0, i32 0
  %40 = load %struct.tracepoint_path*, %struct.tracepoint_path** %39, align 8
  %41 = icmp eq %struct.tracepoint_path* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %17
  %43 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %44 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %43, i32 0, i32 1
  %45 = call i32 @zfree(%struct.tracepoint_path** %44)
  %46 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %47 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %46, i32 0, i32 0
  %48 = call i32 @zfree(%struct.tracepoint_path** %47)
  %49 = call i32 @zfree(%struct.tracepoint_path** %4)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  store %struct.tracepoint_path* %51, %struct.tracepoint_path** %2, align 8
  br label %52

52:                                               ; preds = %50, %14
  %53 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  ret %struct.tracepoint_path* %53
}

declare dso_local %struct.tracepoint_path* @zalloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(%struct.tracepoint_path*) #1

declare dso_local %struct.tracepoint_path* @strndup(i8*, i32) #1

declare dso_local %struct.tracepoint_path* @strdup(i8*) #1

declare dso_local i32 @zfree(%struct.tracepoint_path**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
