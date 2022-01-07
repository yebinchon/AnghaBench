; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_nested_bucket_table_free.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_nested_bucket_table_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket_table = type { i32, i32, i32* }
%union.nested_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bucket_table*)* @nested_bucket_table_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_bucket_table_free(%struct.bucket_table* %0) #0 {
  %2 = alloca %struct.bucket_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.nested_table*, align 8
  %6 = alloca i32, align 4
  store %struct.bucket_table* %0, %struct.bucket_table** %2, align 8
  %7 = load %struct.bucket_table*, %struct.bucket_table** %2, align 8
  %8 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bucket_table*, %struct.bucket_table** %2, align 8
  %11 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = lshr i32 %9, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.bucket_table*, %struct.bucket_table** %2, align 8
  %15 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.bucket_table*, %struct.bucket_table** %2, align 8
  %19 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rcu_dereference_raw(i32 %22)
  %24 = inttoptr i64 %23 to %union.nested_table*
  store %union.nested_table* %24, %union.nested_table** %5, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %36, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %union.nested_table*, %union.nested_table** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %union.nested_table, %union.nested_table* %30, i64 %32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @nested_table_free(%union.nested_table* %33, i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load %union.nested_table*, %union.nested_table** %5, align 8
  %41 = call i32 @kfree(%union.nested_table* %40)
  ret void
}

declare dso_local i64 @rcu_dereference_raw(i32) #1

declare dso_local i32 @nested_table_free(%union.nested_table*, i32) #1

declare dso_local i32 @kfree(%union.nested_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
