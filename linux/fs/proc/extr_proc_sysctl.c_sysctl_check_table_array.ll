; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_check_table_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_check_table_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64, i32 }

@proc_douintvec = common dso_local global i64 0, align 8
@proc_douintvec_minmax = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"array not allowed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ctl_table*)* @sysctl_check_table_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_check_table_array(i8* %0, %struct.ctl_table* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %7 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @proc_douintvec, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @proc_douintvec_minmax, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11, %2
  %18 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %26 = call i32 @sysctl_err(i8* %24, %struct.ctl_table* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @sysctl_err(i8*, %struct.ctl_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
