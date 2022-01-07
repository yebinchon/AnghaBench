; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_fcntl.c_syscall_arg__scnprintf_fcntl_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_fcntl.c_syscall_arg__scnprintf_fcntl_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, i32 }

@F_DUPFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_SETOWN = common dso_local global i32 0, align 4
@F_SETLEASE = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@F_OFD_SETLK = common dso_local global i32 0, align 4
@F_OFD_SETLKW = common dso_local global i32 0, align 4
@F_OFD_GETLK = common dso_local global i32 0, align 4
@F_GETOWN_EX = common dso_local global i32 0, align 4
@F_SETOWN_EX = common dso_local global i32 0, align 4
@F_GET_RW_HINT = common dso_local global i32 0, align 4
@F_SET_RW_HINT = common dso_local global i32 0, align 4
@F_GET_FILE_RW_HINT = common dso_local global i32 0, align 4
@F_SET_FILE_RW_HINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_fcntl_arg(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %7, align 8
  %10 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %11 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %14 = call i32 @syscall_arg__val(%struct.syscall_arg* %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @F_DUPFD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %22 = call i64 @syscall_arg__scnprintf_fd(i8* %19, i64 %20, %struct.syscall_arg* %21)
  store i64 %22, i64* %4, align 8
  br label %126

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @F_SETFD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %29 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @fcntl__scnprintf_getfd(i32 %30, i8* %31, i64 %32, i32 %33)
  store i64 %34, i64* %4, align 8
  br label %126

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @F_SETFL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %41 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @open__scnprintf_flags(i32 %42, i8* %43, i64 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  br label %126

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @F_SETOWN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %55 = call i64 @syscall_arg__scnprintf_pid(i8* %52, i64 %53, %struct.syscall_arg* %54)
  store i64 %55, i64* %4, align 8
  br label %126

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @F_SETLEASE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %62 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @fcntl__scnprintf_getlease(i32 %63, i8* %64, i64 %65, i32 %66)
  store i64 %67, i64* %4, align 8
  br label %126

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @F_SETLK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %116, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @F_SETLKW, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %116, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @F_GETLK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %116, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @F_OFD_SETLK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %116, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @F_OFD_SETLKW, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %116, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @F_OFD_GETLK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @F_GETOWN_EX, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %116, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @F_SETOWN_EX, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @F_GET_RW_HINT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @F_SET_RW_HINT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @F_GET_FILE_RW_HINT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @F_SET_FILE_RW_HINT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %120 = call i64 @syscall_arg__scnprintf_hex(i8* %117, i64 %118, %struct.syscall_arg* %119)
  store i64 %120, i64* %4, align 8
  br label %126

121:                                              ; preds = %112
  %122 = load i8*, i8** %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %125 = call i64 @syscall_arg__scnprintf_long(i8* %122, i64 %123, %struct.syscall_arg* %124)
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %121, %116, %60, %51, %39, %27, %18
  %127 = load i64, i64* %4, align 8
  ret i64 %127
}

declare dso_local i32 @syscall_arg__val(%struct.syscall_arg*, i32) #1

declare dso_local i64 @syscall_arg__scnprintf_fd(i8*, i64, %struct.syscall_arg*) #1

declare dso_local i64 @fcntl__scnprintf_getfd(i32, i8*, i64, i32) #1

declare dso_local i64 @open__scnprintf_flags(i32, i8*, i64, i32) #1

declare dso_local i64 @syscall_arg__scnprintf_pid(i8*, i64, %struct.syscall_arg*) #1

declare dso_local i64 @fcntl__scnprintf_getlease(i32, i8*, i64, i32) #1

declare dso_local i64 @syscall_arg__scnprintf_hex(i8*, i64, %struct.syscall_arg*) #1

declare dso_local i64 @syscall_arg__scnprintf_long(i8*, i64, %struct.syscall_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
