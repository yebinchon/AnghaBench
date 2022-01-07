; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_journal_task_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_journal_task_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"<none>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_sb_info*, i8*)* @journal_task_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_task_show(%struct.ext4_sb_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %7 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @task_pid_vnr(i32 %21)
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @task_pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
