; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i32, i32, i32, i32 }
%struct.tnode = type { i32, i64, %struct.key_vector* }

@KEYLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AT %p s=%zu %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (i32, i32, i32)* @tnode_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @tnode_new(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.key_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_vector*, align 8
  %10 = alloca %struct.tnode*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @KEYLENGTH, align 4
  %19 = icmp ugt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.tnode* @tnode_alloc(i32 %24)
  store %struct.tnode* %25, %struct.tnode** %10, align 8
  %26 = load %struct.tnode*, %struct.tnode** %10, align 8
  %27 = icmp ne %struct.tnode* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store %struct.key_vector* null, %struct.key_vector** %4, align 8
  br label %77

29:                                               ; preds = %20
  %30 = load %struct.tnode*, %struct.tnode** %10, align 8
  %31 = call i32 @TNODE_SIZE(i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.tnode* %30, i32 %31, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @KEYLENGTH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.tnode*, %struct.tnode** %10, align 8
  %42 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %49

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = load %struct.tnode*, %struct.tnode** %10, align 8
  %48 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.tnode*, %struct.tnode** %10, align 8
  %51 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 2
  %52 = load %struct.key_vector*, %struct.key_vector** %51, align 8
  store %struct.key_vector* %52, %struct.key_vector** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @KEYLENGTH, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = lshr i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %59, %60
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ %61, %56 ], [ 0, %62 ]
  %65 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %66 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %69 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %72 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %75 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  store %struct.key_vector* %76, %struct.key_vector** %4, align 8
  br label %77

77:                                               ; preds = %63, %28
  %78 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  ret %struct.key_vector* %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.tnode* @tnode_alloc(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.tnode*, i32, i32) #1

declare dso_local i32 @TNODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
