; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_print_bpf_prog_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_print_bpf_prog_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Loaded BPF prog have %d bpf program(s)\0A\00", align 1
@prog_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" - prog_fd[%d] = fd(%d)\0A\00", align 1
@prog_fd = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Loaded BPF prog have %d map(s)\0A\00", align 1
@map_data_count = common dso_local global i32 0, align 4
@map_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c" - map_data[%d] = fd(%d) name:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Searching for (max:%d) event file descriptor(s)\0A\00", align 1
@event_fd = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c" - event_fd[%d] = fd(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_bpf_prog_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bpf_prog_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @prog_cnt, align 4
  %5 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @prog_cnt, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = load i32*, i32** @prog_fd, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* @map_data_count, align 4
  %23 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %45, %21
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @map_data_count, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %2, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @map_data, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* @prog_cnt, align 4
  %50 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %71, %48
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @prog_cnt, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32*, i32** @event_fd, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* %1, align 4
  %64 = load i32*, i32** @event_fd, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %51

74:                                               ; preds = %51
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
