; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_file_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_file_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.io_submit_state = type { i32, i32, %struct.file*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.io_submit_state*, i32)* @io_file_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @io_file_get(%struct.io_submit_state* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.io_submit_state*, align 8
  %5 = alloca i32, align 4
  store %struct.io_submit_state* %0, %struct.io_submit_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %7 = icmp ne %struct.io_submit_state* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.file* @fget(i32 %9)
  store %struct.file* %10, %struct.file** %3, align 8
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %13 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %12, i32 0, i32 2
  %14 = load %struct.file*, %struct.file** %13, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %18 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %24 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %28 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %32 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %31, i32 0, i32 2
  %33 = load %struct.file*, %struct.file** %32, align 8
  store %struct.file* %33, %struct.file** %3, align 8
  br label %68

34:                                               ; preds = %16
  %35 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %36 = call i32 @io_file_put(%struct.io_submit_state* %35)
  br label %37

37:                                               ; preds = %34, %11
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %40 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.file* @fget_many(i32 %38, i32 %41)
  %43 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %44 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %43, i32 0, i32 2
  store %struct.file* %42, %struct.file** %44, align 8
  %45 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %46 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %45, i32 0, i32 2
  %47 = load %struct.file*, %struct.file** %46, align 8
  %48 = icmp ne %struct.file* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  store %struct.file* null, %struct.file** %3, align 8
  br label %68

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %53 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %55 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %58 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %60 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %62 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.io_submit_state*, %struct.io_submit_state** %4, align 8
  %66 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %65, i32 0, i32 2
  %67 = load %struct.file*, %struct.file** %66, align 8
  store %struct.file* %67, %struct.file** %3, align 8
  br label %68

68:                                               ; preds = %50, %49, %22, %8
  %69 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %69
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @io_file_put(%struct.io_submit_state*) #1

declare dso_local %struct.file* @fget_many(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
