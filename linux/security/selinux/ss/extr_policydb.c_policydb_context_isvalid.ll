; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_context_isvalid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_context_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.user_datum**, %struct.role_datum**, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.user_datum = type { i32 }
%struct.role_datum = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.context = type { i32, i32, i64 }

@OBJECT_R_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policydb_context_isvalid(%struct.policydb* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.role_datum*, align 8
  %7 = alloca %struct.user_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %8 = load %struct.context*, %struct.context** %5, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.context*, %struct.context** %5, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.policydb*, %struct.policydb** %4, align 8
  %17 = getelementptr inbounds %struct.policydb, %struct.policydb* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %114

22:                                               ; preds = %12
  %23 = load %struct.context*, %struct.context** %5, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.context*, %struct.context** %5, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.policydb*, %struct.policydb** %4, align 8
  %32 = getelementptr inbounds %struct.policydb, %struct.policydb* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %22
  store i32 0, i32* %3, align 4
  br label %114

37:                                               ; preds = %27
  %38 = load %struct.context*, %struct.context** %5, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.context*, %struct.context** %5, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.policydb*, %struct.policydb** %4, align 8
  %47 = getelementptr inbounds %struct.policydb, %struct.policydb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %37
  store i32 0, i32* %3, align 4
  br label %114

52:                                               ; preds = %42
  %53 = load %struct.context*, %struct.context** %5, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OBJECT_R_VAL, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %52
  %59 = load %struct.policydb*, %struct.policydb** %4, align 8
  %60 = getelementptr inbounds %struct.policydb, %struct.policydb* %59, i32 0, i32 1
  %61 = load %struct.role_datum**, %struct.role_datum*** %60, align 8
  %62 = load %struct.context*, %struct.context** %5, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %61, i64 %66
  %68 = load %struct.role_datum*, %struct.role_datum** %67, align 8
  store %struct.role_datum* %68, %struct.role_datum** %6, align 8
  %69 = load %struct.role_datum*, %struct.role_datum** %6, align 8
  %70 = icmp ne %struct.role_datum* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load %struct.role_datum*, %struct.role_datum** %6, align 8
  %73 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %72, i32 0, i32 0
  %74 = load %struct.context*, %struct.context** %5, align 8
  %75 = getelementptr inbounds %struct.context, %struct.context* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ebitmap_get_bit(i32* %73, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71, %58
  store i32 0, i32* %3, align 4
  br label %114

82:                                               ; preds = %71
  %83 = load %struct.policydb*, %struct.policydb** %4, align 8
  %84 = getelementptr inbounds %struct.policydb, %struct.policydb* %83, i32 0, i32 0
  %85 = load %struct.user_datum**, %struct.user_datum*** %84, align 8
  %86 = load %struct.context*, %struct.context** %5, align 8
  %87 = getelementptr inbounds %struct.context, %struct.context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.user_datum*, %struct.user_datum** %85, i64 %90
  %92 = load %struct.user_datum*, %struct.user_datum** %91, align 8
  store %struct.user_datum* %92, %struct.user_datum** %7, align 8
  %93 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %94 = icmp ne %struct.user_datum* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %114

96:                                               ; preds = %82
  %97 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %98 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %97, i32 0, i32 0
  %99 = load %struct.context*, %struct.context** %5, align 8
  %100 = getelementptr inbounds %struct.context, %struct.context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @ebitmap_get_bit(i32* %98, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %114

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %52
  %108 = load %struct.policydb*, %struct.policydb** %4, align 8
  %109 = load %struct.context*, %struct.context** %5, align 8
  %110 = call i32 @mls_context_isvalid(%struct.policydb* %108, %struct.context* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %114

113:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %112, %105, %95, %81, %51, %36, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ebitmap_get_bit(i32*, i32) #1

declare dso_local i32 @mls_context_isvalid(%struct.policydb*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
