; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_perf_event_data = type { i32, i32, i32 }
%struct.bpf_perf_event_value = type { i32, i32 }
%struct.key_t = type { i8*, i8*, i32 }

@__const.bpf_prog1.time_fmt1 = private unnamed_addr constant [39 x i8] c"Time Enabled: %llu, Time Running: %llu\00", align 16
@__const.bpf_prog1.time_fmt2 = private unnamed_addr constant [29 x i8] c"Get Time Failed, ErrCode: %d\00", align 16
@__const.bpf_prog1.addr_fmt = private unnamed_addr constant [32 x i8] c"Address recorded on event: %llx\00", align 16
@__const.bpf_prog1.fmt = private unnamed_addr constant [27 x i8] c"CPU-%d period %lld ip %llx\00", align 16
@stackmap = common dso_local global i32 0, align 4
@KERN_STACKID_FLAGS = common dso_local global i32 0, align 4
@USER_STACKID_FLAGS = common dso_local global i32 0, align 4
@counts = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.bpf_perf_event_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_perf_event_data*, align 8
  %4 = alloca [39 x i8], align 16
  %5 = alloca [29 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [27 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_perf_event_value, align 4
  %10 = alloca %struct.key_t, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_perf_event_data* %0, %struct.bpf_perf_event_data** %3, align 8
  %14 = bitcast [39 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.bpf_prog1.time_fmt1, i32 0, i32 0), i64 39, i1 false)
  %15 = bitcast [29 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.bpf_prog1.time_fmt2, i32 0, i32 0), i64 29, i1 false)
  %16 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.bpf_prog1.addr_fmt, i32 0, i32 0), i64 32, i1 false)
  %17 = bitcast [27 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.bpf_prog1.fmt, i32 0, i32 0), i64 27, i1 false)
  %18 = call i32 (...) @bpf_get_smp_processor_id()
  store i32 %18, i32* %8, align 4
  store i32 1, i32* %12, align 4
  %19 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_perf_event_data, %struct.bpf_perf_event_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 10000
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.key_t, %struct.key_t* %10, i32 0, i32 2
  %26 = call i32 @bpf_get_current_comm(i32* %25, i32 4)
  %27 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %28 = load i32, i32* @KERN_STACKID_FLAGS, align 4
  %29 = call i8* @bpf_get_stackid(%struct.bpf_perf_event_data* %27, i32* @stackmap, i32 %28)
  %30 = getelementptr inbounds %struct.key_t, %struct.key_t* %10, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %32 = load i32, i32* @USER_STACKID_FLAGS, align 4
  %33 = call i8* @bpf_get_stackid(%struct.bpf_perf_event_data* %31, i32* @stackmap, i32 %32)
  %34 = getelementptr inbounds %struct.key_t, %struct.key_t* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.key_t, %struct.key_t* %10, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.key_t, %struct.key_t* %10, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_perf_event_data, %struct.bpf_perf_event_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %51 = getelementptr inbounds %struct.bpf_perf_event_data, %struct.bpf_perf_event_data* %50, i32 0, i32 2
  %52 = call i32 @PT_REGS_IP(i32* %51)
  %53 = call i32 (i8*, i32, i32, ...) @bpf_trace_printk(i8* %45, i32 27, i32 %46, i32 %49, i32 %52)
  store i32 0, i32* %2, align 4
  br label %94

54:                                               ; preds = %39, %24
  %55 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %56 = bitcast %struct.bpf_perf_event_value* %9 to i8*
  %57 = call i32 @bpf_perf_prog_read_value(%struct.bpf_perf_event_data* %55, i8* %56, i32 8)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds [39 x i8], [39 x i8]* %4, i64 0, i64 0
  %62 = getelementptr inbounds %struct.bpf_perf_event_value, %struct.bpf_perf_event_value* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.bpf_perf_event_value, %struct.bpf_perf_event_value* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, i32, ...) @bpf_trace_printk(i8* %61, i32 39, i32 %63, i32 %65)
  br label %71

67:                                               ; preds = %54
  %68 = getelementptr inbounds [29 x i8], [29 x i8]* %5, i64 0, i64 0
  %69 = load i32, i32* %13, align 4
  %70 = call i32 (i8*, i32, i32, ...) @bpf_trace_printk(i8* %68, i32 29, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %73 = getelementptr inbounds %struct.bpf_perf_event_data, %struct.bpf_perf_event_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %78 = load %struct.bpf_perf_event_data*, %struct.bpf_perf_event_data** %3, align 8
  %79 = getelementptr inbounds %struct.bpf_perf_event_data, %struct.bpf_perf_event_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i32, ...) @bpf_trace_printk(i8* %77, i32 32, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = call i32* @bpf_map_lookup_elem(i32* @counts, %struct.key_t* %10)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @BPF_NOEXIST, align 4
  %92 = call i32 @bpf_map_update_elem(i32* @counts, %struct.key_t* %10, i32* %12, i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %44, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_get_smp_processor_id(...) #2

declare dso_local i32 @bpf_get_current_comm(i32*, i32) #2

declare dso_local i8* @bpf_get_stackid(%struct.bpf_perf_event_data*, i32*, i32) #2

declare dso_local i32 @bpf_trace_printk(i8*, i32, i32, ...) #2

declare dso_local i32 @PT_REGS_IP(i32*) #2

declare dso_local i32 @bpf_perf_prog_read_value(%struct.bpf_perf_event_data*, i8*, i32) #2

declare dso_local i32* @bpf_map_lookup_elem(i32*, %struct.key_t*) #2

declare dso_local i32 @bpf_map_update_elem(i32*, %struct.key_t*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
