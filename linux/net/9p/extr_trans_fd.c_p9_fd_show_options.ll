; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.p9_client = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@p9_tcp_trans = common dso_local global i32 0, align 4
@P9_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c",port=%u\00", align 1
@p9_fd_trans = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",rfd=%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c",wfd=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.p9_client*)* @p9_fd_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_show_options(%struct.seq_file* %0, %struct.p9_client* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.p9_client*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.p9_client* %1, %struct.p9_client** %4, align 8
  %5 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %6 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, @p9_tcp_trans
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %11 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @P9_PORT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %17, %9
  br label %63

26:                                               ; preds = %2
  %27 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %28 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @p9_fd_trans
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %33 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %41 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %38, %31
  %47 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %48 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %56 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61, %26
  br label %63

63:                                               ; preds = %62, %25
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
