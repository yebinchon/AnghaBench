; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bpf_prog*, i32 }
%struct.bpf_prog = type { i32 }

@SEG6_LOCAL_BPF_PROG_MAX = common dso_local global i32 0, align 4
@SEG6_LOCAL_BPF = common dso_local global i64 0, align 8
@bpf_prog_policy = common dso_local global i32 0, align 4
@SEG6_LOCAL_BPF_PROG = common dso_local global i64 0, align 8
@SEG6_LOCAL_BPF_PROG_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_LWT_SEG6LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.seg6_local_lwt*)* @parse_nla_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nla_bpf(%struct.nlattr** %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %12 = load i32, i32* @SEG6_LOCAL_BPF_PROG_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @SEG6_LOCAL_BPF_PROG_MAX, align 4
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @SEG6_LOCAL_BPF, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = load i32, i32* @bpf_prog_policy, align 4
  %23 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %17, %struct.nlattr* %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

28:                                               ; preds = %2
  %29 = load i64, i64* @SEG6_LOCAL_BPF_PROG, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @SEG6_LOCAL_BPF_PROG_NAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

41:                                               ; preds = %33
  %42 = load i64, i64* @SEG6_LOCAL_BPF_PROG_NAME, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @nla_memdup(%struct.nlattr* %44, i32 %45)
  %47 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %48 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %51 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

58:                                               ; preds = %41
  %59 = load i64, i64* @SEG6_LOCAL_BPF_PROG, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_get_u32(%struct.nlattr* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BPF_PROG_TYPE_LWT_SEG6LOCAL, align 4
  %65 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %63, i32 %64)
  store %struct.bpf_prog* %65, %struct.bpf_prog** %8, align 8
  %66 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %67 = call i64 @IS_ERR(%struct.bpf_prog* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %71 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @kfree(i32 %73)
  %75 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %76 = call i32 @PTR_ERR(%struct.bpf_prog* %75)
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

77:                                               ; preds = %58
  %78 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %79 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %80 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.bpf_prog* %78, %struct.bpf_prog** %81, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %69, %55, %38, %26
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_memdup(%struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
