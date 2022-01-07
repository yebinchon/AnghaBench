; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_do_sk_storage_map_stress_change.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_do_sk_storage_map_stress_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_sk_threads = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"malloc(sk_threads): NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sk_storage_map = common dso_local global i32 0, align 4
@update_thread = common dso_local global i32 0, align 4
@delete_thread = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"threads#%u: err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_sk_storage_map_stress_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sk_storage_map_stress_change() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @nr_sk_threads, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32* @malloc(i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %114

21:                                               ; preds = %0
  %22 = load i32, i32* @AF_INET6, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %21
  %31 = call i32 (...) @create_sk_storage_map()
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @sk_storage_map, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @WRITE_ONCE(i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %66, %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @nr_sk_threads, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* @update_thread, align 4
  %49 = call i32 @pthread_create(i32* %47, i32* null, i32 %48, i32* %3)
  store i32 %49, i32* %5, align 4
  br label %57

50:                                               ; preds = %39
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* @delete_thread, align 4
  %56 = call i32 @pthread_create(i32* %54, i32* null, i32 %55, i32* %3)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @errno, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %35

69:                                               ; preds = %35
  %70 = call i32 (...) @wait_for_threads_err()
  br label %71

71:                                               ; preds = %69, %60, %27
  %72 = load i32, i32* @stop, align 4
  %73 = call i32 @WRITE_ONCE(i32 %72, i32 1)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %99, %71
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pthread_join(i32 %83, i8** %8)
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %88, %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %2, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %2, align 4
  br label %74

102:                                              ; preds = %74
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @free(i32* %103)
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @close(i32 %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %110, %16
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @create_sk_storage_map(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @wait_for_threads_err(...) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
