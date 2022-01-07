; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_bytecode.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_bytecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.sock_fprog_kern = type { %struct.sock_filter*, i64 }

@XT_BPF_MAX_NUM_INSTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"check failed: parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_filter*, i64, %struct.bpf_prog**)* @__bpf_mt_check_bytecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_mt_check_bytecode(%struct.sock_filter* %0, i64 %1, %struct.bpf_prog** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bpf_prog**, align 8
  %8 = alloca %struct.sock_fprog_kern, align 8
  store %struct.sock_filter* %0, %struct.sock_filter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bpf_prog** %2, %struct.bpf_prog*** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @XT_BPF_MAX_NUM_INSTR, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %8, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %19 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %8, i32 0, i32 0
  store %struct.sock_filter* %18, %struct.sock_filter** %19, align 8
  %20 = load %struct.bpf_prog**, %struct.bpf_prog*** %7, align 8
  %21 = call i64 @bpf_prog_create(%struct.bpf_prog** %20, %struct.sock_fprog_kern* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @bpf_prog_create(%struct.bpf_prog**, %struct.sock_fprog_kern*) #1

declare dso_local i32 @pr_info_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
