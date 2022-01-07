; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_do_sk_storage_map_stress_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_do_sk_storage_map_stress_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_sk_threads = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"malloc(sk_threads): NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@insert_close_thread = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sk_storage_map = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"threads#%u: err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_sk_storage_map_stress_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sk_storage_map_stress_free() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @nr_sk_threads, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32* @malloc(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %107

20:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @nr_sk_threads, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @insert_close_thread, align 4
  %31 = call i32 @pthread_create(i32* %29, i32* null, i32 %30, i32* null)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %66

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %64, %43
  %45 = call i32 (...) @is_stopped()
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = call i32 (...) @create_sk_storage_map()
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @sk_storage_map, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @WRITE_ONCE(i32 %50, i32 %51)
  %53 = call i32 (...) @wait_for_threads_done()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %65

56:                                               ; preds = %48
  %57 = load i32, i32* @sk_storage_map, align 4
  %58 = call i32 @WRITE_ONCE(i32 %57, i32 -1)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @close(i32 %59)
  store i32 -1, i32* %3, align 4
  %61 = call i32 (...) @wait_for_threads_redo()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %65

64:                                               ; preds = %56
  br label %44

65:                                               ; preds = %63, %55, %44
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* @stop, align 4
  %68 = call i32 @WRITE_ONCE(i32 %67, i32 1)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %94, %66
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pthread_join(i32 %78, i8** %7)
  %80 = load i8*, i8** %7, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %83, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @free(i32* %98)
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @close(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %1, align 4
  br label %107

107:                                              ; preds = %105, %15
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @is_stopped(...) #1

declare dso_local i32 @create_sk_storage_map(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @wait_for_threads_done(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @wait_for_threads_redo(...) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
