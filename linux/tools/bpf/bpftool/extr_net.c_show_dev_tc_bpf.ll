; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_show_dev_tc_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_show_dev_tc_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_devname_ifindex = type { i32, i32 }
%struct.bpf_filter_t = type { i8*, i32, i32 }
%struct.bpf_tcinfo_t = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i32 }

@dump_class_qdisc_nlmsg = common dso_local global i32 0, align 4
@dump_filter_nlmsg = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@TC_H_CLSACT = common dso_local global i32 0, align 4
@TC_H_MIN_INGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"clsact/ingress\00", align 1
@TC_H_MIN_EGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"clsact/egress\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ip_devname_ifindex*)* @show_dev_tc_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dev_tc_bpf(i32 %0, i32 %1, %struct.ip_devname_ifindex* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_devname_ifindex*, align 8
  %7 = alloca %struct.bpf_filter_t, align 8
  %8 = alloca %struct.bpf_tcinfo_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ip_devname_ifindex* %2, %struct.ip_devname_ifindex** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %12, align 8
  %13 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %19 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @dump_class_qdisc_nlmsg, align 4
  %22 = call i32 @libbpf_nl_get_class(i32 %16, i32 %17, i32 %20, i32 %21, %struct.bpf_tcinfo_t* %8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %129

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %31 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @dump_class_qdisc_nlmsg, align 4
  %34 = call i32 @libbpf_nl_get_qdisc(i32 %28, i32 %29, i32 %32, i32 %33, %struct.bpf_tcinfo_t* %8)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %129

38:                                               ; preds = %26
  %39 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %40 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %44 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %79, %38
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %64 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @dump_filter_nlmsg, align 4
  %74 = call i32 @libbpf_nl_get_filter(i32 %61, i32 %62, i32 %65, i32 %72, i32 %73, %struct.bpf_filter_t* %7)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %129

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %47

82:                                               ; preds = %47
  %83 = load i32, i32* @TC_H_ROOT, align 4
  store i32 %83, i32* %10, align 4
  %84 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %88 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @dump_filter_nlmsg, align 4
  %92 = call i32 @libbpf_nl_get_filter(i32 %85, i32 %86, i32 %89, i32 %90, i32 %91, %struct.bpf_filter_t* %7)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %129

96:                                               ; preds = %82
  %97 = load i32, i32* @TC_H_CLSACT, align 4
  %98 = load i32, i32* @TC_H_MIN_INGRESS, align 4
  %99 = call i32 @TC_H_MAKE(i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %104 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @dump_filter_nlmsg, align 4
  %108 = call i32 @libbpf_nl_get_filter(i32 %101, i32 %102, i32 %105, i32 %106, i32 %107, %struct.bpf_filter_t* %7)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %129

112:                                              ; preds = %96
  %113 = load i32, i32* @TC_H_CLSACT, align 4
  %114 = load i32, i32* @TC_H_MIN_EGRESS, align 4
  %115 = call i32 @TC_H_MAKE(i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = getelementptr inbounds %struct.bpf_filter_t, %struct.bpf_filter_t* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %116, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.ip_devname_ifindex*, %struct.ip_devname_ifindex** %6, align 8
  %120 = getelementptr inbounds %struct.ip_devname_ifindex, %struct.ip_devname_ifindex* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @dump_filter_nlmsg, align 4
  %124 = call i32 @libbpf_nl_get_filter(i32 %117, i32 %118, i32 %121, i32 %122, i32 %123, %struct.bpf_filter_t* %7)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  br label %129

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %127, %111, %95, %77, %37, %25
  %130 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %8, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = call i32 @free(%struct.TYPE_2__* %131)
  ret i32 0
}

declare dso_local i32 @libbpf_nl_get_class(i32, i32, i32, i32, %struct.bpf_tcinfo_t*) #1

declare dso_local i32 @libbpf_nl_get_qdisc(i32, i32, i32, i32, %struct.bpf_tcinfo_t*) #1

declare dso_local i32 @libbpf_nl_get_filter(i32, i32, i32, i32, i32, %struct.bpf_filter_t*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
