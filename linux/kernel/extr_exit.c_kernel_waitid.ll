; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_kernel_waitid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_kernel_waitid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitid_info = type { i32 }
%struct.rusage = type { i32 }
%struct.wait_opts = type { i32, i32, %struct.rusage*, %struct.waitid_info*, %struct.pid* }
%struct.pid = type { i32 }

@WNOHANG = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WSTOPPED = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4
@__WNOTHREAD = common dso_local global i32 0, align 4
@__WCLONE = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@PIDTYPE_MAX = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.waitid_info*, i32, %struct.rusage*)* @kernel_waitid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kernel_waitid(i32 %0, i32 %1, %struct.waitid_info* %2, i32 %3, %struct.rusage* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.waitid_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rusage*, align 8
  %12 = alloca %struct.wait_opts, align 8
  %13 = alloca %struct.pid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.waitid_info* %2, %struct.waitid_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.rusage* %4, %struct.rusage** %11, align 8
  store %struct.pid* null, %struct.pid** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @WNOHANG, align 4
  %18 = load i32, i32* @WNOWAIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WEXITED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WSTOPPED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WCONTINUED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__WNOTHREAD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @__WCLONE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @__WALL, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %16, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %6, align 8
  br label %117

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @WEXITED, align 4
  %41 = load i32, i32* @WSTOPPED, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WCONTINUED, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %6, align 8
  br label %117

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %99 [
    i32 131, label %52
    i32 129, label %54
    i32 130, label %64
    i32 128, label %82
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @PIDTYPE_MAX, align 4
  store i32 %53, i32* %14, align 4
  br label %102

54:                                               ; preds = %50
  %55 = load i32, i32* @PIDTYPE_PID, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %6, align 8
  br label %117

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.pid* @find_get_pid(i32 %62)
  store %struct.pid* %63, %struct.pid** %13, align 8
  br label %102

64:                                               ; preds = %50
  %65 = load i32, i32* @PIDTYPE_PGID, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub nsw i64 0, %69
  store i64 %70, i64* %6, align 8
  br label %117

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.pid* @find_get_pid(i32 %75)
  store %struct.pid* %76, %struct.pid** %13, align 8
  br label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @current, align 4
  %79 = load i32, i32* @PIDTYPE_PGID, align 4
  %80 = call %struct.pid* @get_task_pid(i32 %78, i32 %79)
  store %struct.pid* %80, %struct.pid** %13, align 8
  br label %81

81:                                               ; preds = %77, %74
  br label %102

82:                                               ; preds = %50
  %83 = load i32, i32* @PIDTYPE_PID, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* @EINVAL, align 8
  %88 = sub nsw i64 0, %87
  store i64 %88, i64* %6, align 8
  br label %117

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.pid* @pidfd_get_pid(i32 %90)
  store %struct.pid* %91, %struct.pid** %13, align 8
  %92 = load %struct.pid*, %struct.pid** %13, align 8
  %93 = call i32 @IS_ERR(%struct.pid* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.pid*, %struct.pid** %13, align 8
  %97 = call i64 @PTR_ERR(%struct.pid* %96)
  store i64 %97, i64* %6, align 8
  br label %117

98:                                               ; preds = %89
  br label %102

99:                                               ; preds = %50
  %100 = load i64, i64* @EINVAL, align 8
  %101 = sub nsw i64 0, %100
  store i64 %101, i64* %6, align 8
  br label %117

102:                                              ; preds = %98, %81, %61, %52
  %103 = load i32, i32* %14, align 4
  %104 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load %struct.pid*, %struct.pid** %13, align 8
  %106 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 4
  store %struct.pid* %105, %struct.pid** %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.waitid_info*, %struct.waitid_info** %9, align 8
  %110 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 3
  store %struct.waitid_info* %109, %struct.waitid_info** %110, align 8
  %111 = load %struct.rusage*, %struct.rusage** %11, align 8
  %112 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 2
  store %struct.rusage* %111, %struct.rusage** %112, align 8
  %113 = call i64 @do_wait(%struct.wait_opts* %12)
  store i64 %113, i64* %15, align 8
  %114 = load %struct.pid*, %struct.pid** %13, align 8
  %115 = call i32 @put_pid(%struct.pid* %114)
  %116 = load i64, i64* %15, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %102, %99, %95, %86, %68, %58, %47, %35
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

declare dso_local %struct.pid* @find_get_pid(i32) #1

declare dso_local %struct.pid* @get_task_pid(i32, i32) #1

declare dso_local %struct.pid* @pidfd_get_pid(i32) #1

declare dso_local i32 @IS_ERR(%struct.pid*) #1

declare dso_local i64 @PTR_ERR(%struct.pid*) #1

declare dso_local i64 @do_wait(%struct.wait_opts*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
