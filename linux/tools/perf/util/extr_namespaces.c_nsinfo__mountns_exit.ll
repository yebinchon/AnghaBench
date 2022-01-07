; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__mountns_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__mountns_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nscookie = type { i32, i32, i64 }

@CLONE_NEWNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nsinfo__mountns_exit(%struct.nscookie* %0) #0 {
  %2 = alloca %struct.nscookie*, align 8
  store %struct.nscookie* %0, %struct.nscookie** %2, align 8
  %3 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %4 = icmp eq %struct.nscookie* %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %7 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %12 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %17 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %10, %5, %1
  br label %64

21:                                               ; preds = %15
  %22 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %23 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLONE_NEWNS, align 4
  %26 = call i32 @setns(i32 %24, i32 %25)
  %27 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %28 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %33 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @chdir(i64 %34)
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %38 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %37, i32 0, i32 2
  %39 = call i32 @zfree(i64* %38)
  br label %40

40:                                               ; preds = %31, %21
  %41 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %42 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %47 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %51 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %54 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %59 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load %struct.nscookie*, %struct.nscookie** %2, align 8
  %63 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 4
  br label %64

64:                                               ; preds = %20, %57, %52
  ret void
}

declare dso_local i32 @setns(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @chdir(i64) #1

declare dso_local i32 @zfree(i64*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
