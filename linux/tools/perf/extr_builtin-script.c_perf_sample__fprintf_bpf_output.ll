; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_bpf_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_bpf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_data = type { i32, i32, i64, i64, i32 }
%struct.perf_sample = type { i32, i64 }

@__const.perf_sample__fprintf_bpf_output.printer_data = private unnamed_addr constant %struct.printer_data { i32 0, i32 0, i64 1, i64 0, i32 0 }, align 8
@sample__fprintf_bpf_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%17s \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"BPF string:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, i32*)* @perf_sample__fprintf_bpf_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_bpf_output(%struct.perf_sample* %0, i32* %1) #0 {
  %3 = alloca %struct.perf_sample*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.printer_data, align 8
  %7 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %9 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = bitcast %struct.printer_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.printer_data* @__const.perf_sample__fprintf_bpf_output.printer_data to i8*), i64 32, i1 false)
  %12 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @sample__fprintf_bpf_output, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @binary__fprintf(i64 %14, i32 %15, i32 8, i32 %16, %struct.printer_data* %6, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %6, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %6, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i64 @fprintf(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %22, %2
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @binary__fprintf(i64, i32, i32, i32, %struct.printer_data*, i32*) #2

declare dso_local i64 @fprintf(i32*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
