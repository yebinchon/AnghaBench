; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.ubifs_debug_info* }
%struct.ubifs_debug_info = type { i64, i32, i32, %struct.ubifs_lp_stats }
%struct.ubifs_lp_stats = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"free space changed from %lld to %lld\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"saved lprops statistics dump\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"saved budgeting info dump\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"saved idx_gc_cnt %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"current lprops statistics dump\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"current budgeting info dump\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_space_info(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_debug_info*, align 8
  %5 = alloca %struct.ubifs_lp_stats, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 3
  %10 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %9, align 8
  store %struct.ubifs_debug_info* %10, %struct.ubifs_debug_info** %4, align 8
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = call i64 @ubifs_get_free_space_nolock(%struct.ubifs_info* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ubifs_err(%struct.ubifs_info* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  br label %40

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

40:                                               ; preds = %32
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_msg(%struct.ubifs_info* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %4, align 8
  %44 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %43, i32 0, i32 3
  %45 = call i32 @ubifs_dump_lstats(%struct.ubifs_lp_stats* %44)
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_msg(%struct.ubifs_info* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %49, i32 0, i32 2
  %51 = call i32 @ubifs_dump_budg(%struct.ubifs_info* %48, i32* %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_msg(%struct.ubifs_info* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_msg(%struct.ubifs_info* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = call i32 @ubifs_get_lp_stats(%struct.ubifs_info* %59, %struct.ubifs_lp_stats* %5)
  %61 = call i32 @ubifs_dump_lstats(%struct.ubifs_lp_stats* %5)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_msg(%struct.ubifs_info* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 1
  %67 = call i32 @ubifs_dump_budg(%struct.ubifs_info* %64, i32* %66)
  %68 = call i32 (...) @dump_stack()
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %40, %39
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_get_free_space_nolock(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @ubifs_dump_lstats(%struct.ubifs_lp_stats*) #1

declare dso_local i32 @ubifs_dump_budg(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_get_lp_stats(%struct.ubifs_info*, %struct.ubifs_lp_stats*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
