; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, %struct.TYPE_6__*, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.fuse_req = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@FR_WAITING = common dso_local global i32 0, align 4
@FR_FORCE = common dso_local global i32 0, align 4
@FR_ISREPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuse_simple_request(%struct.fuse_conn* %0, %struct.fuse_args* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.fuse_args*, align 8
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca i64, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %5, align 8
  %8 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %9 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_NOFAIL, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.fuse_req* @fuse_request_alloc(i32 %18)
  store %struct.fuse_req* %19, %struct.fuse_req** %6, align 8
  %20 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %21 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %26 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %27 = call i32 @fuse_force_creds(%struct.fuse_conn* %25, %struct.fuse_req* %26)
  br label %28

28:                                               ; preds = %24, %12
  %29 = load i32, i32* @FR_WAITING, align 4
  %30 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %31 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %30, i32 0, i32 1
  %32 = call i32 @__set_bit(i32 %29, i32* %31)
  %33 = load i32, i32* @FR_FORCE, align 4
  %34 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 1
  %36 = call i32 @__set_bit(i32 %33, i32* %35)
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %39 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %43 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %42, i32 0)
  store %struct.fuse_req* %43, %struct.fuse_req** %6, align 8
  %44 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %45 = call i64 @IS_ERR(%struct.fuse_req* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %49 = call i64 @PTR_ERR(%struct.fuse_req* %48)
  store i64 %49, i64* %3, align 8
  br label %106

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %53 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %54 = call i32 @fuse_adjust_compat(%struct.fuse_conn* %52, %struct.fuse_args* %53)
  %55 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %56 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %57 = call i32 @fuse_args_to_req(%struct.fuse_req* %55, %struct.fuse_args* %56)
  %58 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %59 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @FR_ISREPLY, align 4
  %64 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 1
  %66 = call i32 @__set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %69 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %70 = call i32 @__fuse_request_send(%struct.fuse_conn* %68, %struct.fuse_req* %69)
  %71 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %72 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %67
  %79 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %80 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %85 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %91 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.fuse_args*, %struct.fuse_args** %5, align 8
  %94 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %83, %78, %67
  %102 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %103 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %104 = call i32 @fuse_put_request(%struct.fuse_conn* %102, %struct.fuse_req* %103)
  %105 = load i64, i64* %7, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %101, %47
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.fuse_req* @fuse_request_alloc(i32) #1

declare dso_local i32 @fuse_force_creds(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i64 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_adjust_compat(%struct.fuse_conn*, %struct.fuse_args*) #1

declare dso_local i32 @fuse_args_to_req(%struct.fuse_req*, %struct.fuse_args*) #1

declare dso_local i32 @__fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
