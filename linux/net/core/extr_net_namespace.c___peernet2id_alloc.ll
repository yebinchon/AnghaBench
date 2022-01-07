; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c___peernet2id_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c___peernet2id_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@net_eq_idr = common dso_local global i32 0, align 4
@NET_ID_ZERO = common dso_local global i32 0, align 4
@NETNSA_NSID_NOT_ASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net*, i32*)* @__peernet2id_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__peernet2id_alloc(%struct.net* %0, %struct.net* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0
  %12 = load i32, i32* @net_eq_idr, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = call i32 @idr_for_each(i32* %11, i32 %12, %struct.net* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NET_ID_ZERO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = load %struct.net*, %struct.net** %6, align 8
  %33 = call i32 @alloc_netid(%struct.net* %31, %struct.net* %32, i32 -1)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @NETNSA_NSID_NOT_ASSIGNED, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @NETNSA_NSID_NOT_ASSIGNED, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %25, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @idr_for_each(i32*, i32, %struct.net*) #1

declare dso_local i32 @alloc_netid(%struct.net*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
