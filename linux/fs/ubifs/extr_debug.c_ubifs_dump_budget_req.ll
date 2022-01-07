; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_budget_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_budget_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dbg_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Budgeting request: new_ino %d, dirtied_ino %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\09new_ino_d   %d, dirtied_ino_d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09new_page    %d, dirtied_page %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\09new_dent    %d, mod_dent     %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09idx_growth  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\09data_growth %d dd_growth     %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_budget_req(%struct.ubifs_budget_req* %0) #0 {
  %2 = alloca %struct.ubifs_budget_req*, align 8
  store %struct.ubifs_budget_req* %0, %struct.ubifs_budget_req** %2, align 8
  %3 = call i32 @spin_lock(i32* @dbg_lock)
  %4 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %5 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %8 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %12 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %15 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %22 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %26 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %33 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %37 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %2, align 8
  %40 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %41)
  %43 = call i32 @spin_unlock(i32* @dbg_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
