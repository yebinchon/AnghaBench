; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statetable.c_sctp_chunk_event_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statetable.c_sctp_chunk_event_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sm_table_entry = type { i32 }
%struct.net = type { i32 }

@SCTP_STATE_MAX = common dso_local global i32 0, align 4
@bug = common dso_local global %struct.sctp_sm_table_entry zeroinitializer, align 4
@SCTP_CID_I_DATA = common dso_local global i32 0, align 4
@SCTP_CID_DATA = common dso_local global i32 0, align 4
@SCTP_CID_BASE_MAX = common dso_local global i32 0, align 4
@chunk_event_table = common dso_local global %struct.sctp_sm_table_entry** null, align 8
@prsctp_chunk_event_table = common dso_local global %struct.sctp_sm_table_entry** null, align 8
@addip_chunk_event_table = common dso_local global %struct.sctp_sm_table_entry** null, align 8
@reconf_chunk_event_table = common dso_local global %struct.sctp_sm_table_entry** null, align 8
@auth_chunk_event_table = common dso_local global %struct.sctp_sm_table_entry** null, align 8
@chunk_event_table_unknown = common dso_local global %struct.sctp_sm_table_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_sm_table_entry* (%struct.net*, i32, i32)* @sctp_chunk_event_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_sm_table_entry* @sctp_chunk_event_lookup(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_sm_table_entry*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SCTP_STATE_MAX, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.sctp_sm_table_entry* @bug, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SCTP_CID_I_DATA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @SCTP_CID_DATA, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SCTP_CID_BASE_MAX, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @chunk_event_table, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %23, i64 %25
  %27 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %27, i64 %29
  store %struct.sctp_sm_table_entry* %30, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %68 [
    i32 130, label %33
    i32 129, label %33
    i32 133, label %40
    i32 132, label %47
    i32 128, label %54
    i32 131, label %61
  ]

33:                                               ; preds = %31, %31
  %34 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @prsctp_chunk_event_table, align 8
  %35 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %34, i64 0
  %36 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %36, i64 %38
  store %struct.sctp_sm_table_entry* %39, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

40:                                               ; preds = %31
  %41 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @addip_chunk_event_table, align 8
  %42 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %41, i64 0
  %43 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %43, i64 %45
  store %struct.sctp_sm_table_entry* %46, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

47:                                               ; preds = %31
  %48 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @addip_chunk_event_table, align 8
  %49 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %48, i64 1
  %50 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %50, i64 %52
  store %struct.sctp_sm_table_entry* %53, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

54:                                               ; preds = %31
  %55 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @reconf_chunk_event_table, align 8
  %56 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %55, i64 0
  %57 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %57, i64 %59
  store %struct.sctp_sm_table_entry* %60, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

61:                                               ; preds = %31
  %62 = load %struct.sctp_sm_table_entry**, %struct.sctp_sm_table_entry*** @auth_chunk_event_table, align 8
  %63 = getelementptr inbounds %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %62, i64 0
  %64 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %64, i64 %66
  store %struct.sctp_sm_table_entry* %67, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

68:                                               ; preds = %31
  %69 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** @chunk_event_table_unknown, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %69, i64 %71
  store %struct.sctp_sm_table_entry* %72, %struct.sctp_sm_table_entry** %4, align 8
  br label %73

73:                                               ; preds = %68, %61, %54, %47, %40, %33, %22, %11
  %74 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %4, align 8
  ret %struct.sctp_sm_table_entry* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
