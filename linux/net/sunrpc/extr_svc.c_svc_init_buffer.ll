; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_init_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RPCSVC_MAXPAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i32)* @svc_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_init_buffer(%struct.svc_rqst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = call i64 @svc_is_backchannel(%struct.svc_rqst* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = udiv i32 %16, %17
  %19 = add i32 %18, 1
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %22 = icmp ugt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %15
  br label %31

31:                                               ; preds = %41, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.page* @alloc_pages_node(i32 %35, i32 %36, i32 0)
  store %struct.page* %37, %struct.page** %10, align 8
  %38 = load %struct.page*, %struct.page** %10, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 0
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %48
  store %struct.page* %42, %struct.page** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %31

52:                                               ; preds = %40, %31
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @svc_is_backchannel(%struct.svc_rqst*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
