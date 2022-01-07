; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_propagate_ccid.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_propagate_ccid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccid_dependency = type { i64, i32, i32, i32 }

@DCCPF_RESERVED = common dso_local global i64 0, align 8
@FEAT_SP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32, i32)* @dccp_feat_propagate_ccid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_propagate_ccid(%struct.list_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccid_dependency*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ccid_dependency* @dccp_feat_ccid_deps(i32 %10, i32 %11)
  store %struct.ccid_dependency* %12, %struct.ccid_dependency** %7, align 8
  %13 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %14 = icmp eq %struct.ccid_dependency* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %88, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %20, i64 %22
  %24 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DCCPF_RESERVED, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %19, %16
  %29 = phi i1 [ false, %16 ], [ %27, %19 ]
  br i1 %29, label %30, label %91

30:                                               ; preds = %28
  %31 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %31, i64 %33
  %35 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @dccp_feat_type(i64 %36)
  %38 = load i64, i64* @FEAT_SP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %30
  %41 = load %struct.list_head*, %struct.list_head** %4, align 8
  %42 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %42, i64 %44
  %46 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %48, i64 %50
  %52 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %54, i64 %56
  %58 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %60, i64 %62
  %64 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %63, i32 0, i32 1
  %65 = call i32 @__feat_register_sp(%struct.list_head* %41, i64 %47, i32 %53, i32 %59, i32* %64, i32 1)
  store i32 %65, i32* %9, align 4
  br label %87

66:                                               ; preds = %30
  %67 = load %struct.list_head*, %struct.list_head** %4, align 8
  %68 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %68, i64 %70
  %72 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %74, i64 %76
  %78 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ccid_dependency*, %struct.ccid_dependency** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %80, i64 %82
  %84 = getelementptr inbounds %struct.ccid_dependency, %struct.ccid_dependency* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @__feat_register_nn(%struct.list_head* %67, i64 %73, i32 %79, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %66, %40
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %16

91:                                               ; preds = %28
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local %struct.ccid_dependency* @dccp_feat_ccid_deps(i32, i32) #1

declare dso_local i64 @dccp_feat_type(i64) #1

declare dso_local i32 @__feat_register_sp(%struct.list_head*, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @__feat_register_nn(%struct.list_head*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
