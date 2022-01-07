; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_create_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_create_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, %struct.net*, i32* }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_detail* @cache_create_net(%struct.cache_detail* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %8 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cache_detail* @kmemdup(%struct.cache_detail* %8, i32 24, i32 %9)
  store %struct.cache_detail* %10, %struct.cache_detail** %6, align 8
  %11 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %12 = icmp eq %struct.cache_detail* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.cache_detail* @ERR_PTR(i32 %15)
  store %struct.cache_detail* %16, %struct.cache_detail** %3, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %19 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %24 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %26 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %31 = call i32 @kfree(%struct.cache_detail* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.cache_detail* @ERR_PTR(i32 %33)
  store %struct.cache_detail* %34, %struct.cache_detail** %3, align 8
  br label %58

35:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %39 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %44 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @INIT_HLIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.net*, %struct.net** %5, align 8
  %55 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %56 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %55, i32 0, i32 1
  store %struct.net* %54, %struct.net** %56, align 8
  %57 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  store %struct.cache_detail* %57, %struct.cache_detail** %3, align 8
  br label %58

58:                                               ; preds = %53, %29, %13
  %59 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  ret %struct.cache_detail* %59
}

declare dso_local %struct.cache_detail* @kmemdup(%struct.cache_detail*, i32, i32) #1

declare dso_local %struct.cache_detail* @ERR_PTR(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cache_detail*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
