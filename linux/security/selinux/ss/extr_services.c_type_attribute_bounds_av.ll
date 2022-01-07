; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_type_attribute_bounds_av.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_type_attribute_bounds_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.type_datum** }
%struct.type_datum = type { i32 }
%struct.context = type { i32 }
%struct.av_decision = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.policydb*, %struct.context*, %struct.context*, i32, %struct.av_decision*)* @type_attribute_bounds_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @type_attribute_bounds_av(%struct.policydb* %0, %struct.context* %1, %struct.context* %2, i32 %3, %struct.av_decision* %4) #0 {
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.av_decision*, align 8
  %11 = alloca %struct.context, align 4
  %12 = alloca %struct.context, align 4
  %13 = alloca %struct.context*, align 8
  %14 = alloca %struct.av_decision, align 4
  %15 = alloca %struct.type_datum*, align 8
  %16 = alloca %struct.type_datum*, align 8
  %17 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store %struct.context* %2, %struct.context** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.av_decision* %4, %struct.av_decision** %10, align 8
  %18 = load %struct.context*, %struct.context** %8, align 8
  store %struct.context* %18, %struct.context** %13, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.policydb*, %struct.policydb** %6, align 8
  %20 = getelementptr inbounds %struct.policydb, %struct.policydb* %19, i32 0, i32 0
  %21 = load %struct.type_datum**, %struct.type_datum*** %20, align 8
  %22 = load %struct.context*, %struct.context** %7, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %21, i64 %26
  %28 = load %struct.type_datum*, %struct.type_datum** %27, align 8
  store %struct.type_datum* %28, %struct.type_datum** %15, align 8
  %29 = load %struct.type_datum*, %struct.type_datum** %15, align 8
  %30 = icmp ne %struct.type_datum* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.type_datum*, %struct.type_datum** %15, align 8
  %35 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  br label %105

39:                                               ; preds = %5
  %40 = load %struct.policydb*, %struct.policydb** %6, align 8
  %41 = getelementptr inbounds %struct.policydb, %struct.policydb* %40, i32 0, i32 0
  %42 = load %struct.type_datum**, %struct.type_datum*** %41, align 8
  %43 = load %struct.context*, %struct.context** %8, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %42, i64 %47
  %49 = load %struct.type_datum*, %struct.type_datum** %48, align 8
  store %struct.type_datum* %49, %struct.type_datum** %16, align 8
  %50 = load %struct.type_datum*, %struct.type_datum** %16, align 8
  %51 = icmp ne %struct.type_datum* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = call i32 @memset(%struct.av_decision* %14, i32 0, i32 4)
  %56 = load %struct.context*, %struct.context** %7, align 8
  %57 = call i32 @memcpy(%struct.context* %11, %struct.context* %56, i32 4)
  %58 = load %struct.type_datum*, %struct.type_datum** %15, align 8
  %59 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.type_datum*, %struct.type_datum** %16, align 8
  %63 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %39
  %67 = load %struct.context*, %struct.context** %8, align 8
  %68 = call i32 @memcpy(%struct.context* %12, %struct.context* %67, i32 4)
  %69 = load %struct.type_datum*, %struct.type_datum** %16, align 8
  %70 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  store %struct.context* %12, %struct.context** %13, align 8
  br label %73

73:                                               ; preds = %66, %39
  %74 = load %struct.policydb*, %struct.policydb** %6, align 8
  %75 = load %struct.context*, %struct.context** %13, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @context_struct_compute_av(%struct.policydb* %74, %struct.context* %11, %struct.context* %75, i32 %76, %struct.av_decision* %14, i32* null)
  %78 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.av_decision*, %struct.av_decision** %10, align 8
  %82 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @likely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  br label %105

92:                                               ; preds = %73
  %93 = load i32, i32* %17, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.av_decision*, %struct.av_decision** %10, align 8
  %96 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.policydb*, %struct.policydb** %6, align 8
  %100 = load %struct.context*, %struct.context** %7, align 8
  %101 = load %struct.context*, %struct.context** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @security_dump_masked_av(%struct.policydb* %99, %struct.context* %100, %struct.context* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %92, %91, %38
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.av_decision*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.context*, %struct.context*, i32) #1

declare dso_local i32 @context_struct_compute_av(%struct.policydb*, %struct.context*, %struct.context*, i32, %struct.av_decision*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @security_dump_masked_av(%struct.policydb*, %struct.context*, %struct.context*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
