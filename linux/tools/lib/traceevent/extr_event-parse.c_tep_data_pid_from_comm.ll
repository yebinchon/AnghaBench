; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_data_pid_from_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_data_pid_from_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.tep_cmdline* }
%struct.tep_cmdline = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_cmdline* @tep_data_pid_from_comm(%struct.tep_handle* %0, i8* %1, %struct.tep_cmdline* %2) #0 {
  %4 = alloca %struct.tep_cmdline*, align 8
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tep_cmdline*, align 8
  %8 = alloca %struct.tep_cmdline*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tep_cmdline* %2, %struct.tep_cmdline** %7, align 8
  %9 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %10 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %9, i32 0, i32 1
  %11 = load %struct.tep_cmdline*, %struct.tep_cmdline** %10, align 8
  %12 = icmp ne %struct.tep_cmdline* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %17 = call %struct.tep_cmdline* @pid_from_cmdlist(%struct.tep_handle* %14, i8* %15, %struct.tep_cmdline* %16)
  store %struct.tep_cmdline* %17, %struct.tep_cmdline** %4, align 8
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %20 = icmp ne %struct.tep_cmdline* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %23 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %24 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %23, i32 0, i32 1
  %25 = load %struct.tep_cmdline*, %struct.tep_cmdline** %24, align 8
  %26 = icmp ult %struct.tep_cmdline* %22, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %29 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %30 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %29, i32 0, i32 1
  %31 = load %struct.tep_cmdline*, %struct.tep_cmdline** %30, align 8
  %32 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %33 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %31, i64 %35
  %37 = icmp uge %struct.tep_cmdline* %28, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27, %21
  store %struct.tep_cmdline* null, %struct.tep_cmdline** %7, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %41 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %40, i32 1
  store %struct.tep_cmdline* %41, %struct.tep_cmdline** %7, align 8
  store %struct.tep_cmdline* %40, %struct.tep_cmdline** %8, align 8
  br label %42

42:                                               ; preds = %39, %38
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %45 = icmp ne %struct.tep_cmdline* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %48 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %47, i32 0, i32 1
  %49 = load %struct.tep_cmdline*, %struct.tep_cmdline** %48, align 8
  store %struct.tep_cmdline* %49, %struct.tep_cmdline** %8, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %71, %50
  %52 = load %struct.tep_cmdline*, %struct.tep_cmdline** %8, align 8
  %53 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %54 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %53, i32 0, i32 1
  %55 = load %struct.tep_cmdline*, %struct.tep_cmdline** %54, align 8
  %56 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %57 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %55, i64 %59
  %61 = icmp ult %struct.tep_cmdline* %52, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %51
  %63 = load %struct.tep_cmdline*, %struct.tep_cmdline** %8, align 8
  %64 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i32 %65, i8* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load %struct.tep_cmdline*, %struct.tep_cmdline** %8, align 8
  store %struct.tep_cmdline* %70, %struct.tep_cmdline** %4, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.tep_cmdline*, %struct.tep_cmdline** %8, align 8
  %73 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %72, i32 1
  store %struct.tep_cmdline* %73, %struct.tep_cmdline** %8, align 8
  br label %51

74:                                               ; preds = %51
  store %struct.tep_cmdline* null, %struct.tep_cmdline** %4, align 8
  br label %75

75:                                               ; preds = %74, %69, %13
  %76 = load %struct.tep_cmdline*, %struct.tep_cmdline** %4, align 8
  ret %struct.tep_cmdline* %76
}

declare dso_local %struct.tep_cmdline* @pid_from_cmdlist(%struct.tep_handle*, i8*, %struct.tep_cmdline*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
