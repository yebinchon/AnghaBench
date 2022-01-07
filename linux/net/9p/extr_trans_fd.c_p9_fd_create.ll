; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.p9_fd_opts = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Insufficient options for proto=fd\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i8*)* @p9_fd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_create(%struct.p9_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fd_opts, align 4
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @parse_opts(i8* %10, %struct.p9_fd_opts* %9)
  %12 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %15 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %21 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %3
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOPROTOOPT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %27
  %36 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %37 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @p9_fd_open(%struct.p9_client* %36, i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %48 = call i32 @p9_conn_create(%struct.p9_client* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %44, %31
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @parse_opts(i8*, %struct.p9_fd_opts*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @p9_fd_open(%struct.p9_client*, i32, i32) #1

declare dso_local i32 @p9_conn_create(%struct.p9_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
