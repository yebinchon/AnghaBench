; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_bpf_flow_dissect.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_bpf_flow_dissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_flow_dissector = type { %struct.bpf_flow_keys* }
%struct.bpf_flow_keys = type { i32, i32, i32, i32 }

@BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_F_PARSE_1ST_FRAG = common dso_local global i64 0, align 8
@BPF_FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL = common dso_local global i64 0, align 8
@BPF_FLOW_DISSECTOR_F_STOP_AT_ENCAP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_F_STOP_AT_ENCAP = common dso_local global i64 0, align 8
@u16 = common dso_local global i32 0, align 4
@BPF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_flow_dissect(%struct.bpf_prog* %0, %struct.bpf_flow_dissector* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.bpf_flow_dissector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_flow_keys*, align 8
  %14 = alloca i64, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %7, align 8
  store %struct.bpf_flow_dissector* %1, %struct.bpf_flow_dissector** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.bpf_flow_dissector*, %struct.bpf_flow_dissector** %8, align 8
  %16 = getelementptr inbounds %struct.bpf_flow_dissector, %struct.bpf_flow_dissector* %15, i32 0, i32 0
  %17 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %16, align 8
  store %struct.bpf_flow_keys* %17, %struct.bpf_flow_keys** %13, align 8
  %18 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %19 = call i32 @memset(%struct.bpf_flow_keys* %18, i32 0, i32 16)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %22 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %25 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %27 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %30 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @FLOW_DISSECTOR_F_PARSE_1ST_FRAG, align 8
  %34 = trunc i64 %33 to i32
  %35 = icmp ne i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUILD_BUG_ON(i32 %36)
  %38 = load i64, i64* @BPF_FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* @FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp ne i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUILD_BUG_ON(i32 %43)
  %45 = load i64, i64* @BPF_FLOW_DISSECTOR_F_STOP_AT_ENCAP, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* @FLOW_DISSECTOR_F_STOP_AT_ENCAP, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUILD_BUG_ON(i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %54 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @preempt_disable()
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %57 = load %struct.bpf_flow_dissector*, %struct.bpf_flow_dissector** %8, align 8
  %58 = call i64 @BPF_PROG_RUN(%struct.bpf_prog* %56, %struct.bpf_flow_dissector* %57)
  store i64 %58, i64* %14, align 8
  %59 = call i32 (...) @preempt_enable()
  %60 = load i32, i32* @u16, align 4
  %61 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %62 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @clamp_t(i32 %60, i32 %63, i32 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %69 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @u16, align 4
  %71 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %72 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %75 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @clamp_t(i32 %70, i32 %73, i32 %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %13, align 8
  %81 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* @BPF_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  ret i32 %85
}

declare dso_local i32 @memset(%struct.bpf_flow_keys*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @BPF_PROG_RUN(%struct.bpf_prog*, %struct.bpf_flow_dissector*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
