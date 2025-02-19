; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_addr_filter__entire_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_addr_filter__entire_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_filter = type { i32, i32 }
%struct.sym_args = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@find_entire_kern_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse /proc/kallsyms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addr_filter*)* @addr_filter__entire_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_filter__entire_kernel(%struct.addr_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addr_filter*, align 8
  %4 = alloca %struct.sym_args, align 4
  %5 = alloca i32, align 4
  store %struct.addr_filter* %0, %struct.addr_filter** %3, align 8
  %6 = bitcast %struct.sym_args* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = load i32, i32* @find_entire_kern_cb, align 4
  %8 = call i32 @kallsyms__parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sym_args* %4, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %22 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %26 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kallsyms__parse(i8*, %struct.sym_args*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
