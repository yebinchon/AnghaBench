; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_server_ccid_dependencies.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_server_ccid_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_request_sock = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.dccp_feat_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@DCCPF_CCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_server_ccid_dependencies(%struct.dccp_request_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dccp_request_sock*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.dccp_feat_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dccp_request_sock* %0, %struct.dccp_request_sock** %3, align 8
  %8 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %3, align 8
  %9 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %8, i32 0, i32 0
  store %struct.list_head* %9, %struct.list_head** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = load i32, i32* @DCCPF_CCID, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head* %14, i32 %15, i32 %16)
  store %struct.dccp_feat_entry* %17, %struct.dccp_feat_entry** %5, align 8
  %18 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %5, align 8
  %19 = icmp ne %struct.dccp_feat_entry* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %5, align 8
  %22 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %5, align 8
  %27 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %36

33:                                               ; preds = %20, %13
  %34 = load i32, i32* @DCCPF_CCID, align 4
  %35 = call i32 @dccp_feat_default_value(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.list_head*, %struct.list_head** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @dccp_feat_propagate_ccid(%struct.list_head* %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %10

47:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head*, i32, i32) #1

declare dso_local i32 @dccp_feat_default_value(i32) #1

declare dso_local i64 @dccp_feat_propagate_ccid(%struct.list_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
