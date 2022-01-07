; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__find_debug.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__find_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32 }
%struct.nscookie = type { i32 }

@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"/usr/lib/debug/.build-id/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%.2s/%s.debug\00", align 1
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.nsinfo*)* @build_id_cache__find_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_id_cache__find_debug(i8* %0, %struct.nsinfo* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nsinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nscookie, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nsinfo* %1, %struct.nsinfo** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* @PATH_MAX, align 8
  %10 = call i8* @calloc(i32 1, i64 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* @PATH_MAX, align 8
  %17 = call i64 @__symbol__join_symfs(i8* %15, i64 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* @PATH_MAX, align 8
  %22 = load i64, i64* %8, align 8
  %23 = sub i64 %21, %22
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = call i32 @snprintf(i8* %20, i64 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %26)
  %28 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %29 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %28, %struct.nscookie* %7)
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @realpath(i8* %30, i32* null)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %14
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @R_OK, align 4
  %37 = call i64 @access(i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @zfree(i8** %5)
  br label %41

41:                                               ; preds = %39, %34, %14
  %42 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %7)
  br label %43

43:                                               ; preds = %41, %13
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @__symbol__join_symfs(i8*, i64, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @nsinfo__mountns_enter(%struct.nsinfo*, %struct.nscookie*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
