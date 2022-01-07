; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_background.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_simple_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, i64 }
%struct.fuse_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FR_BACKGROUND = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_simple_background(%struct.fuse_conn* %0, %struct.fuse_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.fuse_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %10 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %15 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.fuse_req* @fuse_request_alloc(i32 %21)
  store %struct.fuse_req* %22, %struct.fuse_req** %8, align 8
  %23 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %24 = icmp ne %struct.fuse_req* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %13
  %29 = load i32, i32* @FR_BACKGROUND, align 4
  %30 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %31 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %30, i32 0, i32 0
  %32 = call i32 @__set_bit(i32 %29, i32* %31)
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %35 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %39 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %38, i32 1)
  store %struct.fuse_req* %39, %struct.fuse_req** %8, align 8
  %40 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %41 = call i64 @IS_ERR(%struct.fuse_req* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %45 = call i32 @PTR_ERR(%struct.fuse_req* %44)
  store i32 %45, i32* %4, align 4
  br label %62

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %49 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %50 = call i32 @fuse_args_to_req(%struct.fuse_req* %48, %struct.fuse_args* %49)
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %52 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %53 = call i32 @fuse_request_queue_background(%struct.fuse_conn* %51, %struct.fuse_req* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %57 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %58 = call i32 @fuse_put_request(%struct.fuse_conn* %56, %struct.fuse_req* %57)
  %59 = load i32, i32* @ENOTCONN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %55, %43, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.fuse_req* @fuse_request_alloc(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_args_to_req(%struct.fuse_req*, %struct.fuse_args*) #1

declare dso_local i32 @fuse_request_queue_background(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
