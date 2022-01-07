; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_jit_harden.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_jit_harden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"/proc/sys/net/core/bpf_jit_harden\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bpf_jit_harden\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"JIT compiler hardening is disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"JIT compiler hardening is enabled for unprivileged users\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"JIT compiler hardening is enabled for all users\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Unable to retrieve JIT hardening status\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"JIT hardening status has unknown value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_jit_harden to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_jit_harden() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @read_procfs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @json_output, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @json_wtr, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @jsonw_int_field(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %19 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 -1, label %17
  ]

11:                                               ; preds = %9
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %22

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %22

15:                                               ; preds = %9
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %22

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %17, %15, %13, %11
  br label %23

23:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @read_procfs(i8*) #1

declare dso_local i32 @jsonw_int_field(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
