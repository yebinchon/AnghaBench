; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_report_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_report_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_subscription = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_subscr }
%struct.tipc_subscr = type { i32 }
%struct.tipc_name_seq = type { i8*, i8*, i8* }

@TIPC_SUB_PORTS = common dso_local global i64 0, align 8
@TIPC_SUB_CLUSTER_SCOPE = common dso_local global i64 0, align 8
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@TIPC_SUB_NODE_SCOPE = common dso_local global i64 0, align 8
@filter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sub_report_overlap(%struct.tipc_subscription* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.tipc_subscription*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.tipc_subscr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.tipc_name_seq, align 8
  store %struct.tipc_subscription* %0, %struct.tipc_subscription** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %21 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.tipc_subscr* %22, %struct.tipc_subscr** %17, align 8
  %23 = load %struct.tipc_subscr*, %struct.tipc_subscr** %17, align 8
  %24 = load i64, i64* %18, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i8* @tipc_sub_read(%struct.tipc_subscr* %23, i8* %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %18, align 8
  %28 = load %struct.tipc_subscr*, %struct.tipc_subscr** %17, align 8
  %29 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @tipc_sub_read(%struct.tipc_subscr* %28, i8* %30)
  %32 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.tipc_subscr*, %struct.tipc_subscr** %17, align 8
  %34 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @tipc_sub_read(%struct.tipc_subscr* %33, i8* %35)
  %37 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load %struct.tipc_subscr*, %struct.tipc_subscr** %17, align 8
  %39 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @tipc_sub_read(%struct.tipc_subscr* %38, i8* %40)
  %42 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @tipc_sub_check_overlap(%struct.tipc_name_seq* %19, i64 %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %8
  br label %91

48:                                               ; preds = %8
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* @TIPC_SUB_PORTS, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %91

57:                                               ; preds = %51, %48
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* @TIPC_SUB_CLUSTER_SCOPE, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %91

67:                                               ; preds = %62, %57
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* @TIPC_SUB_NODE_SCOPE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %91

77:                                               ; preds = %72, %67
  %78 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %79 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @tipc_sub_send_event(%struct.tipc_subscription* %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %89 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %77, %76, %66, %56, %47
  ret void
}

declare dso_local i8* @tipc_sub_read(%struct.tipc_subscr*, i8*) #1

declare dso_local i32 @tipc_sub_check_overlap(%struct.tipc_name_seq*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tipc_sub_send_event(%struct.tipc_subscription*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
