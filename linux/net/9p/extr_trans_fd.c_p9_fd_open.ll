; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@Connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i32, i32)* @p9_fd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_open(%struct.p9_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.p9_trans_fd* @kzalloc(i32 16, i32 %9)
  store %struct.p9_trans_fd* %10, %struct.p9_trans_fd** %8, align 8
  %11 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %12 = icmp ne %struct.p9_trans_fd* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @fget(i32 %17)
  %19 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %20 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @fget(i32 %21)
  %23 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %24 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %26 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %31 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %29, %16
  %35 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %36 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %41 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fput(i8* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %46 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %51 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fput(i8* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %56 = call i32 @kfree(%struct.p9_trans_fd* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %29
  %60 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %61 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %62 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %61, i32 0, i32 1
  store %struct.p9_trans_fd* %60, %struct.p9_trans_fd** %62, align 8
  %63 = load i32, i32* @Connected, align 4
  %64 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %65 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %54, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.p9_trans_fd* @kzalloc(i32, i32) #1

declare dso_local i8* @fget(i32) #1

declare dso_local i32 @fput(i8*) #1

declare dso_local i32 @kfree(%struct.p9_trans_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
