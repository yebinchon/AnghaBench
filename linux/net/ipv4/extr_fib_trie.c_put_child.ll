; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_put_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_put_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, i64, %struct.key_vector*)* @put_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_child(%struct.key_vector* %0, i64 %1, %struct.key_vector* %2) #0 {
  %4 = alloca %struct.key_vector*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca %struct.key_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.key_vector* %0, %struct.key_vector** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.key_vector* %2, %struct.key_vector** %6, align 8
  %10 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.key_vector* @get_child(%struct.key_vector* %10, i64 %11)
  store %struct.key_vector* %12, %struct.key_vector** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %15 = call i64 @child_length(%struct.key_vector* %14)
  %16 = icmp uge i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %20 = icmp ne %struct.key_vector* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %23 = icmp ne %struct.key_vector* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %26 = call i32 @empty_child_inc(%struct.key_vector* %25)
  br label %27

27:                                               ; preds = %24, %21, %3
  %28 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %29 = icmp ne %struct.key_vector* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %32 = icmp ne %struct.key_vector* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %35 = call i32 @empty_child_dec(%struct.key_vector* %34)
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %38 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %39 = call i32 @tnode_full(%struct.key_vector* %37, %struct.key_vector* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %41 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %42 = call i32 @tnode_full(%struct.key_vector* %40, %struct.key_vector* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %50 = call %struct.TYPE_2__* @tn_info(%struct.key_vector* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  br label %67

54:                                               ; preds = %45, %36
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %62 = call %struct.TYPE_2__* @tn_info(%struct.key_vector* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %57, %54
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %69 = icmp ne %struct.key_vector* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %72 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %75 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %80 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %83 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %70, %67
  %85 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %86 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %92 = call i32 @rcu_assign_pointer(i32 %90, %struct.key_vector* %91)
  ret void
}

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local i32 @empty_child_inc(%struct.key_vector*) #1

declare dso_local i32 @empty_child_dec(%struct.key_vector*) #1

declare dso_local i32 @tnode_full(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local %struct.TYPE_2__* @tn_info(%struct.key_vector*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
