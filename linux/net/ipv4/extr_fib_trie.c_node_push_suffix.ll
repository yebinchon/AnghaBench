; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_push_suffix.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_node_push_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_vector*, i8)* @node_push_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_push_suffix(%struct.key_vector* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca i8, align 1
  store %struct.key_vector* %0, %struct.key_vector** %3, align 8
  store i8 %1, i8* %4, align 1
  br label %5

5:                                                ; preds = %13, %2
  %6 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %7 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %16 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 1
  %17 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %18 = call %struct.key_vector* @node_parent(%struct.key_vector* %17)
  store %struct.key_vector* %18, %struct.key_vector** %3, align 8
  br label %5

19:                                               ; preds = %5
  ret void
}

declare dso_local %struct.key_vector* @node_parent(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
