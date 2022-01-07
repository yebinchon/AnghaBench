; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_get_bucket_item_weight.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_get_bucket_item_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket = type { i64, i32 }
%struct.crush_bucket_uniform = type { i32 }
%struct.crush_bucket_list = type { i32* }
%struct.crush_bucket_tree = type { i32* }
%struct.crush_bucket_straw = type { i32* }
%struct.crush_bucket_straw2 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crush_get_bucket_item_weight(%struct.crush_bucket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crush_bucket*, align 8
  %5 = alloca i32, align 4
  store %struct.crush_bucket* %0, %struct.crush_bucket** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %9 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %15 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %58 [
    i32 128, label %17
    i32 132, label %22
    i32 129, label %31
    i32 131, label %40
    i32 130, label %49
  ]

17:                                               ; preds = %13
  %18 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %19 = bitcast %struct.crush_bucket* %18 to %struct.crush_bucket_uniform*
  %20 = getelementptr inbounds %struct.crush_bucket_uniform, %struct.crush_bucket_uniform* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %13
  %23 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %24 = bitcast %struct.crush_bucket* %23 to %struct.crush_bucket_list*
  %25 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %13
  %32 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %33 = bitcast %struct.crush_bucket* %32 to %struct.crush_bucket_tree*
  %34 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @crush_calc_tree_node(i32 %36)
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %59

40:                                               ; preds = %13
  %41 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %42 = bitcast %struct.crush_bucket* %41 to %struct.crush_bucket_straw*
  %43 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %13
  %50 = load %struct.crush_bucket*, %struct.crush_bucket** %4, align 8
  %51 = bitcast %struct.crush_bucket* %50 to %struct.crush_bucket_straw2*
  %52 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %49, %40, %31, %22, %17, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @crush_calc_tree_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
