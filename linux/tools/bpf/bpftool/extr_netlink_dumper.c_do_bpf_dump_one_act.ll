; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_dump_one_act.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_dump_one_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_ACT_BPF_MAX = common dso_local global i32 0, align 4
@LIBBPF_ERRNO__NLPARSE = common dso_local global i32 0, align 4
@TCA_ACT_BPF_PARMS = common dso_local global i64 0, align 8
@NET_START_OBJECT_NESTED2 = common dso_local global i32 0, align 4
@TCA_ACT_BPF_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TCA_ACT_BPF_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" id %u\00", align 1
@NET_END_OBJECT_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*)* @do_bpf_dump_one_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bpf_dump_one_act(%struct.nlattr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  %7 = load i32, i32* @TCA_ACT_BPF_MAX, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca %struct.nlattr*, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @TCA_ACT_BPF_MAX, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %14 = call i64 @libbpf_nla_parse_nested(%struct.nlattr** %11, i32 %12, %struct.nlattr* %13, i32* null)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @LIBBPF_ERRNO__NLPARSE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load i64, i64* @TCA_ACT_BPF_PARMS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @LIBBPF_ERRNO__NLPARSE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load i32, i32* @NET_START_OBJECT_NESTED2, align 4
  %29 = load i64, i64* @TCA_ACT_BPF_NAME, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* @TCA_ACT_BPF_NAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @libbpf_nla_getattr_str(%struct.nlattr* %36)
  %38 = call i32 @NET_DUMP_STR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i64, i64* @TCA_ACT_BPF_ID, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* @TCA_ACT_BPF_ID, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @libbpf_nla_getattr_u32(%struct.nlattr* %47)
  %49 = call i32 @NET_DUMP_UINT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @NET_END_OBJECT_NESTED, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %24, %16
  %53 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @NET_DUMP_STR(i8*, i8*, i32) #2

declare dso_local i32 @libbpf_nla_getattr_str(%struct.nlattr*) #2

declare dso_local i32 @NET_DUMP_UINT(i8*, i8*, i32) #2

declare dso_local i32 @libbpf_nla_getattr_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
