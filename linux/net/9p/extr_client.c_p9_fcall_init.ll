; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fcall_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fcall_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, i32* }
%struct.p9_fcall = type { i32, i32, i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_fcall*, i32)* @p9_fcall_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fcall_init(%struct.p9_client* %0, %struct.p9_fcall* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca %struct.p9_fcall*, align 8
  %7 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store %struct.p9_fcall* %1, %struct.p9_fcall** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %9 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @likely(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %16 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %21 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call i32 @kmem_cache_alloc(i32* %22, i32 %23)
  %25 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %26 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %28 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %31 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  br label %40

32:                                               ; preds = %13, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i32 @kmalloc(i32 %33, i32 %34)
  %36 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %37 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %39 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %19
  %41 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %42 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %51 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @kmem_cache_alloc(i32*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
