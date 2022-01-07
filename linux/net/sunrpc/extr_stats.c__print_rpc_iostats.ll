; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__print_rpc_iostats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__print_rpc_iostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rpc_iostats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_procinfo = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%lu %lu %lu %llu %llu %llu %llu %llu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rpc_iostats*, i32, %struct.rpc_procinfo*)* @_print_rpc_iostats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_print_rpc_iostats(%struct.seq_file* %0, %struct.rpc_iostats* %1, i32 %2, %struct.rpc_procinfo* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.rpc_iostats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_procinfo*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.rpc_iostats* %1, %struct.rpc_iostats** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rpc_procinfo* %3, %struct.rpc_procinfo** %8, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %8, align 8
  %12 = call i32 @_print_name(%struct.seq_file* %9, i32 %10, %struct.rpc_procinfo* %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %18 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %21 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %24 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ktime_to_ms(i32 %31)
  %33 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ktime_to_ms(i32 %35)
  %37 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ktime_to_ms(i32 %39)
  %41 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %42 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %32, i32 %36, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @_print_name(%struct.seq_file*, i32, %struct.rpc_procinfo*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_to_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
