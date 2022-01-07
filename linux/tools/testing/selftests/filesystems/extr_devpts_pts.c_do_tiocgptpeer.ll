; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_devpts_pts.c_do_tiocgptpeer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_devpts_pts.c_do_tiocgptpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to open \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to unlock terminal\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"TIOCGPTPEER is not supported. Skipping test.\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to perform TIOCGPTPEER ioctl\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to setup terminal\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Failed to retrieve pathname of pts slave file descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Received invalid contents for \22/proc/<pid>/fd/%d\22 symlink: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Contents of \22/proc/<pid>/fd/%d\22 symlink are valid: %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@TIOCGPTPEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @do_tiocgptpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tiocgptpeer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_NOCTTY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* %12, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* @errno, align 8
  %25 = call i8* @strerror(i64 %24)
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %25)
  store i32 -1, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @unlockpt(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %108

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINVAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %45, i32* %9, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %108

51:                                               ; preds = %35
  %52 = call i64 (...) @fork()
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %108

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @login_pty(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 @_exit(i32 %67) #3
  unreachable

69:                                               ; preds = %59
  %70 = load i32, i32* @STDIN_FILENO, align 4
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %72 = call i32 @resolve_procfd_symlink(i32 %70, i8* %71, i32 4096)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 @_exit(i32 %78) #3
  unreachable

80:                                               ; preds = %69
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = call i64 @strncmp(i8* %81, i8* %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* @STDIN_FILENO, align 4
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %89, i8* %90)
  %92 = call i32 @_exit(i32 -1) #3
  unreachable

93:                                               ; preds = %80
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* @STDIN_FILENO, align 4
  %96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %95, i8* %96)
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  %99 = call i32 @_exit(i32 %98) #3
  unreachable

100:                                              ; preds = %56
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @wait_for_pid(i64 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %105, %55, %50, %32
  %109 = load i32, i32* %7, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @close(i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %8, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @close(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @unlockpt(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @login_pty(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @resolve_procfd_symlink(i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wait_for_pid(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
