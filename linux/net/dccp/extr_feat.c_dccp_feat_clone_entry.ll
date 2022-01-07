; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_clone_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_clone_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_feat_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FEAT_UNKNOWN = common dso_local global i64 0, align 8
@FEAT_SP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dccp_feat_entry* (%struct.dccp_feat_entry*)* @dccp_feat_clone_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dccp_feat_entry* @dccp_feat_clone_entry(%struct.dccp_feat_entry* %0) #0 {
  %2 = alloca %struct.dccp_feat_entry*, align 8
  %3 = alloca %struct.dccp_feat_entry*, align 8
  %4 = alloca %struct.dccp_feat_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.dccp_feat_entry* %0, %struct.dccp_feat_entry** %3, align 8
  %6 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %7 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @dccp_feat_type(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @FEAT_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.dccp_feat_entry* null, %struct.dccp_feat_entry** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %16 = call i32 (...) @gfp_any()
  %17 = call %struct.dccp_feat_entry* @kmemdup(%struct.dccp_feat_entry* %15, i32 12, i32 %16)
  store %struct.dccp_feat_entry* %17, %struct.dccp_feat_entry** %4, align 8
  %18 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %4, align 8
  %19 = icmp eq %struct.dccp_feat_entry* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store %struct.dccp_feat_entry* null, %struct.dccp_feat_entry** %2, align 8
  br label %45

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @FEAT_SP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %4, align 8
  %27 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %26, i32 0, i32 0
  %28 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %29 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %34 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dccp_feat_clone_sp_val(%struct.TYPE_4__* %27, i32 %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %4, align 8
  %42 = call i32 @kfree(%struct.dccp_feat_entry* %41)
  store %struct.dccp_feat_entry* null, %struct.dccp_feat_entry** %2, align 8
  br label %45

43:                                               ; preds = %25, %21
  %44 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %4, align 8
  store %struct.dccp_feat_entry* %44, %struct.dccp_feat_entry** %2, align 8
  br label %45

45:                                               ; preds = %43, %40, %20, %13
  %46 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %2, align 8
  ret %struct.dccp_feat_entry* %46
}

declare dso_local i64 @dccp_feat_type(i32) #1

declare dso_local %struct.dccp_feat_entry* @kmemdup(%struct.dccp_feat_entry*, i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i64 @dccp_feat_clone_sp_val(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dccp_feat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
