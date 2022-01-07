; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_flo = type { i32 }
%struct.xfrm_policy = type { i32 }

@XFRM_POLICY_TYPE_MAX = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTPOLERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_dst* (%struct.net*, %struct.flowi*, i32, i32, %struct.xfrm_flo*, i32)* @xfrm_bundle_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_dst* @xfrm_bundle_lookup(%struct.net* %0, %struct.flowi* %1, i32 %2, i32 %3, %struct.xfrm_flo* %4, i32 %5) #0 {
  %7 = alloca %struct.xfrm_dst*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_flo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.xfrm_dst*, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.flowi* %1, %struct.flowi** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.xfrm_flo* %4, %struct.xfrm_flo** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @XFRM_POLICY_TYPE_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca %struct.xfrm_policy*, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %16, align 4
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = load %struct.flowi*, %struct.flowi** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.xfrm_policy* @xfrm_policy_lookup(%struct.net* %25, %struct.flowi* %26, i32 %27, i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %24, i64 0
  store %struct.xfrm_policy* %30, %struct.xfrm_policy** %31, align 16
  %32 = load %struct.flowi*, %struct.flowi** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @xfrm_expand_policies(%struct.flowi* %32, i32 %33, %struct.xfrm_policy** %24, i32* %16, i32* %17)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %112

38:                                               ; preds = %6
  %39 = load i32, i32* %16, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %struct.xfrm_dst* null, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %81

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.flowi*, %struct.flowi** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.xfrm_flo*, %struct.xfrm_flo** %12, align 8
  %51 = getelementptr inbounds %struct.xfrm_flo, %struct.xfrm_flo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy** %24, i32 %47, %struct.flowi* %48, i32 %49, i32 %52)
  store %struct.xfrm_dst* %53, %struct.xfrm_dst** %19, align 8
  %54 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %55 = call i64 @IS_ERR(%struct.xfrm_dst* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %46
  %58 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %59 = call i32 @PTR_ERR(%struct.xfrm_dst* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @EREMOTE, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %24, i32 %65)
  store %struct.xfrm_dst* null, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

67:                                               ; preds = %57
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %116

73:                                               ; preds = %67
  br label %81

74:                                               ; preds = %46
  %75 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %76 = icmp eq %struct.xfrm_dst* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %81

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  store %struct.xfrm_dst* %80, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

81:                                               ; preds = %77, %73, %45
  %82 = load %struct.net*, %struct.net** %8, align 8
  %83 = load %struct.xfrm_flo*, %struct.xfrm_flo** %12, align 8
  %84 = load %struct.flowi*, %struct.flowi** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call %struct.xfrm_dst* @xfrm_create_dummy_bundle(%struct.net* %82, %struct.xfrm_flo* %83, %struct.flowi* %84, i32 %85, i32 %86)
  store %struct.xfrm_dst* %87, %struct.xfrm_dst** %19, align 8
  %88 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %89 = call i64 @IS_ERR(%struct.xfrm_dst* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %24, i32 %92)
  %94 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %95 = call %struct.xfrm_dst* @ERR_CAST(%struct.xfrm_dst* %94)
  store %struct.xfrm_dst* %95, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

96:                                               ; preds = %81
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %99 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %102 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  %104 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32 %105, %struct.xfrm_policy** %24, i32 %109)
  %111 = load %struct.xfrm_dst*, %struct.xfrm_dst** %19, align 8
  store %struct.xfrm_dst* %111, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

112:                                              ; preds = %37
  %113 = load %struct.net*, %struct.net** %8, align 8
  %114 = load i32, i32* @LINUX_MIB_XFRMOUTPOLERROR, align 4
  %115 = call i32 @XFRM_INC_STATS(%struct.net* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %72
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @xfrm_pols_put(%struct.xfrm_policy** %24, i32 %117)
  %119 = load i32, i32* %18, align 4
  %120 = call %struct.xfrm_dst* @ERR_PTR(i32 %119)
  store %struct.xfrm_dst* %120, %struct.xfrm_dst** %7, align 8
  store i32 1, i32* %20, align 4
  br label %121

121:                                              ; preds = %116, %96, %91, %79, %64, %41
  %122 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  ret %struct.xfrm_dst* %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_lookup(%struct.net*, %struct.flowi*, i32, i32, i32) #2

declare dso_local i32 @xfrm_expand_policies(%struct.flowi*, i32, %struct.xfrm_policy**, i32*, i32*) #2

declare dso_local %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy**, i32, %struct.flowi*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.xfrm_dst*) #2

declare dso_local i32 @PTR_ERR(%struct.xfrm_dst*) #2

declare dso_local i32 @xfrm_pols_put(%struct.xfrm_policy**, i32) #2

declare dso_local %struct.xfrm_dst* @xfrm_create_dummy_bundle(%struct.net*, %struct.xfrm_flo*, %struct.flowi*, i32, i32) #2

declare dso_local %struct.xfrm_dst* @ERR_CAST(%struct.xfrm_dst*) #2

declare dso_local i32 @memcpy(i32, %struct.xfrm_policy**, i32) #2

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #2

declare dso_local %struct.xfrm_dst* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
