; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_halve.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_halve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.key_vector = type { i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"In halve\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.trie*, %struct.key_vector*)* @halve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @halve(%struct.trie* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.key_vector*, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.key_vector*, align 8
  %9 = alloca %struct.key_vector*, align 8
  %10 = alloca %struct.key_vector*, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.key_vector* %1, %struct.key_vector** %5, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %13 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %16 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %20 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call %struct.key_vector* @tnode_new(i32 %14, i64 %18, i32 %22)
  store %struct.key_vector* %23, %struct.key_vector** %6, align 8
  %24 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %25 = icmp ne %struct.key_vector* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %98

27:                                               ; preds = %2
  %28 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %29 = call i32 @tnode_free_init(%struct.key_vector* %28)
  %30 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %31 = call i64 @child_length(%struct.key_vector* %30)
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %72, %58, %27
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %32
  %36 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %7, align 8
  %39 = call %struct.key_vector* @get_child(%struct.key_vector* %36, i64 %38)
  store %struct.key_vector* %39, %struct.key_vector** %8, align 8
  %40 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %7, align 8
  %43 = call %struct.key_vector* @get_child(%struct.key_vector* %40, i64 %42)
  store %struct.key_vector* %43, %struct.key_vector** %9, align 8
  %44 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %45 = icmp ne %struct.key_vector* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %48 = icmp ne %struct.key_vector* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = udiv i64 %51, 2
  %53 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %54 = icmp ne %struct.key_vector* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %58

56:                                               ; preds = %49
  %57 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi %struct.key_vector* [ %53, %55 ], [ %57, %56 ]
  %60 = call i32 @put_child(%struct.key_vector* %50, i64 %52, %struct.key_vector* %59)
  br label %32

61:                                               ; preds = %46
  %62 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %63 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %66 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.key_vector* @tnode_new(i32 %64, i64 %67, i32 1)
  store %struct.key_vector* %68, %struct.key_vector** %10, align 8
  %69 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %70 = icmp ne %struct.key_vector* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %95

72:                                               ; preds = %61
  %73 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %74 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %75 = call i32 @tnode_free_append(%struct.key_vector* %73, %struct.key_vector* %74)
  %76 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %77 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %78 = call i32 @put_child(%struct.key_vector* %76, i64 1, %struct.key_vector* %77)
  %79 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %80 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %81 = call i32 @put_child(%struct.key_vector* %79, i64 0, %struct.key_vector* %80)
  %82 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %83 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %84 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %82, %struct.key_vector* %83)
  %85 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = udiv i64 %86, 2
  %88 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %89 = call i32 @put_child(%struct.key_vector* %85, i64 %87, %struct.key_vector* %88)
  br label %32

90:                                               ; preds = %32
  %91 = load %struct.trie*, %struct.trie** %4, align 8
  %92 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %93 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %94 = call %struct.key_vector* @replace(%struct.trie* %91, %struct.key_vector* %92, %struct.key_vector* %93)
  store %struct.key_vector* %94, %struct.key_vector** %3, align 8
  br label %99

95:                                               ; preds = %71
  %96 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %97 = call i32 @tnode_free(%struct.key_vector* %96)
  br label %98

98:                                               ; preds = %95, %26
  store %struct.key_vector* null, %struct.key_vector** %3, align 8
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  ret %struct.key_vector* %100
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.key_vector* @tnode_new(i32, i64, i32) #1

declare dso_local i32 @tnode_free_init(%struct.key_vector*) #1

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local i32 @put_child(%struct.key_vector*, i64, %struct.key_vector*) #1

declare dso_local i32 @tnode_free_append(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @NODE_INIT_PARENT(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local %struct.key_vector* @replace(%struct.trie*, %struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @tnode_free(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
