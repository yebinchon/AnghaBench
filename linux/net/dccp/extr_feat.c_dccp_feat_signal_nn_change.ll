; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_signal_nn_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_signal_nn_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.list_head = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.dccp_feat_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.list_head }

@DCCP_OPEN = common dso_local global i64 0, align 8
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@FEAT_NN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Clobbering existing NN entry %llu -> %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_signal_nn_change(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.dccp_feat_entry*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.TYPE_7__* @dccp_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.list_head* %13, %struct.list_head** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DCCP_OPEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DCCP_PARTOPEN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %69

28:                                               ; preds = %21, %3
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @dccp_feat_type(i32 %29)
  %31 = load i64, i64* @FEAT_NN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @dccp_feat_is_valid_nn_val(i32 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @dccp_feat_nn_get(%struct.sock* %43, i32 %44)
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load %struct.list_head*, %struct.list_head** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head* %49, i32 %50, i32 1)
  store %struct.dccp_feat_entry* %51, %struct.dccp_feat_entry** %10, align 8
  %52 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %53 = icmp ne %struct.dccp_feat_entry* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %56 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %62 = call i32 @dccp_feat_list_pop(%struct.dccp_feat_entry* %61)
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = call i32 @inet_csk_schedule_ack(%struct.sock* %64)
  %66 = load %struct.list_head*, %struct.list_head** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dccp_feat_push_change(%struct.list_head* %66, i32 %67, i32 1, i32 0, %struct.TYPE_6__* %9)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %47, %38, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_7__* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_feat_type(i32) #1

declare dso_local i32 @dccp_feat_is_valid_nn_val(i32, i64) #1

declare dso_local i64 @dccp_feat_nn_get(%struct.sock*, i32) #1

declare dso_local %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head*, i32, i32) #1

declare dso_local i32 @dccp_pr_debug(i8*, i64, i64) #1

declare dso_local i32 @dccp_feat_list_pop(%struct.dccp_feat_entry*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i32 @dccp_feat_push_change(%struct.list_head*, i32, i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
