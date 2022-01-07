; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_alloc_perfect_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_alloc_perfect_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcindex_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCA_TCINDEX_ACT = common dso_local global i32 0, align 4
@TCA_TCINDEX_POLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcindex_data*)* @tcindex_alloc_perfect_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_alloc_perfect_hash(%struct.net* %0, %struct.tcindex_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tcindex_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tcindex_data* %1, %struct.tcindex_data** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %9 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_2__* @kcalloc(i32 %10, i32 4, i32 %11)
  %13 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %14 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %13, i32 0, i32 1
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %16 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %26 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %31 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.net*, %struct.net** %4, align 8
  %38 = load i32, i32* @TCA_TCINDEX_ACT, align 4
  %39 = load i32, i32* @TCA_TCINDEX_POLICE, align 4
  %40 = call i32 @tcf_exts_init(i32* %36, %struct.net* %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %49

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %23

48:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %43
  %50 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %51 = call i32 @tcindex_free_perfect_hash(%struct.tcindex_data* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %48, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tcf_exts_init(i32*, %struct.net*, i32, i32) #1

declare dso_local i32 @tcindex_free_perfect_hash(%struct.tcindex_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
