; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__set_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__set_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i8**, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_env__set_cmdline(%struct.perf_env* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.perf_env* %0, %struct.perf_env** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i8** @calloc(i32 %9, i32 8)
  %11 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %12 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %11, i32 0, i32 0
  store i8** %10, i8*** %12, align 8
  %13 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %14 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %56

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %30 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %36 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  br label %52

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %51 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %59

52:                                               ; preds = %43
  %53 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %54 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %53, i32 0, i32 0
  %55 = call i32 @zfree(i8*** %54)
  br label %56

56:                                               ; preds = %52, %17
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @zfree(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
