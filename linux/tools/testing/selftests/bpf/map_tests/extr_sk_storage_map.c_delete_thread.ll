; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_delete_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_delete_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sk_storage_map = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bpf_map_delete_elem: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @delete_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @delete_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @sk_storage_map, align 4
  %8 = call i32 @READ_ONCE(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = call i32 (...) @is_stopped()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bpf_map_delete_elem(i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @errno, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %33

32:                                               ; preds = %21, %16
  br label %12

33:                                               ; preds = %25, %12
  %34 = call i32 (...) @is_stopped()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @notify_thread_err()
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %2, align 8
  br label %41

40:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @is_stopped(...) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @notify_thread_err(...) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
