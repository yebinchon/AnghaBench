; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_first_clear.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_first_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }
%struct.node = type { i64, i64, i32 }

@MASK_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparsebit_first_clear(%struct.sparsebit* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sparsebit*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  %6 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %7 = call i32 @sparsebit_any_clear(%struct.sparsebit* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %10 = call %struct.node* @node_first(%struct.sparsebit* %9)
  store %struct.node* %10, %struct.node** %4, align 8
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i64 0, i64* %2, align 8
  br label %88

19:                                               ; preds = %13
  %20 = load %struct.node*, %struct.node** %4, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.node*, %struct.node** %4, align 8
  %26 = call i64 @node_first_clear(%struct.node* %25, i32 0)
  store i64 %26, i64* %2, align 8
  br label %88

27:                                               ; preds = %19
  %28 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %29 = load %struct.node*, %struct.node** %4, align 8
  %30 = call %struct.node* @node_next(%struct.sparsebit* %28, %struct.node* %29)
  store %struct.node* %30, %struct.node** %5, align 8
  %31 = load %struct.node*, %struct.node** %5, align 8
  %32 = icmp ne %struct.node* %31, null
  br i1 %32, label %61, label %33

33:                                               ; preds = %27
  %34 = load %struct.node*, %struct.node** %4, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.node*, %struct.node** %4, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MASK_BITS, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.node*, %struct.node** %4, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.node*, %struct.node** %4, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MASK_BITS, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.node*, %struct.node** %4, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %2, align 8
  br label %88

61:                                               ; preds = %27
  %62 = load %struct.node*, %struct.node** %4, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MASK_BITS, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.node*, %struct.node** %4, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.node*, %struct.node** %5, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %61
  %76 = load %struct.node*, %struct.node** %4, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MASK_BITS, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.node*, %struct.node** %4, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  store i64 %84, i64* %2, align 8
  br label %88

85:                                               ; preds = %61
  %86 = load %struct.node*, %struct.node** %5, align 8
  %87 = call i64 @node_first_clear(%struct.node* %86, i32 0)
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %85, %75, %33, %24, %18
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sparsebit_any_clear(%struct.sparsebit*) #1

declare dso_local %struct.node* @node_first(%struct.sparsebit*) #1

declare dso_local i64 @node_first_clear(%struct.node*, i32) #1

declare dso_local %struct.node* @node_next(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
