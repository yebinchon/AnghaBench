; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_migrate_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_migrate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32 }
%struct.sock_filter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (%struct.bpf_prog*)* @bpf_migrate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @bpf_migrate_filter(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.sock_filter*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 @BUILD_BUG_ON(i32 0)
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.sock_filter* @kmemdup(i32 %16, i32 %20, i32 %23)
  store %struct.sock_filter* %24, %struct.sock_filter** %4, align 8
  %25 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %26 = icmp ne %struct.sock_filter* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %73

30:                                               ; preds = %1
  %31 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @bpf_convert_filter(%struct.sock_filter* %31, i32 %32, %struct.bpf_prog* null, i32* %7, i32* %9)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %70

37:                                               ; preds = %30
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %38, %struct.bpf_prog** %5, align 8
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @bpf_prog_size(i32 %40)
  %42 = call %struct.bpf_prog* @bpf_prog_realloc(%struct.bpf_prog* %39, i32 %41, i32 0)
  store %struct.bpf_prog* %42, %struct.bpf_prog** %3, align 8
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %44 = icmp ne %struct.bpf_prog* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %46, %struct.bpf_prog** %3, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %70

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %52 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %56 = call i32 @bpf_convert_filter(%struct.sock_filter* %53, i32 %54, %struct.bpf_prog* %55, i32* %7, i32* %9)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %70

60:                                               ; preds = %49
  %61 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %62 = call %struct.bpf_prog* @bpf_prog_select_runtime(%struct.bpf_prog* %61, i32* %6)
  store %struct.bpf_prog* %62, %struct.bpf_prog** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %68 = call i32 @kfree(%struct.sock_filter* %67)
  %69 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %69, %struct.bpf_prog** %2, align 8
  br label %78

70:                                               ; preds = %65, %59, %45, %36
  %71 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %72 = call i32 @kfree(%struct.sock_filter* %71)
  br label %73

73:                                               ; preds = %70, %27
  %74 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %75 = call i32 @__bpf_prog_release(%struct.bpf_prog* %74)
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.bpf_prog* @ERR_PTR(i32 %76)
  store %struct.bpf_prog* %77, %struct.bpf_prog** %2, align 8
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %79
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.sock_filter* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @bpf_convert_filter(%struct.sock_filter*, i32, %struct.bpf_prog*, i32*, i32*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_realloc(%struct.bpf_prog*, i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_select_runtime(%struct.bpf_prog*, i32*) #1

declare dso_local i32 @kfree(%struct.sock_filter*) #1

declare dso_local i32 @__bpf_prog_release(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
