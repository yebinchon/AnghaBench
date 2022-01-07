; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_req_prot_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_req_prot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32, i32, %struct.request_sock_ops* }
%struct.request_sock_ops = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"request_sock_%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Can't create request sock SLAB cache!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto*)* @req_prot_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_prot_init(%struct.proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proto*, align 8
  %4 = alloca %struct.request_sock_ops*, align 8
  store %struct.proto* %0, %struct.proto** %3, align 8
  %5 = load %struct.proto*, %struct.proto** %3, align 8
  %6 = getelementptr inbounds %struct.proto, %struct.proto* %5, i32 0, i32 2
  %7 = load %struct.request_sock_ops*, %struct.request_sock_ops** %6, align 8
  store %struct.request_sock_ops* %7, %struct.request_sock_ops** %4, align 8
  %8 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %9 = icmp ne %struct.request_sock_ops* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load %struct.proto*, %struct.proto** %3, align 8
  %14 = getelementptr inbounds %struct.proto, %struct.proto* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kasprintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %18 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %20 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %11
  %27 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %28 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %31 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SLAB_ACCOUNT, align 4
  %34 = load %struct.proto*, %struct.proto** %3, align 8
  %35 = getelementptr inbounds %struct.proto, %struct.proto* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %33, %36
  %38 = call i32 @kmem_cache_create(i32 %29, i32 %32, i32 0, i32 %37, i32* null)
  %39 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %40 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.request_sock_ops*, %struct.request_sock_ops** %4, align 8
  %42 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %26
  %46 = load %struct.proto*, %struct.proto** %3, align 8
  %47 = getelementptr inbounds %struct.proto, %struct.proto* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %45, %23, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
