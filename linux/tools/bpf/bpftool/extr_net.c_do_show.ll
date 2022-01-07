; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_attach_info = type { i64 }
%struct.bpf_netdev_t = type { i32, i32, i32*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to open netlink sock\0A\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@NET_START_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@dump_link_nlmsg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"flow_dissector\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"id %u\00", align 1
@NET_END_OBJECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_attach_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_netdev_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = bitcast %struct.bpf_attach_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  store i32 -1, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = call i32 @net_parse_dev(i32* %4, i8*** %5)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %127

22:                                               ; preds = %17
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %22
  %30 = call i32 @query_flow_dissector(%struct.bpf_attach_info* %6)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %127

34:                                               ; preds = %29
  %35 = call i32 @libbpf_netlink_open(i32* %12)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %127

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* @json_output, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @json_wtr, align 4
  %51 = call i32 @jsonw_start_array(i32 %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* @NET_START_OBJECT, align 4
  %54 = call i32 @NET_START_ARRAY(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @dump_link_nlmsg, align 4
  %58 = call i32 @libbpf_nl_get_link(i32 %55, i32 %56, i32 %57, %struct.bpf_netdev_t* %11)
  store i32 %58, i32* %9, align 4
  %59 = call i32 @NET_END_ARRAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %52
  %63 = call i32 @NET_START_ARRAY(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %82, %62
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @show_dev_tc_bpf(i32 %70, i32 %71, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %85

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %64

85:                                               ; preds = %80, %64
  %86 = call i32 @NET_END_ARRAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %52
  %88 = call i32 @NET_START_ARRAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %89 = getelementptr inbounds %struct.bpf_attach_info, %struct.bpf_attach_info* %6, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.bpf_attach_info, %struct.bpf_attach_info* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @NET_DUMP_UINT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = call i32 @NET_END_ARRAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @NET_END_OBJECT, align 4
  %99 = load i64, i64* @json_output, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @json_wtr, align 4
  %103 = call i32 @jsonw_end_array(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i64, i64* @json_output, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @json_wtr, align 4
  %112 = call i32 @jsonw_null(i32 %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %9, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %116 = call i32 @libbpf_strerror(i32 %114, i8* %115, i32 256)
  %117 = load i32, i32* @stderr, align 4
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %113, %104
  %121 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %11, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @free(i32* %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %120, %38, %33, %21
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @net_parse_dev(i32*, i8***) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @query_flow_dissector(%struct.bpf_attach_info*) #2

declare dso_local i32 @libbpf_netlink_open(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @jsonw_start_array(i32) #2

declare dso_local i32 @NET_START_ARRAY(i8*, i8*) #2

declare dso_local i32 @libbpf_nl_get_link(i32, i32, i32, %struct.bpf_netdev_t*) #2

declare dso_local i32 @NET_END_ARRAY(i8*) #2

declare dso_local i32 @show_dev_tc_bpf(i32, i32, i32*) #2

declare dso_local i32 @NET_DUMP_UINT(i8*, i8*, i64) #2

declare dso_local i32 @jsonw_end_array(i32) #2

declare dso_local i32 @jsonw_null(i32) #2

declare dso_local i32 @libbpf_strerror(i32, i8*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
