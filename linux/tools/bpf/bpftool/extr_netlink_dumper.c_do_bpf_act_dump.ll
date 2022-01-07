; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_act_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_bpf_act_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@LIBBPF_ERRNO__NLPARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"act\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %s [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*)* @do_bpf_act_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bpf_act_dump(%struct.nlattr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  %9 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.nlattr*, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %15 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %16 = call i64 @libbpf_nla_parse_nested(%struct.nlattr** %13, i32 %14, %struct.nlattr* %15, i32* null)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @LIBBPF_ERRNO__NLPARSE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

21:                                               ; preds = %1
  %22 = call i32 @NET_START_ARRAY(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @do_dump_one_act(%struct.nlattr* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %35, %23
  %41 = call i32 @NET_END_ARRAY(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %18
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @NET_START_ARRAY(i8*, i8*) #2

declare dso_local i32 @do_dump_one_act(%struct.nlattr*) #2

declare dso_local i32 @NET_END_ARRAY(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
