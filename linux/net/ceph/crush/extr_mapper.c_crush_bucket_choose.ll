; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_bucket_choose.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_bucket_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket = type { i64, i32, i32*, i32 }
%struct.crush_work_bucket = type { i32 }
%struct.crush_choose_arg = type { i32 }
%struct.crush_bucket_uniform = type { i32 }
%struct.crush_bucket_list = type { i32 }
%struct.crush_bucket_tree = type { i32 }
%struct.crush_bucket_straw = type { i32 }
%struct.crush_bucket_straw2 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c" crush_bucket_choose %d x=%d r=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown bucket %d alg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_bucket*, %struct.crush_work_bucket*, i32, i32, %struct.crush_choose_arg*, i32)* @crush_bucket_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_bucket_choose(%struct.crush_bucket* %0, %struct.crush_work_bucket* %1, i32 %2, i32 %3, %struct.crush_choose_arg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crush_bucket*, align 8
  %9 = alloca %struct.crush_work_bucket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.crush_choose_arg*, align 8
  %13 = alloca i32, align 4
  store %struct.crush_bucket* %0, %struct.crush_bucket** %8, align 8
  store %struct.crush_work_bucket* %1, %struct.crush_work_bucket** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.crush_choose_arg* %4, %struct.crush_choose_arg** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %15 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %21 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %27 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %62 [
    i32 128, label %29
    i32 132, label %36
    i32 129, label %42
    i32 131, label %48
    i32 130, label %54
  ]

29:                                               ; preds = %6
  %30 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %31 = bitcast %struct.crush_bucket* %30 to %struct.crush_bucket_uniform*
  %32 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @bucket_uniform_choose(%struct.crush_bucket_uniform* %31, %struct.crush_work_bucket* %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %75

36:                                               ; preds = %6
  %37 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %38 = bitcast %struct.crush_bucket* %37 to %struct.crush_bucket_list*
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @bucket_list_choose(%struct.crush_bucket_list* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %75

42:                                               ; preds = %6
  %43 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %44 = bitcast %struct.crush_bucket* %43 to %struct.crush_bucket_tree*
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @bucket_tree_choose(%struct.crush_bucket_tree* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %75

48:                                               ; preds = %6
  %49 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %50 = bitcast %struct.crush_bucket* %49 to %struct.crush_bucket_straw*
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @bucket_straw_choose(%struct.crush_bucket_straw* %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %75

54:                                               ; preds = %6
  %55 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %56 = bitcast %struct.crush_bucket* %55 to %struct.crush_bucket_straw2*
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @bucket_straw2_choose(%struct.crush_bucket_straw2* %56, i32 %57, i32 %58, %struct.crush_choose_arg* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %75

62:                                               ; preds = %6
  %63 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %64 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %67 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.crush_bucket*, %struct.crush_bucket** %8, align 8
  %71 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %62, %54, %48, %42, %36, %29
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bucket_uniform_choose(%struct.crush_bucket_uniform*, %struct.crush_work_bucket*, i32, i32) #1

declare dso_local i32 @bucket_list_choose(%struct.crush_bucket_list*, i32, i32) #1

declare dso_local i32 @bucket_tree_choose(%struct.crush_bucket_tree*, i32, i32) #1

declare dso_local i32 @bucket_straw_choose(%struct.crush_bucket_straw*, i32, i32) #1

declare dso_local i32 @bucket_straw2_choose(%struct.crush_bucket_straw2*, i32, i32, %struct.crush_choose_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
