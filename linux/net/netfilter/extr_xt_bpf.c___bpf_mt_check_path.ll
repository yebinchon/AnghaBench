; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }

@XT_BPF_PATH_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bpf_prog**)* @__bpf_mt_check_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_mt_check_path(i8* %0, %struct.bpf_prog** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bpf_prog**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.bpf_prog** %1, %struct.bpf_prog*** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i64, i64* @XT_BPF_PATH_MAX, align 8
  %8 = call i64 @strnlen(i8* %6, i64 %7)
  %9 = load i64, i64* @XT_BPF_PATH_MAX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %17 = call %struct.bpf_prog* @bpf_prog_get_type_path(i8* %15, i32 %16)
  %18 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  store %struct.bpf_prog* %17, %struct.bpf_prog** %18, align 8
  %19 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %21 = call i32 @PTR_ERR_OR_ZERO(%struct.bpf_prog* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type_path(i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
