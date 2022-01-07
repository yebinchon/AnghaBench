; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_fcntl.c_syscall_arg__scnprintf_fcntl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_fcntl.c_syscall_arg__scnprintf_fcntl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i64, i32 }

@F_GETFL = common dso_local global i64 0, align 8
@syscall_arg__scnprintf_open_flags = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i64 0, align 8
@syscall_arg__scnprintf_fcntl_getfd = common dso_local global i32 0, align 4
@F_DUPFD_CLOEXEC = common dso_local global i64 0, align 8
@F_DUPFD = common dso_local global i64 0, align 8
@syscall_arg__scnprintf_fd = common dso_local global i32 0, align 4
@F_GETOWN = common dso_local global i64 0, align 8
@syscall_arg__scnprintf_pid = common dso_local global i32 0, align 4
@F_GETLEASE = common dso_local global i64 0, align 8
@syscall_arg__scnprintf_fcntl_getlease = common dso_local global i32 0, align 4
@F_GET_SEALS = common dso_local global i64 0, align 8
@F_GETSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_fcntl_cmd(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %6, align 8
  %7 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %8 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @F_GETFL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %14 = load i32, i32* @syscall_arg__scnprintf_open_flags, align 4
  %15 = call i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %13, i32 %14)
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %18 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @F_GETFD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %24 = load i32, i32* @syscall_arg__scnprintf_fcntl_getfd, align 4
  %25 = call i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %23, i32 %24)
  br label %75

26:                                               ; preds = %16
  %27 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %28 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @F_DUPFD_CLOEXEC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %34 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @F_DUPFD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %40 = load i32, i32* @syscall_arg__scnprintf_fd, align 4
  %41 = call i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %39, i32 %40)
  br label %81

42:                                               ; preds = %32
  %43 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %44 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @F_GETOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %50 = load i32, i32* @syscall_arg__scnprintf_pid, align 4
  %51 = call i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %49, i32 %50)
  br label %75

52:                                               ; preds = %42
  %53 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %54 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @F_GETLEASE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %60 = load i32, i32* @syscall_arg__scnprintf_fcntl_getlease, align 4
  %61 = call i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %59, i32 %60)
  br label %75

62:                                               ; preds = %52
  %63 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %64 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @F_GET_SEALS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %70 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @F_GETSIG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %58, %48, %22, %12
  %76 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %77 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, 4
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %85 = call i64 @syscall_arg__scnprintf_strarrays(i8* %82, i64 %83, %struct.syscall_arg* %84)
  ret i64 %85
}

declare dso_local i32 @syscall_arg__set_ret_scnprintf(%struct.syscall_arg*, i32) #1

declare dso_local i64 @syscall_arg__scnprintf_strarrays(i8*, i64, %struct.syscall_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
