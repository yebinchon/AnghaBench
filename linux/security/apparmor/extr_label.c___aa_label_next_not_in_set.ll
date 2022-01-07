; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___aa_label_next_not_in_set.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___aa_label_next_not_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.label_it = type { i64, i64 }
%struct.aa_label = type { i64, %struct.aa_profile** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @__aa_label_next_not_in_set(%struct.label_it* %0, %struct.aa_label* %1, %struct.aa_label* %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca %struct.label_it*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  store %struct.label_it* %0, %struct.label_it** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store %struct.aa_label* %2, %struct.aa_label** %7, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %10 = icmp ne %struct.aa_label* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @AA_BUG(i32 %12)
  %14 = load %struct.label_it*, %struct.label_it** %5, align 8
  %15 = icmp ne %struct.label_it* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.label_it*, %struct.label_it** %5, align 8
  %20 = getelementptr inbounds %struct.label_it, %struct.label_it* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load %struct.label_it*, %struct.label_it** %5, align 8
  %26 = getelementptr inbounds %struct.label_it, %struct.label_it* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %29 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %35 = icmp ne %struct.aa_label* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @AA_BUG(i32 %37)
  %39 = load %struct.label_it*, %struct.label_it** %5, align 8
  %40 = getelementptr inbounds %struct.label_it, %struct.label_it* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @AA_BUG(i32 %43)
  %45 = load %struct.label_it*, %struct.label_it** %5, align 8
  %46 = getelementptr inbounds %struct.label_it, %struct.label_it* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %49 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @AA_BUG(i32 %52)
  br label %54

54:                                               ; preds = %120, %3
  %55 = load %struct.label_it*, %struct.label_it** %5, align 8
  %56 = getelementptr inbounds %struct.label_it, %struct.label_it* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %59 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.label_it*, %struct.label_it** %5, align 8
  %64 = getelementptr inbounds %struct.label_it, %struct.label_it* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %67 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br label %70

70:                                               ; preds = %62, %54
  %71 = phi i1 [ false, %54 ], [ %69, %62 ]
  br i1 %71, label %72, label %121

72:                                               ; preds = %70
  %73 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %74 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %73, i32 0, i32 1
  %75 = load %struct.aa_profile**, %struct.aa_profile*** %74, align 8
  %76 = load %struct.label_it*, %struct.label_it** %5, align 8
  %77 = getelementptr inbounds %struct.label_it, %struct.label_it* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %75, i64 %78
  %80 = load %struct.aa_profile*, %struct.aa_profile** %79, align 8
  %81 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %82 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %81, i32 0, i32 1
  %83 = load %struct.aa_profile**, %struct.aa_profile*** %82, align 8
  %84 = load %struct.label_it*, %struct.label_it** %5, align 8
  %85 = getelementptr inbounds %struct.label_it, %struct.label_it* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %83, i64 %86
  %88 = load %struct.aa_profile*, %struct.aa_profile** %87, align 8
  %89 = call i32 @profile_cmp(%struct.aa_profile* %80, %struct.aa_profile* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %72
  %93 = load %struct.label_it*, %struct.label_it** %5, align 8
  %94 = getelementptr inbounds %struct.label_it, %struct.label_it* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.label_it*, %struct.label_it** %5, align 8
  %98 = getelementptr inbounds %struct.label_it, %struct.label_it* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %120

101:                                              ; preds = %72
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.label_it*, %struct.label_it** %5, align 8
  %106 = getelementptr inbounds %struct.label_it, %struct.label_it* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  br label %119

109:                                              ; preds = %101
  %110 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %111 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %110, i32 0, i32 1
  %112 = load %struct.aa_profile**, %struct.aa_profile*** %111, align 8
  %113 = load %struct.label_it*, %struct.label_it** %5, align 8
  %114 = getelementptr inbounds %struct.label_it, %struct.label_it* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %112, i64 %115
  %118 = load %struct.aa_profile*, %struct.aa_profile** %117, align 8
  store %struct.aa_profile* %118, %struct.aa_profile** %4, align 8
  br label %140

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %92
  br label %54

121:                                              ; preds = %70
  %122 = load %struct.label_it*, %struct.label_it** %5, align 8
  %123 = getelementptr inbounds %struct.label_it, %struct.label_it* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %126 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  %130 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %131 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %130, i32 0, i32 1
  %132 = load %struct.aa_profile**, %struct.aa_profile*** %131, align 8
  %133 = load %struct.label_it*, %struct.label_it** %5, align 8
  %134 = getelementptr inbounds %struct.label_it, %struct.label_it* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %132, i64 %135
  %138 = load %struct.aa_profile*, %struct.aa_profile** %137, align 8
  store %struct.aa_profile* %138, %struct.aa_profile** %4, align 8
  br label %140

139:                                              ; preds = %121
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %140

140:                                              ; preds = %139, %129, %109
  %141 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %141
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @profile_cmp(%struct.aa_profile*, %struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
