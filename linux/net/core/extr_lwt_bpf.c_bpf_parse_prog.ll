; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_parse_prog.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_parse_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.bpf_lwt_prog = type { %struct.bpf_prog*, i32 }
%struct.bpf_prog = type { i32 }

@LWT_BPF_PROG_MAX = common dso_local global i32 0, align 4
@bpf_prog_policy = common dso_local global i32 0, align 4
@LWT_BPF_PROG_FD = common dso_local global i64 0, align 8
@LWT_BPF_PROG_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.bpf_lwt_prog*, i32)* @bpf_parse_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_parse_prog(%struct.nlattr* %0, %struct.bpf_lwt_prog* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.bpf_lwt_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.bpf_lwt_prog* %1, %struct.bpf_lwt_prog** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @LWT_BPF_PROG_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @LWT_BPF_PROG_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = load i32, i32* @bpf_prog_policy, align 4
  %22 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32 %21, i32* null)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load i64, i64* @LWT_BPF_PROG_FD, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64, i64* @LWT_BPF_PROG_NAME, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

40:                                               ; preds = %32
  %41 = load i64, i64* @LWT_BPF_PROG_NAME, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @nla_memdup(%struct.nlattr* %43, i32 %44)
  %46 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %6, align 8
  %47 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %6, align 8
  %49 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

55:                                               ; preds = %40
  %56 = load i64, i64* @LWT_BPF_PROG_FD, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_u32(%struct.nlattr* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %60, i32 %61)
  store %struct.bpf_prog* %62, %struct.bpf_prog** %10, align 8
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %64 = call i64 @IS_ERR(%struct.bpf_prog* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %68 = call i32 @PTR_ERR(%struct.bpf_prog* %67)
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

69:                                               ; preds = %55
  %70 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %71 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %6, align 8
  %72 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %71, i32 0, i32 0
  store %struct.bpf_prog* %70, %struct.bpf_prog** %72, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %66, %52, %37, %25
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_memdup(%struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #2

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
