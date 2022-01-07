; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rqst_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rqst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i8*, i8*, %struct.svc_pool*, %struct.svc_serv*, i32, i32 }
%struct.svc_serv = type { i32, i32 }
%struct.svc_pool = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RQ_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rqst* @svc_rqst_alloc(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rqst*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.svc_rqst* @kzalloc_node(i32 40, i32 %9, i32 %10)
  store %struct.svc_rqst* %11, %struct.svc_rqst** %8, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %13 = icmp ne %struct.svc_rqst* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  store %struct.svc_rqst* %15, %struct.svc_rqst** %4, align 8
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* @RQ_BUSY, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 5
  %20 = call i32 @__set_bit(i32 %17, i32* %19)
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 3
  store %struct.svc_serv* %24, %struct.svc_serv** %26, align 8
  %27 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 2
  store %struct.svc_pool* %27, %struct.svc_pool** %29, align 8
  %30 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %31 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @kmalloc_node(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %16
  br label %68

43:                                               ; preds = %16
  %44 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %45 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @kmalloc_node(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %53 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %68

57:                                               ; preds = %43
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %59 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %60 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @svc_init_buffer(%struct.svc_rqst* %58, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %68

66:                                               ; preds = %57
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  store %struct.svc_rqst* %67, %struct.svc_rqst** %4, align 8
  br label %71

68:                                               ; preds = %65, %56, %42
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %70 = call i32 @svc_rqst_free(%struct.svc_rqst* %69)
  store %struct.svc_rqst* null, %struct.svc_rqst** %4, align 8
  br label %71

71:                                               ; preds = %68, %66, %14
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  ret %struct.svc_rqst* %72
}

declare dso_local %struct.svc_rqst* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @svc_init_buffer(%struct.svc_rqst*, i32, i32) #1

declare dso_local i32 @svc_rqst_free(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
