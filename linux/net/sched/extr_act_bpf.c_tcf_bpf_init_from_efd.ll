; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_init_from_efd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_init_from_efd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tcf_bpf_cfg = type { i8*, i32, %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@TCA_ACT_BPF_FD = common dso_local global i64 0, align 8
@BPF_PROG_TYPE_SCHED_ACT = common dso_local global i32 0, align 4
@TCA_ACT_BPF_NAME = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.tcf_bpf_cfg*)* @tcf_bpf_init_from_efd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_bpf_init_from_efd(%struct.nlattr** %0, %struct.tcf_bpf_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.tcf_bpf_cfg*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.tcf_bpf_cfg* %1, %struct.tcf_bpf_cfg** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %10 = load i64, i64* @TCA_ACT_BPF_FD, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = call i32 @nla_get_u32(%struct.nlattr* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BPF_PROG_TYPE_SCHED_ACT, align 4
  %16 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %14, i32 %15)
  store %struct.bpf_prog* %16, %struct.bpf_prog** %6, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %18 = call i64 @IS_ERR(%struct.bpf_prog* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.bpf_prog* %21)
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @TCA_ACT_BPF_NAME, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i64, i64* @TCA_ACT_BPF_NAME, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @nla_memdup(%struct.nlattr* %33, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %40 = call i32 @bpf_prog_put(%struct.bpf_prog* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %49 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %5, align 8
  %50 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %49, i32 0, i32 2
  store %struct.bpf_prog* %48, %struct.bpf_prog** %50, align 8
  %51 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %38, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i8* @nla_memdup(%struct.nlattr*, i32) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
