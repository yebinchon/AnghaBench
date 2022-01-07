; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_state = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy**, i32, %struct.flowi*, %struct.xfrm_state**, i16)* @xfrm_tmpl_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_tmpl_resolve(%struct.xfrm_policy** %0, i32 %1, %struct.flowi* %2, %struct.xfrm_state** %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_policy**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.xfrm_state**, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.xfrm_state**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xfrm_policy** %0, %struct.xfrm_policy*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store %struct.xfrm_state** %3, %struct.xfrm_state*** %10, align 8
  store i16 %4, i16* %11, align 2
  %20 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.xfrm_state*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %29

27:                                               ; preds = %5
  %28 = load %struct.xfrm_state**, %struct.xfrm_state*** %10, align 8
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi %struct.xfrm_state** [ %23, %26 ], [ %28, %27 ]
  store %struct.xfrm_state** %30, %struct.xfrm_state*** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %72, %29
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %37, i64 %39
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %40, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %36, %43
  %45 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOBUFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  br label %86

50:                                               ; preds = %35
  %51 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %51, i64 %53
  %55 = load %struct.xfrm_policy*, %struct.xfrm_policy** %54, align 8
  %56 = load %struct.flowi*, %struct.flowi** %9, align 8
  %57 = load %struct.xfrm_state**, %struct.xfrm_state*** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %57, i64 %59
  %61 = load i16, i16* %11, align 2
  %62 = call i32 @xfrm_tmpl_resolve_one(%struct.xfrm_policy* %55, %struct.flowi* %56, %struct.xfrm_state** %60, i16 zeroext %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %16, align 4
  br label %86

67:                                               ; preds = %50
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %31

75:                                               ; preds = %31
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.xfrm_state**, %struct.xfrm_state*** %10, align 8
  %80 = load %struct.xfrm_state**, %struct.xfrm_state*** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i16, i16* %11, align 2
  %83 = call i32 @xfrm_state_sort(%struct.xfrm_state** %79, %struct.xfrm_state** %80, i32 %81, i16 zeroext %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %104

86:                                               ; preds = %65, %47
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %99, %86
  %90 = load i32, i32* %15, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.xfrm_state**, %struct.xfrm_state*** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %93, i64 %95
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %96, align 8
  %98 = call i32 @xfrm_state_put(%struct.xfrm_state* %97)
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %15, align 4
  br label %89

102:                                              ; preds = %89
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %104

104:                                              ; preds = %102, %84
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xfrm_tmpl_resolve_one(%struct.xfrm_policy*, %struct.flowi*, %struct.xfrm_state**, i16 zeroext) #2

declare dso_local i32 @xfrm_state_sort(%struct.xfrm_state**, %struct.xfrm_state**, i32, i16 zeroext) #2

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
