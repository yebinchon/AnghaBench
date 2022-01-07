; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_vec_unique.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_vec_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@sort_cmp = common dso_local global i32 0, align 4
@VEC_FLAG_TERMINATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_vec_unique(%struct.aa_profile** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aa_profile**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aa_profile** %0, %struct.aa_profile*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %18 = icmp ne %struct.aa_profile** %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @AA_BUG(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @sort_cmp, align 4
  %28 = call i32 @sort(%struct.aa_profile** %25, i32 %26, i32 8, i32 %27, i32* null)
  %29 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @unique(%struct.aa_profile** %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %113

32:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %105, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %33
  %38 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %38, i64 %40
  %42 = load %struct.aa_profile*, %struct.aa_profile** %41, align 8
  store %struct.aa_profile* %42, %struct.aa_profile** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %71, %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %51, i64 %53
  %55 = load %struct.aa_profile*, %struct.aa_profile** %54, align 8
  %56 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %57 = call i32 @profile_cmp(%struct.aa_profile* %55, %struct.aa_profile* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %62 = call i32 @aa_put_profile(%struct.aa_profile* %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %104

65:                                               ; preds = %50
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %74

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %10, align 4
  br label %47

74:                                               ; preds = %68, %47
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %95, %74
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %85, i64 %88
  %90 = load %struct.aa_profile*, %struct.aa_profile** %89, align 8
  %91 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %91, i64 %93
  store %struct.aa_profile* %90, %struct.aa_profile** %94, align 8
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %100 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %100, i64 %102
  store %struct.aa_profile* %99, %struct.aa_profile** %103, align 8
  br label %104

104:                                              ; preds = %98, %60
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %33

108:                                              ; preds = %33
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @AA_BUG(i32 %111)
  br label %113

113:                                              ; preds = %108, %24
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @VEC_FLAG_TERMINATE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %119, i64 %123
  store %struct.aa_profile* null, %struct.aa_profile** %124, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @sort(%struct.aa_profile**, i32, i32, i32, i32*) #1

declare dso_local i32 @unique(%struct.aa_profile**, i32) #1

declare dso_local i32 @profile_cmp(%struct.aa_profile*, %struct.aa_profile*) #1

declare dso_local i32 @aa_put_profile(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
