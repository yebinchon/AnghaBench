; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_lprops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_lprops = type { i32 }
%struct.ubifs_lp_stats = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"(pid %d) start dumping LEB properties\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot read lprops for LEB %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"(pid %d) finish dumping LEB properties\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_lprops(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_lprops, align 4
  %6 = alloca %struct.ubifs_lp_stats, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = call i32 @ubifs_get_lp_stats(%struct.ubifs_info* %11, %struct.ubifs_lp_stats* %6)
  %13 = call i32 @ubifs_dump_lstats(%struct.ubifs_lp_stats* %6)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ubifs_read_one_lp(%struct.ubifs_info* %24, i32 %25, %struct.ubifs_lprops* %5)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ubifs_err(%struct.ubifs_info* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %36

33:                                               ; preds = %23
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %35 = call i32 @ubifs_dump_lprop(%struct.ubifs_info* %34, %struct.ubifs_lprops* %5)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ubifs_get_lp_stats(%struct.ubifs_info*, %struct.ubifs_lp_stats*) #1

declare dso_local i32 @ubifs_dump_lstats(%struct.ubifs_lp_stats*) #1

declare dso_local i32 @ubifs_read_one_lp(%struct.ubifs_info*, i32, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_dump_lprop(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
