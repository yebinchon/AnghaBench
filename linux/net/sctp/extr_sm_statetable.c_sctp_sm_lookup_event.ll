; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statetable.c_sctp_sm_lookup_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statetable.c_sctp_sm_lookup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sm_table_entry = type { i32 }
%struct.net = type { i32 }
%union.sctp_subtype = type { i32 }

@SCTP_EVENT_TIMEOUT_MAX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@timeout_event_table = common dso_local global i32 0, align 4
@SCTP_EVENT_OTHER_MAX = common dso_local global i32 0, align 4
@other = common dso_local global i32 0, align 4
@other_event_table = common dso_local global i32 0, align 4
@SCTP_EVENT_PRIMITIVE_MAX = common dso_local global i32 0, align 4
@primitive = common dso_local global i32 0, align 4
@primitive_event_table = common dso_local global i32 0, align 4
@bug = common dso_local global %struct.sctp_sm_table_entry zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_sm_table_entry* @sctp_sm_lookup_event(%struct.net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_sm_table_entry*, align 8
  %6 = alloca %union.sctp_subtype, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %6, i32 0, i32 0
  store i32 %3, i32* %10, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %33 [
    i32 131, label %12
    i32 128, label %18
    i32 130, label %23
    i32 129, label %28
  ]

12:                                               ; preds = %4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = bitcast %union.sctp_subtype* %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.sctp_sm_table_entry* @sctp_chunk_event_lookup(%struct.net* %13, i32 %15, i32 %16)
  store %struct.sctp_sm_table_entry* %17, %struct.sctp_sm_table_entry** %5, align 8
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* @SCTP_EVENT_TIMEOUT_MAX, align 4
  %20 = load i32, i32* @timeout, align 4
  %21 = load i32, i32* @timeout_event_table, align 4
  %22 = call %struct.sctp_sm_table_entry* @DO_LOOKUP(i32 %19, i32 %20, i32 %21)
  store %struct.sctp_sm_table_entry* %22, %struct.sctp_sm_table_entry** %5, align 8
  br label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @SCTP_EVENT_OTHER_MAX, align 4
  %25 = load i32, i32* @other, align 4
  %26 = load i32, i32* @other_event_table, align 4
  %27 = call %struct.sctp_sm_table_entry* @DO_LOOKUP(i32 %24, i32 %25, i32 %26)
  store %struct.sctp_sm_table_entry* %27, %struct.sctp_sm_table_entry** %5, align 8
  br label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @SCTP_EVENT_PRIMITIVE_MAX, align 4
  %30 = load i32, i32* @primitive, align 4
  %31 = load i32, i32* @primitive_event_table, align 4
  %32 = call %struct.sctp_sm_table_entry* @DO_LOOKUP(i32 %29, i32 %30, i32 %31)
  store %struct.sctp_sm_table_entry* %32, %struct.sctp_sm_table_entry** %5, align 8
  br label %34

33:                                               ; preds = %4
  store %struct.sctp_sm_table_entry* @bug, %struct.sctp_sm_table_entry** %5, align 8
  br label %34

34:                                               ; preds = %33, %28, %23, %18, %12
  %35 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %5, align 8
  ret %struct.sctp_sm_table_entry* %35
}

declare dso_local %struct.sctp_sm_table_entry* @sctp_chunk_event_lookup(%struct.net*, i32, i32) #1

declare dso_local %struct.sctp_sm_table_entry* @DO_LOOKUP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
