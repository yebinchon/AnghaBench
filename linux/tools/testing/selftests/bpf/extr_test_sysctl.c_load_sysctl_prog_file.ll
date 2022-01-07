; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_load_sysctl_prog_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_load_sysctl_prog_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_test = type { i64, i32 }
%struct.bpf_prog_load_attr = type { i32, i32 }
%struct.bpf_object = type { i32 }

@BPF_PROG_TYPE_CGROUP_SYSCTL = common dso_local global i32 0, align 4
@LOAD_REJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c">>> Loading program (%s) error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_test*)* @load_sysctl_prog_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_sysctl_prog_file(%struct.sysctl_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_test*, align 8
  %4 = alloca %struct.bpf_prog_load_attr, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i32, align 4
  store %struct.sysctl_test* %0, %struct.sysctl_test** %3, align 8
  %7 = call i32 @memset(%struct.bpf_prog_load_attr* %4, i32 0, i32 8)
  %8 = load %struct.sysctl_test*, %struct.sysctl_test** %3, align 8
  %9 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  %13 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %4, %struct.bpf_object** %5, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.sysctl_test*, %struct.sysctl_test** %3, align 8
  %18 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LOAD_REJECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.sysctl_test*, %struct.sysctl_test** %3, align 8
  %24 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  store i32 -1, i32* %2, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.bpf_prog_load_attr*, i32, i32) #1

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #1

declare dso_local i32 @log_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
