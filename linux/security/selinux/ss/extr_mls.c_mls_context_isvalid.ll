; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_context_isvalid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_context_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.user_datum**, %struct.TYPE_2__, i32 }
%struct.user_datum = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.context = type { i64, i32, i32 }

@OBJECT_R_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_context_isvalid(%struct.policydb* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.user_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %7 = load %struct.policydb*, %struct.policydb** %4, align 8
  %8 = getelementptr inbounds %struct.policydb, %struct.policydb* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.policydb*, %struct.policydb** %4, align 8
  %14 = load %struct.context*, %struct.context** %5, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %16 = call i32 @mls_range_isvalid(%struct.policydb* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %62

19:                                               ; preds = %12
  %20 = load %struct.context*, %struct.context** %5, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJECT_R_VAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load %struct.context*, %struct.context** %5, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.context*, %struct.context** %5, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.policydb*, %struct.policydb** %4, align 8
  %36 = getelementptr inbounds %struct.policydb, %struct.policydb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31, %26
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.policydb*, %struct.policydb** %4, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load %struct.user_datum**, %struct.user_datum*** %43, align 8
  %45 = load %struct.context*, %struct.context** %5, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.user_datum*, %struct.user_datum** %44, i64 %49
  %51 = load %struct.user_datum*, %struct.user_datum** %50, align 8
  store %struct.user_datum* %51, %struct.user_datum** %6, align 8
  %52 = load %struct.user_datum*, %struct.user_datum** %6, align 8
  %53 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.context*, %struct.context** %5, align 8
  %56 = getelementptr inbounds %struct.context, %struct.context* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mls_range_contains(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %40, %25, %18, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @mls_range_isvalid(%struct.policydb*, i32*) #1

declare dso_local i32 @mls_range_contains(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
