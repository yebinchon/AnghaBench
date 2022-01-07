; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_fill_lwt_prog.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_fill_lwt_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bpf_lwt_prog = type { i64, i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@LWT_BPF_PROG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.bpf_lwt_prog*)* @bpf_fill_lwt_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_lwt_prog(%struct.sk_buff* %0, i32 %1, %struct.bpf_lwt_prog* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_lwt_prog*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bpf_lwt_prog* %2, %struct.bpf_lwt_prog** %7, align 8
  %9 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %7, align 8
  %10 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %8, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %7, align 8
  %25 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @LWT_BPF_PROG_NAME, align 4
  %31 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %7, align 8
  %32 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @nla_put_string(%struct.sk_buff* %29, i32 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %28, %23
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %42 = call i32 @nla_nest_end(%struct.sk_buff* %40, %struct.nlattr* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %36, %20, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
