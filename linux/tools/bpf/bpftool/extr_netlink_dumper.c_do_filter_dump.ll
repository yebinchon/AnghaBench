; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_filter_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_filter_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmsg = type { i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@NET_START_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devname\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"(%u)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@NET_END_OBJECT_FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_filter_dump(%struct.tcmsg* %0, %struct.nlattr** %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.tcmsg*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcmsg* %0, %struct.tcmsg** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @TCA_OPTIONS, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %5
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @TCA_KIND, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @libbpf_nla_data(%struct.nlattr* %21)
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %17
  %26 = load i32, i32* @NET_START_OBJECT, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @NET_DUMP_STR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @NET_DUMP_UINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @NET_DUMP_STR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %38)
  %40 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %41 = load i64, i64* @TCA_OPTIONS, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @do_bpf_filter_dump(%struct.nlattr* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @NET_END_OBJECT_FINAL, align 4
  br label %46

46:                                               ; preds = %35, %17, %5
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @libbpf_nla_data(%struct.nlattr*) #1

declare dso_local i32 @NET_DUMP_STR(i8*, i8*, i8*) #1

declare dso_local i32 @NET_DUMP_UINT(i8*, i8*, i32) #1

declare dso_local i32 @do_bpf_filter_dump(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
