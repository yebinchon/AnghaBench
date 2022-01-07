; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_check_ltab.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_check_ltab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i32 }
%struct.ubifs_pnode = type { i32 }
%struct.ubifs_cnode = type { i32 }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed at LEB %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_ltab(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info* %24, i32 %25)
  store %struct.ubifs_pnode* %26, %struct.ubifs_pnode** %8, align 8
  %27 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %28 = call i64 @IS_ERR(%struct.ubifs_pnode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.ubifs_pnode* %31)
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %23
  %34 = call i32 (...) @cond_resched()
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ubifs_cnode*
  %44 = call i32 @dbg_check_lpt_nodes(%struct.ubifs_info* %39, %struct.ubifs_cnode* %43, i32 0, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %76

49:                                               ; preds = %38
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %71, %49
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @dbg_check_ltab_lnum(%struct.ubifs_info* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ubifs_err(%struct.ubifs_info* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %76

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %53

74:                                               ; preds = %53
  %75 = call i32 @dbg_lp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %65, %47, %30, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dbg_check_lpt_nodes(%struct.ubifs_info*, %struct.ubifs_cnode*, i32, i32) #1

declare dso_local i32 @dbg_check_ltab_lnum(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @dbg_lp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
