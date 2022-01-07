; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_bpf_emit_ksymbols.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_bpf_emit_ksymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.bpf_prog** }

@PERF_BPF_EVENT_PROG_UNLOAD = common dso_local global i32 0, align 4
@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@PERF_RECORD_KSYMBOL_TYPE_BPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*, i32)* @perf_event_bpf_emit_ksymbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_bpf_emit_ksymbols(%struct.bpf_prog* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PERF_BPF_EVENT_PROG_UNLOAD, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @KSYM_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %26 = call i32 @bpf_get_prog_name(%struct.bpf_prog* %25, i8* %17)
  %27 = load i32, i32* @PERF_RECORD_KSYMBOL_TYPE_BPF, align 4
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @perf_event_ksymbol(i32 %27, i32 %31, i32 %34, i32 %35, i8* %17)
  br label %72

37:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %38
  %47 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.bpf_prog**, %struct.bpf_prog*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bpf_prog*, %struct.bpf_prog** %51, i64 %53
  %55 = load %struct.bpf_prog*, %struct.bpf_prog** %54, align 8
  store %struct.bpf_prog* %55, %struct.bpf_prog** %9, align 8
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %57 = call i32 @bpf_get_prog_name(%struct.bpf_prog* %56, i8* %17)
  %58 = load i32, i32* @PERF_RECORD_KSYMBOL_TYPE_BPF, align 4
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %60 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %64 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @perf_event_ksymbol(i32 %58, i32 %62, i32 %65, i32 %66, i8* %17)
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %38

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71, %24
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_get_prog_name(%struct.bpf_prog*, i8*) #2

declare dso_local i32 @perf_event_ksymbol(i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
