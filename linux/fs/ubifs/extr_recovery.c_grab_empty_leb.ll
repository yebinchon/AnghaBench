; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_grab_empty_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_grab_empty_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not find an empty LEB\00", align 1
@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"found empty LEB %d, run commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @grab_empty_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_empty_leb(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = call i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = call i32 @ubifs_err(%struct.ubifs_info* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = call i32 @ubifs_dump_lprops(%struct.ubifs_info* %13)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 1
  %18 = call i32 @ubifs_dump_budg(%struct.ubifs_info* %15, i32* %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LPROPS_NC, align 4
  %24 = load i32, i32* @LPROPS_NC, align 4
  %25 = load i32, i32* @LPROPS_INDEX, align 4
  %26 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %21, i32 %22, i32 %23, i32 %24, i32 0, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = call i32 @ubifs_run_commit(%struct.ubifs_info* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %31, %29, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_dump_budg(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32) #1

declare dso_local i32 @ubifs_run_commit(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
