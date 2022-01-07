; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { i64, i64, i32 }

@Disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_client*)* @p9_fd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_fd_close(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_client*, align 8
  %3 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %2, align 8
  %4 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %5 = icmp ne %struct.p9_client* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %9 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %8, i32 0, i32 1
  %10 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  store %struct.p9_trans_fd* %10, %struct.p9_trans_fd** %3, align 8
  %11 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %12 = icmp ne %struct.p9_trans_fd* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %43

14:                                               ; preds = %7
  %15 = load i32, i32* @Disconnected, align 4
  %16 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %17 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %19 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %18, i32 0, i32 2
  %20 = call i32 @p9_conn_destroy(i32* %19)
  %21 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %22 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %27 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fput(i64 %28)
  br label %30

30:                                               ; preds = %25, %14
  %31 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %32 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %37 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @fput(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %3, align 8
  %42 = call i32 @kfree(%struct.p9_trans_fd* %41)
  br label %43

43:                                               ; preds = %40, %13, %6
  ret void
}

declare dso_local i32 @p9_conn_destroy(i32*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @kfree(%struct.p9_trans_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
