; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_update_records.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_update_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec = type { i32, i64, i64, i64, i64 }
%struct.dccp_ackvec_record = type { i32, i64, i64, i32, i32, i64 }

@dccp_ackvec_record_slab = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Added Vector, ack_seqno=%llu, ack_ackno=%llu (rl=%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_ackvec_update_records(%struct.dccp_ackvec* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_ackvec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dccp_ackvec_record*, align 8
  store %struct.dccp_ackvec* %0, %struct.dccp_ackvec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @dccp_ackvec_record_slab, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.dccp_ackvec_record* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.dccp_ackvec_record* %11, %struct.dccp_ackvec_record** %8, align 8
  %12 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %13 = icmp eq %struct.dccp_ackvec_record* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %20 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %22 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %25 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  %26 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %27 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %30 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %33 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %35 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %38 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @dccp_ackvec_runlen(i64 %40)
  %42 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %43 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %45 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %17
  %49 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %50 = call i32 @dccp_ackvec_purge_records(%struct.dccp_ackvec* %49)
  br label %51

51:                                               ; preds = %48, %17
  %52 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %53 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %52, i32 0, i32 3
  %54 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %5, align 8
  %55 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %54, i32 0, i32 0
  %56 = call i32 @list_add(i32* %53, i32* %55)
  %57 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %58 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %61 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dccp_ackvec_record*, %struct.dccp_ackvec_record** %8, align 8
  %64 = getelementptr inbounds %struct.dccp_ackvec_record, %struct.dccp_ackvec_record* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %51, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.dccp_ackvec_record* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dccp_ackvec_runlen(i64) #1

declare dso_local i32 @dccp_ackvec_purge_records(%struct.dccp_ackvec*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
