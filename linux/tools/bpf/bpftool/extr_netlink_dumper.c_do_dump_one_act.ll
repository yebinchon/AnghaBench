; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_dump_one_act.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_dump_one_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@LIBBPF_ERRNO__NLPARSE = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@TCA_ACT_OPTIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*)* @do_dump_one_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dump_one_act(%struct.nlattr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  %7 = load i32, i32* @TCA_ACT_MAX, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca %struct.nlattr*, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* @TCA_ACT_MAX, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %18 = call i64 @libbpf_nla_parse_nested(%struct.nlattr** %11, i32 %16, %struct.nlattr* %17, i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @LIBBPF_ERRNO__NLPARSE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

23:                                               ; preds = %15
  %24 = load i64, i64* @TCA_ACT_KIND, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i64, i64* @TCA_ACT_KIND, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @libbpf_nla_data(%struct.nlattr* %31)
  %33 = call i64 @strcmp(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i64, i64* @TCA_ACT_OPTIONS, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @do_bpf_dump_one_act(%struct.nlattr* %38)
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

40:                                               ; preds = %28, %23
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %35, %20, %14
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @libbpf_nla_data(%struct.nlattr*) #2

declare dso_local i32 @do_bpf_dump_one_act(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
