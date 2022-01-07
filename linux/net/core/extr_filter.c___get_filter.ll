; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___get_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___get_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32 }
%struct.sock_fprog = type { i32, i32 }
%struct.sock = type { i32 }

@SOCK_FILTER_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (%struct.sock_fprog*, %struct.sock*)* @__get_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @__get_filter(%struct.sock_fprog* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.sock_fprog*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i32, align 4
  store %struct.sock_fprog* %0, %struct.sock_fprog** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %9 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %10 = call i32 @bpf_classic_proglen(%struct.sock_fprog* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = load i32, i32* @SOCK_FILTER_LOCKED, align 4
  %13 = call i64 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.bpf_prog* @ERR_PTR(i32 %17)
  store %struct.bpf_prog* %18, %struct.bpf_prog** %3, align 8
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %21 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %24 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bpf_check_basics_ok(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.bpf_prog* @ERR_PTR(i32 %30)
  store %struct.bpf_prog* %31, %struct.bpf_prog** %3, align 8
  br label %80

32:                                               ; preds = %19
  %33 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %34 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bpf_prog_size(i32 %35)
  %37 = call %struct.bpf_prog* @bpf_prog_alloc(i32 %36, i32 0)
  store %struct.bpf_prog* %37, %struct.bpf_prog** %7, align 8
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %39 = icmp ne %struct.bpf_prog* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.bpf_prog* @ERR_PTR(i32 %42)
  store %struct.bpf_prog* %43, %struct.bpf_prog** %3, align 8
  br label %80

44:                                               ; preds = %32
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %46 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %49 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @copy_from_user(i32 %47, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %56 = call i32 @__bpf_prog_free(%struct.bpf_prog* %55)
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.bpf_prog* @ERR_PTR(i32 %58)
  store %struct.bpf_prog* %59, %struct.bpf_prog** %3, align 8
  br label %80

60:                                               ; preds = %44
  %61 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %62 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %65 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %67 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %68 = call i32 @bpf_prog_store_orig_filter(%struct.bpf_prog* %66, %struct.sock_fprog* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %73 = call i32 @__bpf_prog_free(%struct.bpf_prog* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.bpf_prog* @ERR_PTR(i32 %75)
  store %struct.bpf_prog* %76, %struct.bpf_prog** %3, align 8
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %79 = call %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog* %78, i32* null)
  store %struct.bpf_prog* %79, %struct.bpf_prog** %3, align 8
  br label %80

80:                                               ; preds = %77, %71, %54, %40, %28, %15
  %81 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %81
}

declare dso_local i32 @bpf_classic_proglen(%struct.sock_fprog*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local i32 @bpf_check_basics_ok(i32, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_alloc(i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @__bpf_prog_free(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_store_orig_filter(%struct.bpf_prog*, %struct.sock_fprog*) #1

declare dso_local %struct.bpf_prog* @bpf_prepare_filter(%struct.bpf_prog*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
