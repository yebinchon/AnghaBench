; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_should_inflate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_should_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }

@inflate_threshold_root = common dso_local global i64 0, align 8
@inflate_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_vector*, %struct.key_vector*)* @should_inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_inflate(%struct.key_vector* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.key_vector*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.key_vector* %0, %struct.key_vector** %3, align 8
  store %struct.key_vector* %1, %struct.key_vector** %4, align 8
  %7 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %8 = call i64 @child_length(%struct.key_vector* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  %11 = call i64 @IS_TRIE(%struct.key_vector* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @inflate_threshold_root, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @inflate_threshold, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %22 = call %struct.TYPE_2__* @tn_info(%struct.key_vector* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %28 = call %struct.TYPE_2__* @tn_info(%struct.key_vector* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %17
  %36 = load %struct.key_vector*, %struct.key_vector** %4, align 8
  %37 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = mul i64 50, %41
  %43 = load i64, i64* %6, align 8
  %44 = icmp uge i64 %42, %43
  br label %45

45:                                               ; preds = %40, %35, %17
  %46 = phi i1 [ false, %35 ], [ false, %17 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local i64 @IS_TRIE(%struct.key_vector*) #1

declare dso_local %struct.TYPE_2__* @tn_info(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
