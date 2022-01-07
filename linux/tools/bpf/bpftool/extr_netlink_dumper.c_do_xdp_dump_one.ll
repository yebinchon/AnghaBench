; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_xdp_dump_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_xdp_dump_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@IFLA_XDP_MAX = common dso_local global i32 0, align 4
@IFLA_XDP_ATTACHED = common dso_local global i64 0, align 8
@XDP_ATTACHED_NONE = common dso_local global i8 0, align 1
@NET_START_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"devname\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@XDP_ATTACHED_MULTI = common dso_local global i8 0, align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"multi_attachments\00", align 1
@IFLA_XDP_SKB_PROG_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@IFLA_XDP_DRV_PROG_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@IFLA_XDP_HW_PROG_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"offload\00", align 1
@XDP_ATTACHED_DRV = common dso_local global i8 0, align 1
@IFLA_XDP_PROG_ID = common dso_local global i32 0, align 4
@XDP_ATTACHED_SKB = common dso_local global i8 0, align 1
@XDP_ATTACHED_HW = common dso_local global i8 0, align 1
@NET_END_OBJECT_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*)* @do_xdp_dump_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_xdp_dump_one(%struct.nlattr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @IFLA_XDP_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @IFLA_XDP_MAX, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %19 = call i64 @libbpf_nla_parse_nested(%struct.nlattr** %16, i32 %17, %struct.nlattr* %18, i32* null)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load i64, i64* @IFLA_XDP_ATTACHED, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %107

28:                                               ; preds = %22
  %29 = load i64, i64* @IFLA_XDP_ATTACHED, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call zeroext i8 @libbpf_nla_getattr_u8(%struct.nlattr* %31)
  store i8 %32, i8* %10, align 1
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @XDP_ATTACHED_NONE, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %107

39:                                               ; preds = %28
  %40 = load i32, i32* @NET_START_OBJECT, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @NET_DUMP_STR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @NET_DUMP_UINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @XDP_ATTACHED_MULTI, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %46
  %55 = load i64, i64* @json_output, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @json_wtr, align 4
  %59 = call i32 @jsonw_name(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @json_wtr, align 4
  %61 = call i32 @jsonw_start_array(i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* @IFLA_XDP_SKB_PROG_ID, align 4
  %64 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %65 = load i32, i32* @IFLA_XDP_DRV_PROG_ID, align 4
  %66 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %67 = load i32, i32* @IFLA_XDP_HW_PROG_ID, align 4
  %68 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %69 = load i64, i64* @json_output, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @json_wtr, align 4
  %73 = call i32 @jsonw_end_array(i32 %72)
  br label %74

74:                                               ; preds = %71, %62
  br label %105

75:                                               ; preds = %46
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @XDP_ATTACHED_DRV, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @IFLA_XDP_PROG_ID, align 4
  %83 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %104

84:                                               ; preds = %75
  %85 = load i8, i8* %10, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @XDP_ATTACHED_SKB, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @IFLA_XDP_PROG_ID, align 4
  %92 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %103

93:                                               ; preds = %84
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @XDP_ATTACHED_HW, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @IFLA_XDP_PROG_ID, align 4
  %101 = call i32 @xdp_dump_prog_id(%struct.nlattr** %16, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %90
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i32, i32* @NET_END_OBJECT_FINAL, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %107

107:                                              ; preds = %105, %38, %27, %21
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local zeroext i8 @libbpf_nla_getattr_u8(%struct.nlattr*) #2

declare dso_local i32 @NET_DUMP_STR(i8*, i8*, i8*) #2

declare dso_local i32 @NET_DUMP_UINT(i8*, i8*, i32) #2

declare dso_local i32 @jsonw_name(i32, i8*) #2

declare dso_local i32 @jsonw_start_array(i32) #2

declare dso_local i32 @xdp_dump_prog_id(%struct.nlattr**, i32, i8*, i32) #2

declare dso_local i32 @jsonw_end_array(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
