; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_match_tree_refs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_match_tree_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, %struct.audit_tree_refs*, %struct.audit_tree_refs* }
%struct.audit_tree_refs = type { i32*, %struct.audit_tree_refs* }
%struct.audit_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_context*, %struct.audit_tree*)* @match_tree_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tree_refs(%struct.audit_context* %0, %struct.audit_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca %struct.audit_tree_refs*, align 8
  %7 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store %struct.audit_tree* %1, %struct.audit_tree** %5, align 8
  %8 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %9 = icmp ne %struct.audit_tree* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %13 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %12, i32 0, i32 2
  %14 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %13, align 8
  store %struct.audit_tree_refs* %14, %struct.audit_tree_refs** %6, align 8
  br label %15

15:                                               ; preds = %42, %11
  %16 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %17 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %18 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %17, i32 0, i32 1
  %19 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %18, align 8
  %20 = icmp ne %struct.audit_tree_refs* %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 31
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %27 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %34 = call i64 @audit_tree_match(i32 %32, %struct.audit_tree* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %74

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %44 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %43, i32 0, i32 1
  %45 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %44, align 8
  store %struct.audit_tree_refs* %45, %struct.audit_tree_refs** %6, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %48 = icmp ne %struct.audit_tree_refs* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %51 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %69, %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 31
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %6, align 8
  %58 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %65 = call i64 @audit_tree_match(i32 %63, %struct.audit_tree* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %74

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %46
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %36, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @audit_tree_match(i32, %struct.audit_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
