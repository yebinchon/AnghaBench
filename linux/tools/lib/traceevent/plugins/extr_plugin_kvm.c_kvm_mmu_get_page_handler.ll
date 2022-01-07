; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_mmu_get_page_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_mmu_get_page_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"existing\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gfn\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"sp gfn %llx \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @kvm_mmu_get_page_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mmu_get_page_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %12 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %13 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %14 = call i64 @tep_get_field_val(%struct.trace_seq* %11, %struct.tep_event* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.tep_record* %13, i64* %10, i32 1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %25 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %26 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %27 = call i64 @tep_get_field_val(%struct.trace_seq* %24, %struct.tep_event* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.tep_record* %26, i64* %10, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %32)
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %36 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @kvm_mmu_print_role(%struct.trace_seq* %34, %struct.tep_record* %35, %struct.tep_event* %36, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %29, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @kvm_mmu_print_role(%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
