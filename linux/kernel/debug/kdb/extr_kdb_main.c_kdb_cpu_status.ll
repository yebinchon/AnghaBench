; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_cpu_status.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_cpu_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Currently on cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Available cpus: \00", align 1
@NR_CPUS = common dso_local global i32 0, align 4
@kgdb_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kdb_cpu_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdb_cpu_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 1, i32* %3, align 4
  store i8 63, i8* %5, align 1
  %6 = call i32 (...) @raw_smp_processor_id()
  %7 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %75, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @NR_CPUS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @cpu_online(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8 70, i8* %4, align 1
  br label %36

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_info, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i8 68, i8* %4, align 1
  br label %35

27:                                               ; preds = %18
  store i8 32, i8* %4, align 1
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @KDB_TSK(i32 %28)
  %30 = call signext i8 @kdb_task_state_char(i32 %29)
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 73
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8 73, i8* %4, align 1
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* %5, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 63
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  store i32 0, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %1, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %1, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i8, i8* %5, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 32
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %5, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i8, i8* %4, align 1
  store i8 %72, i8* %5, align 1
  %73 = load i32, i32* %1, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %36
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %9

78:                                               ; preds = %9
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 70
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %2, align 4
  %89 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %1, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %1, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i8, i8* %5, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 32
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8, i8* %5, align 1
  %104 = sext i8 %103 to i32
  %105 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %78
  %108 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local signext i8 @kdb_task_state_char(i32) #1

declare dso_local i32 @KDB_TSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
