; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_write_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_write_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@__const.write_state.states = private unnamed_addr constant [9 x i8] c"SDTtZXxW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i32)* @write_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_state(%struct.trace_seq* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [9 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast [9 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.write_state.states, i32 0, i32 0), i64 9, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %33

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %25 = call i32 @trace_seq_putc(%struct.trace_seq* %24, i8 signext 124)
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, i32* %6, align 4
  %27 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @trace_seq_putc(%struct.trace_seq* %27, i8 signext %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %41 = call i32 @trace_seq_putc(%struct.trace_seq* %40, i8 signext 82)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
