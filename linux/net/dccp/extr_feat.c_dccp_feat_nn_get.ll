; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_nn_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_nn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32, i32, i32 }
%struct.dccp_feat_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FEAT_NN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"attempt to look up unsupported feature %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_nn_get(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca %struct.dccp_feat_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @dccp_feat_type(i32 %8)
  %10 = load i64, i64* @FEAT_NN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %13)
  store %struct.dccp_sock* %14, %struct.dccp_sock** %6, align 8
  %15 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %16 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %15, i32 0, i32 2
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.dccp_feat_entry* @dccp_feat_list_lookup(i32* %16, i32 %17, i32 1)
  store %struct.dccp_feat_entry* %18, %struct.dccp_feat_entry** %7, align 8
  %19 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %7, align 8
  %20 = icmp ne %struct.dccp_feat_entry* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %7, align 8
  %23 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %12
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %30 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %26
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %32, %28, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @dccp_feat_type(i32) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_feat_entry* @dccp_feat_list_lookup(i32*, i32, i32) #1

declare dso_local i32 @DCCP_BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
