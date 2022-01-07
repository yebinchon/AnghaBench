; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec = type { i32*, i32, i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i8* }

@DCCPAV_RECEIVED = common dso_local global i32 0, align 4
@DCCPAV_MAX_RUNLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_ackvec_input(%struct.dccp_ackvec* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.dccp_ackvec*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.dccp_ackvec* %0, %struct.dccp_ackvec** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @DCCPAV_RECEIVED, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %15 = call i64 @dccp_ackvec_is_empty(%struct.dccp_ackvec* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dccp_ackvec_add_new(%struct.dccp_ackvec* %18, i32 1, i8* %19, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %24 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %75

25:                                               ; preds = %2
  %26 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %27 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @dccp_delta_seqno(i8* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %32 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %35 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %58

41:                                               ; preds = %25
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @dccp_ackvec_state(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @dccp_ackvec_runlen(i32* %47)
  %49 = load i64, i64* @DCCPAV_MAX_RUNLEN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %57 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %74

58:                                               ; preds = %46, %41, %25
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dccp_ackvec_add_new(%struct.dccp_ackvec* %62, i32 %63, i8* %64, i32 %65)
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dccp_ackvec_update_old(%struct.dccp_ackvec* %68, i32 %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %17
  ret void
}

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_ackvec_is_empty(%struct.dccp_ackvec*) #1

declare dso_local i32 @dccp_ackvec_add_new(%struct.dccp_ackvec*, i32, i8*, i32) #1

declare dso_local i32 @dccp_delta_seqno(i8*, i8*) #1

declare dso_local i32 @dccp_ackvec_state(i32*) #1

declare dso_local i64 @dccp_ackvec_runlen(i32*) #1

declare dso_local i32 @dccp_ackvec_update_old(%struct.dccp_ackvec*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
