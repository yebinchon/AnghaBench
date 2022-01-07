; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_prog_from_efd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_prog_from_efd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.cls_bpf_prog = type { i8*, %struct.bpf_prog*, i32* }
%struct.bpf_prog = type { i64 }
%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCA_BPF_FD = common dso_local global i64 0, align 8
@TCA_CLS_FLAGS_SKIP_SW = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SCHED_CLS = common dso_local global i32 0, align 4
@TCA_BPF_NAME = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.cls_bpf_prog*, i32, %struct.tcf_proto*)* @cls_bpf_prog_from_efd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_prog_from_efd(%struct.nlattr** %0, %struct.cls_bpf_prog* %1, i32 %2, %struct.tcf_proto* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.cls_bpf_prog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %6, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_proto* %3, %struct.tcf_proto** %9, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %15 = load i64, i64* @TCA_BPF_FD, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i32 @nla_get_u32(%struct.nlattr* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TCA_CLS_FLAGS_SKIP_SW, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @BPF_PROG_TYPE_SCHED_CLS, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.bpf_prog* @bpf_prog_get_type_dev(i32 %22, i32 %23, i32 %24)
  store %struct.bpf_prog* %25, %struct.bpf_prog** %10, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %27 = call i64 @IS_ERR(%struct.bpf_prog* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.bpf_prog* %30)
  store i32 %31, i32* %5, align 4
  br label %74

32:                                               ; preds = %4
  %33 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %34 = load i64, i64* @TCA_BPF_NAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %40 = load i64, i64* @TCA_BPF_NAME, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @nla_memdup(%struct.nlattr* %42, i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %49 = call i32 @bpf_prog_put(%struct.bpf_prog* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %74

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %55 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %58 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %60 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %61 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %60, i32 0, i32 1
  store %struct.bpf_prog* %59, %struct.bpf_prog** %61, align 8
  %62 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %63 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %68 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tcf_block_netif_keep_dst(i32 %71)
  br label %73

73:                                               ; preds = %66, %53
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %47, %29
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type_dev(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i8* @nla_memdup(%struct.nlattr*, i32) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @tcf_block_netif_keep_dst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
