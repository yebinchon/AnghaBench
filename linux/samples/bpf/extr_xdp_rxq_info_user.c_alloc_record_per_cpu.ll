; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_record_per_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_alloc_record_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datarec = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Mem alloc error (nr_cpus:%u)\0A\00", align 1
@EXIT_FAIL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.datarec* ()* @alloc_record_per_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.datarec* @alloc_record_per_cpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.datarec*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = zext i32 %5 to i64
  %7 = mul i64 4, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.datarec* @malloc(i64 %8)
  store %struct.datarec* %9, %struct.datarec** %2, align 8
  %10 = load %struct.datarec*, %struct.datarec** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @memset(%struct.datarec* %10, i32 0, i64 %11)
  %13 = load %struct.datarec*, %struct.datarec** %2, align 8
  %14 = icmp ne %struct.datarec* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EXIT_FAIL_MEM, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %0
  %22 = load %struct.datarec*, %struct.datarec** %2, align 8
  ret %struct.datarec* %22
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

declare dso_local %struct.datarec* @malloc(i64) #1

declare dso_local i32 @memset(%struct.datarec*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
