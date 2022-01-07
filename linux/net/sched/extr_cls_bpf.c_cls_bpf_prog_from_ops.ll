; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_prog_from_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_prog_from_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.cls_bpf_prog = type { i32, %struct.bpf_prog*, i32*, %struct.sock_filter* }
%struct.bpf_prog = type { i32 }
%struct.sock_filter = type { i32 }
%struct.sock_fprog_kern = type { i32, %struct.sock_filter* }

@TCA_BPF_OPS_LEN = common dso_local global i64 0, align 8
@BPF_MAXINSNS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_BPF_OPS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.cls_bpf_prog*)* @cls_bpf_prog_from_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_prog_from_ops(%struct.nlattr** %0, %struct.cls_bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.cls_bpf_prog*, align 8
  %6 = alloca %struct.sock_filter*, align 8
  %7 = alloca %struct.sock_fprog_kern, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %5, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @TCA_BPF_OPS_LEN, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nla_get_u16(%struct.nlattr* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @BPF_MAXINSNS, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %33 = load i64, i64* @TCA_BPF_OPS, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_len(%struct.nlattr* %35)
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %26
  %42 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %43 = load i64, i64* @TCA_BPF_OPS, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_data(%struct.nlattr* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.sock_filter* @kmemdup(i32 %46, i32 %47, i32 %48)
  store %struct.sock_filter* %49, %struct.sock_filter** %6, align 8
  %50 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %51 = icmp eq %struct.sock_filter* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %59 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %7, i32 0, i32 1
  store %struct.sock_filter* %58, %struct.sock_filter** %59, align 8
  %60 = call i32 @bpf_prog_create(%struct.bpf_prog** %8, %struct.sock_fprog_kern* %7)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %65 = call i32 @kfree(%struct.sock_filter* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %55
  %68 = load %struct.sock_filter*, %struct.sock_filter** %6, align 8
  %69 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %70 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %69, i32 0, i32 3
  store %struct.sock_filter* %68, %struct.sock_filter** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %73 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %75 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %77 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %78 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %77, i32 0, i32 1
  store %struct.bpf_prog* %76, %struct.bpf_prog** %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %67, %63, %52, %38, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.sock_filter* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @bpf_prog_create(%struct.bpf_prog**, %struct.sock_fprog_kern*) #1

declare dso_local i32 @kfree(%struct.sock_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
