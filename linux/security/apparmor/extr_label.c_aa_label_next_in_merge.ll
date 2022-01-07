; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_next_in_merge.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_next_in_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.label_it = type { i64, i64 }
%struct.aa_label = type { i64, %struct.aa_profile** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_label_next_in_merge(%struct.label_it* %0, %struct.aa_label* %1, %struct.aa_label* %2) #0 {
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
  %14 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %15 = icmp ne %struct.aa_label* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.label_it*, %struct.label_it** %5, align 8
  %20 = icmp ne %struct.label_it* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.label_it*, %struct.label_it** %5, align 8
  %25 = getelementptr inbounds %struct.label_it, %struct.label_it* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @AA_BUG(i32 %28)
  %30 = load %struct.label_it*, %struct.label_it** %5, align 8
  %31 = getelementptr inbounds %struct.label_it, %struct.label_it* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %34 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
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
  %54 = load %struct.label_it*, %struct.label_it** %5, align 8
  %55 = getelementptr inbounds %struct.label_it, %struct.label_it* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %58 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %3
  %62 = load %struct.label_it*, %struct.label_it** %5, align 8
  %63 = getelementptr inbounds %struct.label_it, %struct.label_it* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %66 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %61
  %70 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %71 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %70, i32 0, i32 1
  %72 = load %struct.aa_profile**, %struct.aa_profile*** %71, align 8
  %73 = load %struct.label_it*, %struct.label_it** %5, align 8
  %74 = getelementptr inbounds %struct.label_it, %struct.label_it* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %72, i64 %75
  %77 = load %struct.aa_profile*, %struct.aa_profile** %76, align 8
  %78 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %79 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %78, i32 0, i32 1
  %80 = load %struct.aa_profile**, %struct.aa_profile*** %79, align 8
  %81 = load %struct.label_it*, %struct.label_it** %5, align 8
  %82 = getelementptr inbounds %struct.label_it, %struct.label_it* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %80, i64 %83
  %85 = load %struct.aa_profile*, %struct.aa_profile** %84, align 8
  %86 = call i32 @profile_cmp(%struct.aa_profile* %77, %struct.aa_profile* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %69
  %90 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %91 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %90, i32 0, i32 1
  %92 = load %struct.aa_profile**, %struct.aa_profile*** %91, align 8
  %93 = load %struct.label_it*, %struct.label_it** %5, align 8
  %94 = getelementptr inbounds %struct.label_it, %struct.label_it* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %92, i64 %95
  %98 = load %struct.aa_profile*, %struct.aa_profile** %97, align 8
  store %struct.aa_profile* %98, %struct.aa_profile** %4, align 8
  br label %137

99:                                               ; preds = %69
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.label_it*, %struct.label_it** %5, align 8
  %104 = getelementptr inbounds %struct.label_it, %struct.label_it* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %102, %99
  br label %108

108:                                              ; preds = %107, %61
  %109 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %110 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %109, i32 0, i32 1
  %111 = load %struct.aa_profile**, %struct.aa_profile*** %110, align 8
  %112 = load %struct.label_it*, %struct.label_it** %5, align 8
  %113 = getelementptr inbounds %struct.label_it, %struct.label_it* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %111, i64 %114
  %117 = load %struct.aa_profile*, %struct.aa_profile** %116, align 8
  store %struct.aa_profile* %117, %struct.aa_profile** %4, align 8
  br label %137

118:                                              ; preds = %3
  %119 = load %struct.label_it*, %struct.label_it** %5, align 8
  %120 = getelementptr inbounds %struct.label_it, %struct.label_it* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %123 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %128 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %127, i32 0, i32 1
  %129 = load %struct.aa_profile**, %struct.aa_profile*** %128, align 8
  %130 = load %struct.label_it*, %struct.label_it** %5, align 8
  %131 = getelementptr inbounds %struct.label_it, %struct.label_it* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %129, i64 %132
  %135 = load %struct.aa_profile*, %struct.aa_profile** %134, align 8
  store %struct.aa_profile* %135, %struct.aa_profile** %4, align 8
  br label %137

136:                                              ; preds = %118
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %137

137:                                              ; preds = %136, %126, %108, %89
  %138 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %138
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @profile_cmp(%struct.aa_profile*, %struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
