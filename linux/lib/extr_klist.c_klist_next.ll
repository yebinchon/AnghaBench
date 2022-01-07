; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_node = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.klist_iter = type { %struct.klist_node*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { void (%struct.klist_node*)*, i32, %struct.TYPE_6__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.klist_node* @klist_next(%struct.klist_iter* %0) #0 {
  %2 = alloca %struct.klist_iter*, align 8
  %3 = alloca void (%struct.klist_node*)*, align 8
  %4 = alloca %struct.klist_node*, align 8
  %5 = alloca %struct.klist_node*, align 8
  %6 = alloca i64, align 8
  store %struct.klist_iter* %0, %struct.klist_iter** %2, align 8
  %7 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %8 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %10, align 8
  store void (%struct.klist_node*)* %11, void (%struct.klist_node*)** %3, align 8
  %12 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %13 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %12, i32 0, i32 0
  %14 = load %struct.klist_node*, %struct.klist_node** %13, align 8
  store %struct.klist_node* %14, %struct.klist_node** %4, align 8
  %15 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %16 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %22 = icmp ne %struct.klist_node* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %25 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %27)
  store %struct.klist_node* %28, %struct.klist_node** %5, align 8
  %29 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %30 = call i32 @klist_dec_and_del(%struct.klist_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store void (%struct.klist_node*)* null, void (%struct.klist_node*)** %3, align 8
  br label %33

33:                                               ; preds = %32, %23
  br label %42

34:                                               ; preds = %1
  %35 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %36 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %40)
  store %struct.klist_node* %41, %struct.klist_node** %5, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %44 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %43, i32 0, i32 0
  store %struct.klist_node* null, %struct.klist_node** %44, align 8
  br label %45

45:                                               ; preds = %68, %42
  %46 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %47 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %48 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %50)
  %52 = icmp ne %struct.klist_node* %46, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %45
  %54 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %55 = call i32 @knode_dead(%struct.klist_node* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %63 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %62, i32 0, i32 1
  %64 = call i32 @kref_get(i32* %63)
  %65 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %66 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %67 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %66, i32 0, i32 0
  store %struct.klist_node* %65, %struct.klist_node** %67, align 8
  br label %74

68:                                               ; preds = %53
  %69 = load %struct.klist_node*, %struct.klist_node** %5, align 8
  %70 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call %struct.klist_node* @to_klist_node(%struct.TYPE_6__* %72)
  store %struct.klist_node* %73, %struct.klist_node** %5, align 8
  br label %45

74:                                               ; preds = %61, %45
  %75 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %76 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %3, align 8
  %82 = icmp ne void (%struct.klist_node*)* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %85 = icmp ne %struct.klist_node* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %3, align 8
  %88 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  call void %87(%struct.klist_node* %88)
  br label %89

89:                                               ; preds = %86, %83, %74
  %90 = load %struct.klist_iter*, %struct.klist_iter** %2, align 8
  %91 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %90, i32 0, i32 0
  %92 = load %struct.klist_node*, %struct.klist_node** %91, align 8
  ret %struct.klist_node* %92
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.klist_node* @to_klist_node(%struct.TYPE_6__*) #1

declare dso_local i32 @klist_dec_and_del(%struct.klist_node*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @knode_dead(%struct.klist_node*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
