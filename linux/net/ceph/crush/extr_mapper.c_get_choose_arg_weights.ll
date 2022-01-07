; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_get_choose_arg_weights.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_get_choose_arg_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw2 = type { i32* }
%struct.crush_choose_arg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.crush_bucket_straw2*, %struct.crush_choose_arg*, i32)* @get_choose_arg_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_choose_arg_weights(%struct.crush_bucket_straw2* %0, %struct.crush_choose_arg* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crush_bucket_straw2*, align 8
  %6 = alloca %struct.crush_choose_arg*, align 8
  %7 = alloca i32, align 4
  store %struct.crush_bucket_straw2* %0, %struct.crush_bucket_straw2** %5, align 8
  store %struct.crush_choose_arg* %1, %struct.crush_choose_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %6, align 8
  %9 = icmp ne %struct.crush_choose_arg* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %6, align 8
  %12 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %5, align 8
  %17 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  br label %39

19:                                               ; preds = %10
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %6, align 8
  %22 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %6, align 8
  %27 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %6, align 8
  %32 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %30, %15
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
