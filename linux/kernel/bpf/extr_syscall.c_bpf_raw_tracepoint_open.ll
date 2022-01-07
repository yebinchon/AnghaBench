; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_raw_tracepoint_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_raw_tracepoint_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_raw_tracepoint = type { %struct.bpf_raw_event_map*, %struct.bpf_prog* }
%struct.bpf_raw_event_map = type { i32 }
%struct.bpf_prog = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i64 0, align 8
@BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bpf-raw-tracepoint\00", align 1
@bpf_raw_tp_fops = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_raw_tracepoint_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_raw_tracepoint_open(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_raw_tracepoint*, align 8
  %5 = alloca %struct.bpf_raw_event_map*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %11 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %12 = bitcast %union.bpf_attr* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @u64_to_user_ptr(i32 %14)
  %16 = call i64 @strncpy_from_user(i8* %10, i32 %15, i32 127)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 127
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %24 = call %struct.bpf_raw_event_map* @bpf_get_raw_tracepoint(i8* %23)
  store %struct.bpf_raw_event_map* %24, %struct.bpf_raw_event_map** %5, align 8
  %25 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %5, align 8
  %26 = icmp ne %struct.bpf_raw_event_map* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %105

30:                                               ; preds = %21
  %31 = load i32, i32* @GFP_USER, align 4
  %32 = call %struct.bpf_raw_tracepoint* @kzalloc(i32 16, i32 %31)
  store %struct.bpf_raw_tracepoint* %32, %struct.bpf_raw_tracepoint** %4, align 8
  %33 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %34 = icmp ne %struct.bpf_raw_tracepoint* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %101

38:                                               ; preds = %30
  %39 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %5, align 8
  %40 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %41 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %40, i32 0, i32 0
  store %struct.bpf_raw_event_map* %39, %struct.bpf_raw_event_map** %41, align 8
  %42 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %43 = bitcast %union.bpf_attr* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.bpf_prog* @bpf_prog_get(i32 %45)
  store %struct.bpf_prog* %46, %struct.bpf_prog** %6, align 8
  %47 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %48 = call i64 @IS_ERR(%struct.bpf_prog* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %52 = call i32 @PTR_ERR(%struct.bpf_prog* %51)
  store i32 %52, i32* %9, align 4
  br label %98

53:                                               ; preds = %38
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %55 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %61 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %95

68:                                               ; preds = %59, %53
  %69 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %70 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %69, i32 0, i32 0
  %71 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %70, align 8
  %72 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %73 = call i32 @bpf_probe_register(%struct.bpf_raw_event_map* %71, %struct.bpf_prog* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %95

77:                                               ; preds = %68
  %78 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %79 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %79, i32 0, i32 1
  store %struct.bpf_prog* %78, %struct.bpf_prog** %80, align 8
  %81 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %82 = load i32, i32* @O_CLOEXEC, align 4
  %83 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* @bpf_raw_tp_fops, %struct.bpf_raw_tracepoint* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_raw_tracepoint, %struct.bpf_raw_tracepoint* %87, i32 0, i32 0
  %89 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %88, align 8
  %90 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %91 = call i32 @bpf_probe_unregister(%struct.bpf_raw_event_map* %89, %struct.bpf_prog* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %9, align 4
  br label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %105

95:                                               ; preds = %86, %76, %65
  %96 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %97 = call i32 @bpf_prog_put(%struct.bpf_prog* %96)
  br label %98

98:                                               ; preds = %95, %50
  %99 = load %struct.bpf_raw_tracepoint*, %struct.bpf_raw_tracepoint** %4, align 8
  %100 = call i32 @kfree(%struct.bpf_raw_tracepoint* %99)
  br label %101

101:                                              ; preds = %98, %35
  %102 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %5, align 8
  %103 = call i32 @bpf_put_raw_tracepoint(%struct.bpf_raw_event_map* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %93, %27, %18
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @strncpy_from_user(i8*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.bpf_raw_event_map* @bpf_get_raw_tracepoint(i8*) #1

declare dso_local %struct.bpf_raw_tracepoint* @kzalloc(i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_probe_register(%struct.bpf_raw_event_map*, %struct.bpf_prog*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.bpf_raw_tracepoint*, i32) #1

declare dso_local i32 @bpf_probe_unregister(%struct.bpf_raw_event_map*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @kfree(%struct.bpf_raw_tracepoint*) #1

declare dso_local i32 @bpf_put_raw_tracepoint(%struct.bpf_raw_event_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
