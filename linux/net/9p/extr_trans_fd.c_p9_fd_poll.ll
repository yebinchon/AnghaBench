; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { i64, i64 }
%struct.poll_table_struct = type { i32 }

@Connected = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.poll_table_struct*, i32*)* @p9_fd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_poll(%struct.p9_client* %0, %struct.poll_table_struct* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %9, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %11 = icmp ne %struct.p9_client* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %14 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @Connected, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 1
  %21 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %20, align 8
  store %struct.p9_trans_fd* %21, %struct.p9_trans_fd** %9, align 8
  br label %22

22:                                               ; preds = %18, %12, %3
  %23 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %24 = icmp ne %struct.p9_trans_fd* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @EREMOTEIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @EPOLLERR, align 4
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %22
  %35 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %36 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %39 = call i32 @vfs_poll(i64 %37, %struct.poll_table_struct* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %41 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %44 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @EPOLLOUT, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %53 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %56 = call i32 @vfs_poll(i64 %54, %struct.poll_table_struct* %55)
  %57 = load i32, i32* @EPOLLIN, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = or i32 %51, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %47, %34
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @vfs_poll(i64, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
