; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_unroll_tree_refs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_unroll_tree_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, %struct.audit_tree_refs*, %struct.audit_tree_refs* }
%struct.audit_tree_refs = type { i32**, %struct.audit_tree_refs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, %struct.audit_tree_refs*, i32)* @unroll_tree_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unroll_tree_refs(%struct.audit_context* %0, %struct.audit_tree_refs* %1, i32 %2) #0 {
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca %struct.audit_tree_refs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_tree_refs*, align 8
  %8 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store %struct.audit_tree_refs* %1, %struct.audit_tree_refs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %5, align 8
  %10 = icmp ne %struct.audit_tree_refs* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %13 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %12, i32 0, i32 2
  %14 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %13, align 8
  store %struct.audit_tree_refs* %14, %struct.audit_tree_refs** %5, align 8
  store i32 31, i32* %6, align 4
  %15 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %5, align 8
  %16 = icmp ne %struct.audit_tree_refs* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %83

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %5, align 8
  store %struct.audit_tree_refs* %21, %struct.audit_tree_refs** %7, align 8
  br label %22

22:                                               ; preds = %49, %19
  %23 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %24 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %25 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %24, i32 0, i32 1
  %26 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %25, align 8
  %27 = icmp ne %struct.audit_tree_refs* %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %35 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @audit_put_chunk(i32* %40)
  %42 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %43 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* null, i32** %47, align 8
  br label %29

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %51 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %50, i32 0, i32 1
  %52 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %51, align 8
  store %struct.audit_tree_refs* %52, %struct.audit_tree_refs** %7, align 8
  store i32 31, i32* %8, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %61, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %58 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %63 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @audit_put_chunk(i32* %68)
  %70 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %7, align 8
  %71 = getelementptr inbounds %struct.audit_tree_refs, %struct.audit_tree_refs* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* null, i32** %75, align 8
  br label %54

76:                                               ; preds = %54
  %77 = load %struct.audit_tree_refs*, %struct.audit_tree_refs** %5, align 8
  %78 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %79 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %78, i32 0, i32 1
  store %struct.audit_tree_refs* %77, %struct.audit_tree_refs** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %82 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %17
  ret void
}

declare dso_local i32 @audit_put_chunk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
