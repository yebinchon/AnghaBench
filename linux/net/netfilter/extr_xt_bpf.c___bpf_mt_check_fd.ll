; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_fd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_bpf.c___bpf_mt_check_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }

@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bpf_prog**)* @__bpf_mt_check_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_mt_check_fd(i32 %0, %struct.bpf_prog** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog**, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog** %1, %struct.bpf_prog*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %9 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %7, i32 %8)
  store %struct.bpf_prog* %9, %struct.bpf_prog** %6, align 8
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %11 = call i64 @IS_ERR(%struct.bpf_prog* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.bpf_prog* %14)
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %18 = load %struct.bpf_prog**, %struct.bpf_prog*** %5, align 8
  store %struct.bpf_prog* %17, %struct.bpf_prog** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
