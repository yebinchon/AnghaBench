; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_ematch.c_tcf_em_tree_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_ematch.c_tcf_em_tree_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_ematch_tree = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_ematch = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 (%struct.tcf_ematch*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_em_tree_destroy(%struct.tcf_ematch_tree* %0) #0 {
  %2 = alloca %struct.tcf_ematch_tree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_ematch*, align 8
  store %struct.tcf_ematch_tree* %0, %struct.tcf_ematch_tree** %2, align 8
  %5 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %6 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %73

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %60, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %14 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %11
  %19 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree* %19, i32 %20)
  store %struct.tcf_ematch* %21, %struct.tcf_ematch** %4, align 8
  %22 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %23 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %28 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.tcf_ematch*)*, i32 (%struct.tcf_ematch*)** %30, align 8
  %32 = icmp ne i32 (%struct.tcf_ematch*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %35 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (%struct.tcf_ematch*)*, i32 (%struct.tcf_ematch*)** %37, align 8
  %39 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %40 = call i32 %38(%struct.tcf_ematch* %39)
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %43 = call i32 @tcf_em_is_simple(%struct.tcf_ematch* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %47 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @kfree(i8* %49)
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.tcf_ematch*, %struct.tcf_ematch** %4, align 8
  %54 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  br label %59

59:                                               ; preds = %52, %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %65 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %68 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %2, align 8
  %72 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %71, i32 0, i32 0
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %63, %9
  ret void
}

declare dso_local %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree*, i32) #1

declare dso_local i32 @tcf_em_is_simple(%struct.tcf_ematch*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
