; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__print_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__print_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rpc_procinfo = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"\09%12s: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09        NULL: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09%12u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, %struct.rpc_procinfo*)* @_print_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_print_name(%struct.seq_file* %0, i32 %1, %struct.rpc_procinfo* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_procinfo*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rpc_procinfo* %2, %struct.rpc_procinfo** %6, align 8
  %7 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %7, i64 %9
  %11 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %16, i64 %18
  %20 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
