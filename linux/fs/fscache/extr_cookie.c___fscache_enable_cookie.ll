; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c___fscache_enable_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c___fscache_enable_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@FSCACHE_COOKIE_ENABLEMENT_LOCK = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_ENABLED = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_TYPE_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_enable_cookie(%struct.fscache_cookie* %0, i8* %1, i32 %2, i32 (i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.fscache_cookie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i8*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*)* %3, i32 (i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %11)
  %13 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %14 = call i32 @trace_fscache_enable(%struct.fscache_cookie* %13)
  %15 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %16 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %15, i32 0, i32 1
  %17 = load i32, i32* @FSCACHE_COOKIE_ENABLEMENT_LOCK, align 4
  %18 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %19 = call i32 @wait_on_bit_lock(i32* %16, i32 %17, i32 %18)
  %20 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @fscache_update_aux(%struct.fscache_cookie* %20, i8* %21)
  %23 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %24 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %25 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %64

29:                                               ; preds = %5
  %30 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %31 = icmp ne i32 (i8*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 %33(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %63

38:                                               ; preds = %32, %29
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FSCACHE_COOKIE_TYPE_INDEX, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %46 = call i32 @__fscache_wait_on_invalidate(%struct.fscache_cookie* %45)
  %47 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %53 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %54 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %53, i32 0, i32 1
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %44
  br label %62

57:                                               ; preds = %38
  %58 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %59 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %60 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %56
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* @FSCACHE_COOKIE_ENABLEMENT_LOCK, align 4
  %66 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %67 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %66, i32 0, i32 1
  %68 = call i32 @clear_bit_unlock(i32 %65, i32* %67)
  %69 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %70 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %69, i32 0, i32 1
  %71 = load i32, i32* @FSCACHE_COOKIE_ENABLEMENT_LOCK, align 4
  %72 = call i32 @wake_up_bit(i32* %70, i32 %71)
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.fscache_cookie*) #1

declare dso_local i32 @trace_fscache_enable(%struct.fscache_cookie*) #1

declare dso_local i32 @wait_on_bit_lock(i32*, i32, i32) #1

declare dso_local i32 @fscache_update_aux(%struct.fscache_cookie*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__fscache_wait_on_invalidate(%struct.fscache_cookie*) #1

declare dso_local i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
