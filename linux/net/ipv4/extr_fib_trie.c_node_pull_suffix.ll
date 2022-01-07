; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_pull_suffix.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_pull_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, i8)* @node_pull_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_pull_suffix(%struct.key_vector* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.key_vector* %0, %struct.key_vector** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %7 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %5, align 1
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %13 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i1 [ false, %9 ], [ %22, %17 ]
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %27 = call zeroext i8 @update_suffix(%struct.key_vector* %26)
  store i8 %27, i8* %4, align 1
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %36 = call %struct.key_vector* @node_parent(%struct.key_vector* %35)
  store %struct.key_vector* %36, %struct.key_vector** %3, align 8
  %37 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %38 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %5, align 1
  br label %9

40:                                               ; preds = %33, %23
  ret void
}

declare dso_local zeroext i8 @update_suffix(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @node_parent(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
