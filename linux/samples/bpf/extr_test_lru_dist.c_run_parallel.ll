; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_run_parallel.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_run_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"couldn't spawn #%d process\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, void (i32, i8*)*, i8*)* @run_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_parallel(i32 %0, void (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store void (i32, i8*)* %1, void (i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = call i32 (...) @fork()
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %15, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %15, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sched_next_online(i32 0, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %6, align 8
  call void %33(i32 %34, i8* %35)
  %36 = call i32 @exit(i32 0) #4
  unreachable

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %15, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @exit(i32 1) #4
  unreachable

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %15, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @sched_next_online(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %16

58:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %15, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @waitpid(i32 %67, i32* %11, i32 0)
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %15, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fork(...) #2

declare dso_local i32 @sched_next_online(i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
