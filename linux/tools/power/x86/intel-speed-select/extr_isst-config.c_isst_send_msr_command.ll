; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_send_msr_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_send_msr_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_msr_cmds = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"/dev/isst_interface\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s open failed\00", align 1
@ISST_IF_MSR_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ISST_IF_MSR_COMMAD\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error: msr_cmd cpu:%d msr:%x read_write:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"msr_cmd response: cpu:%d msr:%x rd_write:%x resp:%llx %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_send_msr_command(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.isst_if_msr_cmds, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %20
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %20
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ISST_IF_MSR_COMMAND, align 4
  %49 = call i32 @ioctl(i32 %47, i32 %48, %struct.isst_if_msr_cmds* %9)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @outf, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %80

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.isst_if_msr_cmds, %struct.isst_if_msr_cmds* %9, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @debug_printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i64 %73, i64 %78)
  br label %80

80:                                               ; preds = %68, %51
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @close(i32 %81)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.isst_if_msr_cmds*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
