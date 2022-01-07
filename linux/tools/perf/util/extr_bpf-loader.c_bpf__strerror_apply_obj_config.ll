; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__strerror_apply_obj_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__strerror_apply_obj_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot set event to BPF map in multi-thread tracing\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s (Hint: use -i to turn off inherit)\00", align 1
@emsg = common dso_local global i32 0, align 4
@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Can only put raw, hardware and BPF output event into a BPF map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf__strerror_apply_obj_config(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @bpf__strerror_head(i32 %7, i8* %8, i64 %9)
  %11 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM, align 4
  %12 = call i32 (i32, i8*, ...) @bpf__strerror_entry(i32 %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH, align 4
  %14 = load i32, i32* @emsg, align 4
  %15 = call i32 (i32, i8*, ...) @bpf__strerror_entry(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE, align 4
  %17 = call i32 (i32, i8*, ...) @bpf__strerror_entry(i32 %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @bpf__strerror_end(i8* %18, i64 %19)
  ret i32 0
}

declare dso_local i32 @bpf__strerror_head(i32, i8*, i64) #1

declare dso_local i32 @bpf__strerror_entry(i32, i8*, ...) #1

declare dso_local i32 @bpf__strerror_end(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
