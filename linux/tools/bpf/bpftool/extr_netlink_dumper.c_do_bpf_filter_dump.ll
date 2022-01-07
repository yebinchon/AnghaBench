; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_filter_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_filter_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_BPF_MAX = common dso_local global i32 0, align 4
@LIBBPF_ERRNO__NLPARSE = common dso_local global i32 0, align 4
@TCA_BPF_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@TCA_BPF_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" id %u\00", align 1
@TCA_BPF_ACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*)* @do_bpf_filter_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bpf_filter_dump(%struct.nlattr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  %8 = load i32, i32* @TCA_BPF_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca %struct.nlattr*, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @TCA_BPF_MAX, align 4
  %14 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %15 = call i64 @libbpf_nla_parse_nested(%struct.nlattr** %12, i32 %13, %struct.nlattr* %14, i32* null)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @LIBBPF_ERRNO__NLPARSE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load i64, i64* @TCA_BPF_NAME, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i64, i64* @TCA_BPF_NAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @libbpf_nla_getattr_str(%struct.nlattr* %28)
  %30 = call i32 @NET_DUMP_STR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i64, i64* @TCA_BPF_ID, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i64, i64* @TCA_BPF_ID, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i32 @libbpf_nla_getattr_u32(%struct.nlattr* %39)
  %41 = call i32 @NET_DUMP_UINT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i64, i64* @TCA_BPF_ACT, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64, i64* @TCA_BPF_ACT, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @do_bpf_act_dump(%struct.nlattr* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %42
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %54, %17
  %59 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @NET_DUMP_STR(i8*, i8*, i32) #2

declare dso_local i32 @libbpf_nla_getattr_str(%struct.nlattr*) #2

declare dso_local i32 @NET_DUMP_UINT(i8*, i8*, i32) #2

declare dso_local i32 @libbpf_nla_getattr_u32(%struct.nlattr*) #2

declare dso_local i32 @do_bpf_act_dump(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
